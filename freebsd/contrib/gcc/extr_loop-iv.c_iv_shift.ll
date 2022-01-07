; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i32, i64, i8*, i8*, i8*, i8* }

@VOIDmode = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i64 0, align 8
@ASHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtx_iv*, i32)* @iv_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_shift(%struct.rtx_iv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtx_iv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtx_iv* %0, %struct.rtx_iv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %8 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_MODE(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @VOIDmode, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GET_MODE(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %66

21:                                               ; preds = %15, %2
  %22 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %23 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i32, i32* @ASHIFT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %31 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @simplify_gen_binary(i32 %28, i32 %29, i8* %32, i32 %33)
  %35 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %36 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @ASHIFT, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %40 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @simplify_gen_binary(i32 %37, i32 %38, i8* %41, i32 %42)
  %44 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %45 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %65

46:                                               ; preds = %21
  %47 = load i32, i32* @ASHIFT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %50 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i8* @simplify_gen_binary(i32 %47, i32 %48, i8* %51, i32 %52)
  %54 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %55 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @ASHIFT, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %59 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @simplify_gen_binary(i32 %56, i32 %57, i8* %60, i32 %61)
  %63 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %64 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %46, %27
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i8* @simplify_gen_binary(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
