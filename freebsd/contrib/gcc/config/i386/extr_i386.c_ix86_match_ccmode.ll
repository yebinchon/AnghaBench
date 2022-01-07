; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_match_ccmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_match_ccmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@COMPARE = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_match_ccmode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @PATTERN(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @PARALLEL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @XVECEXP(i32 %15, i32 0, i32 0)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @SET, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SET_SRC(i32 %24)
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @COMPARE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SET_DEST(i32 %31)
  %33 = call i32 @GET_MODE(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %68 [
    i32 130, label %35
    i32 128, label %49
    i32 132, label %54
    i32 131, label %62
    i32 129, label %67
  ]

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 130
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SET_SRC(i32 %42)
  %44 = call i32 @XEXP(i32 %43, i32 1)
  %45 = load i32, i32* @const0_rtx, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %38
  store i32 0, i32* %3, align 4
  br label %77

48:                                               ; preds = %41, %35
  br label %70

49:                                               ; preds = %17
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 132
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %77

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %17, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 131
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 130
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  store i32 0, i32* %3, align 4
  br label %77

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %17, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %77

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %17, %66
  br label %70

68:                                               ; preds = %17
  %69 = call i32 (...) @gcc_unreachable()
  br label %70

70:                                               ; preds = %68, %67, %48
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @SET_SRC(i32 %71)
  %73 = call i32 @GET_MODE(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %65, %60, %52, %47
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
