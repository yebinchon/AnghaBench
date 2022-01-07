; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_single_set_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_single_set_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@REG_UNUSED = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @single_set_2(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @GET_CODE(i32* %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @PARALLEL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %68, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @XVECLEN(i32* %18, i32 0)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32* @XVECEXP(i32* %22, i32 0, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @GET_CODE(i32* %25)
  switch i32 %26, label %65 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %28
  ]

27:                                               ; preds = %21, %21
  br label %67

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @REG_UNUSED, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @SET_DEST(i32* %34)
  %36 = call i32 @find_reg_note(i32* %32, i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @side_effects_p(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32* null, i32** %6, align 8
  br label %44

43:                                               ; preds = %38, %31
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %64

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @REG_UNUSED, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @SET_DEST(i32* %53)
  %55 = call i32 @find_reg_note(i32* %51, i32 %52, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @side_effects_p(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %50
  %62 = load i32*, i32** @NULL_RTX, align 8
  store i32* %62, i32** %3, align 8
  br label %74

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %48
  br label %67

65:                                               ; preds = %21
  %66 = load i32*, i32** @NULL_RTX, align 8
  store i32* %66, i32** %3, align 8
  br label %74

67:                                               ; preds = %64, %27
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %16

71:                                               ; preds = %16
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32*, i32** %6, align 8
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %72, %65, %61
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @XVECLEN(i32*, i32) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

declare dso_local i32 @find_reg_note(i32*, i32, i32) #1

declare dso_local i32 @SET_DEST(i32*) #1

declare dso_local i32 @side_effects_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
