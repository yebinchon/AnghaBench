; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_record_jump_equiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_record_jump_equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc_rtx = common dso_local global i64 0, align 8
@MODE_CC = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @record_jump_equiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_jump_equiv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @any_condjump_p(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %89

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pc_set(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @SET_SRC(i32 %24)
  %26 = call i64 @XEXP(i64 %25, i32 2)
  %27 = load i64, i64* @pc_rtx, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @SET_SRC(i32 %31)
  %33 = call i64 @XEXP(i64 %32, i32 1)
  %34 = load i64, i64* @pc_rtx, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @SET_SRC(i32 %38)
  %40 = call i64 @XEXP(i64 %39, i32 0)
  %41 = call i32 @GET_CODE(i64 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @SET_SRC(i32 %42)
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = call i64 @XEXP(i64 %44, i32 0)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @fold_rtx(i64 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @SET_SRC(i32 %48)
  %50 = call i64 @XEXP(i64 %49, i32 0)
  %51 = call i64 @XEXP(i64 %50, i32 1)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @fold_rtx(i64 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @find_comparison_args(i32 %54, i32* %6, i32* %7, i32* %10, i32* %11)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @GET_MODE_CLASS(i32 %56)
  %58 = load i64, i64* @MODE_CC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  br label %89

61:                                               ; preds = %37
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @reversed_comparison_code_parts(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @UNKNOWN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %89

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @VOIDmode, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @record_jump_cond(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %73, %60, %17
  ret void
}

declare dso_local i32 @any_condjump_p(i32) #1

declare dso_local i32 @pc_set(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @fold_rtx(i64, i32) #1

declare dso_local i32 @find_comparison_args(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @reversed_comparison_code_parts(i32, i32, i32, i32) #1

declare dso_local i32 @record_jump_cond(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
