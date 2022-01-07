; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_hard_regno_mode_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_hard_regno_mode_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@TCmode = common dso_local global i32 0, align 4
@TDmode = common dso_local global i32 0, align 4
@MODE_CC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_hard_regno_mode_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @REGNO_REG_CLASS(i32 %6)
  switch i32 %7, label %90 [
    i32 129, label %8
    i32 131, label %34
    i32 128, label %44
    i32 130, label %67
    i32 132, label %74
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @REGNO_PAIR_OK(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SImode, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DImode, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i32 1, i32* %3, align 4
  br label %92

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @FLOAT_MODE_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @GET_MODE_CLASS(i32 %27)
  %29 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %92

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %32, %8
  br label %91

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @FRAME_REGNO_P(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @Pmode, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %92

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %2, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REGNO_PAIR_OK(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i32, i32* @TARGET_64BIT, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @TFmode, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @TCmode, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @TDmode, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %49
  store i32 1, i32* %3, align 4
  br label %92

65:                                               ; preds = %60, %56, %52
  br label %66

66:                                               ; preds = %65, %44
  br label %91

67:                                               ; preds = %2
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @GET_MODE_CLASS(i32 %68)
  %70 = load i32, i32* @MODE_CC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %92

73:                                               ; preds = %67
  br label %91

74:                                               ; preds = %2
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @REGNO_PAIR_OK(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SImode, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @Pmode, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  store i32 1, i32* %3, align 4
  br label %92

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %74
  br label %91

90:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

91:                                               ; preds = %89, %73, %66, %33
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %90, %87, %72, %64, %42, %31, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @REGNO_REG_CLASS(i32) #1

declare dso_local i32 @REGNO_PAIR_OK(i32, i32) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @FRAME_REGNO_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
