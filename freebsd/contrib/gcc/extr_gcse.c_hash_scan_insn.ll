; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_hash_scan_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_hash_scan_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32 }

@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hash_table*, i32)* @hash_scan_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_scan_insn(i32 %0, %struct.hash_table* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.hash_table* %1, %struct.hash_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @PATTERN(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %99

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @SET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %24 = call i32 @hash_scan_set(i32 %21, i32 %22, %struct.hash_table* %23)
  br label %99

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @GET_CODE(i32 %26)
  %28 = load i64, i64* @PARALLEL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @XVECLEN(i32 %33, i32 0)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @XVECEXP(i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @SET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %48 = call i32 @hash_scan_set(i32 %45, i32 %46, %struct.hash_table* %47)
  br label %71

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @GET_CODE(i32 %50)
  %52 = load i64, i64* @CLOBBER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %58 = call i32 @hash_scan_clobber(i32 %55, i32 %56, %struct.hash_table* %57)
  br label %70

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @GET_CODE(i32 %60)
  %62 = load i64, i64* @CALL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %68 = call i32 @hash_scan_call(i32 %65, i32 %66, %struct.hash_table* %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %31

75:                                               ; preds = %31
  br label %98

76:                                               ; preds = %25
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @GET_CODE(i32 %77)
  %79 = load i64, i64* @CLOBBER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %85 = call i32 @hash_scan_clobber(i32 %82, i32 %83, %struct.hash_table* %84)
  br label %97

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @GET_CODE(i32 %87)
  %89 = load i64, i64* @CALL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %95 = call i32 @hash_scan_call(i32 %92, i32 %93, %struct.hash_table* %94)
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %14, %98, %20
  ret void
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @hash_scan_set(i32, i32, %struct.hash_table*) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @hash_scan_clobber(i32, i32, %struct.hash_table*) #1

declare dso_local i32 @hash_scan_call(i32, i32, %struct.hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
