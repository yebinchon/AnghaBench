; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_defs_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_defs_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32 }

@SET = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@DF_REF_MUST_CLOBBER = common dso_local global i32 0, align 4
@COND_EXEC = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, i32, i32, i32)* @df_defs_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_defs_record(%struct.dataflow* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dataflow*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dataflow* %0, %struct.dataflow** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @CLOBBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16, %4
  %21 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @CLOBBER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @DF_REF_MUST_CLOBBER, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32 @df_def_record_1(%struct.dataflow* %21, i32 %22, i32 %23, i32 %24, i32 %32, i32 1)
  br label %68

34:                                               ; preds = %16
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @COND_EXEC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @COND_EXEC_CODE(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  call void @df_defs_record(%struct.dataflow* %39, i32 %41, i32 %42, i32 %43)
  br label %67

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @PARALLEL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @XVECLEN(i32 %49, i32 0)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %62, %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.dataflow*, %struct.dataflow** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @XVECEXP(i32 %57, i32 0, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  call void @df_defs_record(%struct.dataflow* %56, i32 %59, i32 %60, i32 %61)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  br label %52

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %38
  br label %68

68:                                               ; preds = %67, %31
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @df_def_record_1(%struct.dataflow*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @COND_EXEC_CODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
