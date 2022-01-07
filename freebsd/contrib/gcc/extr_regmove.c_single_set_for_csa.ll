; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_single_set_for_csa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_single_set_for_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @single_set_for_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @single_set_for_csa(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @single_set(i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %2, align 8
  br label %76

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @NONJUMP_INSN_P(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @PATTERN(i64 %18)
  %20 = call i64 @GET_CODE(i64 %19)
  %21 = load i64, i64* @PARALLEL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %13
  %24 = load i64, i64* @NULL_RTX, align 8
  store i64 %24, i64* %2, align 8
  br label %76

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @PATTERN(i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @XVECEXP(i64 %28, i32 0, i32 0)
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @SET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @NULL_RTX, align 8
  store i64 %34, i64* %2, align 8
  br label %76

35:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @XVECLEN(i64 %38, i32 0)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @XVECEXP(i64 %42, i32 0, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @SET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @SET_SRC(i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @SET_DEST(i64 %52)
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %69

56:                                               ; preds = %49, %41
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @CLOBBER, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @GET_CODE(i64 %62)
  %64 = load i64, i64* @USE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @NULL_RTX, align 8
  store i64 %67, i64* %2, align 8
  br label %76

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @XVECEXP(i64 %74, i32 0, i32 0)
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %73, %66, %33, %23, %11
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i32 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
