; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgcleanup.c_mark_effect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgcleanup.c_mark_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@pc_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mark_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_effect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  switch i32 %11, label %102 [
    i32 129, label %12
    i32 128, label %51
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  %15 = call i32 @REG_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @REGNO(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @CLEAR_REGNO_REG_SET(i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %17
  %29 = load i32**, i32*** @hard_regno_nregs, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @GET_MODE(i32 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %42, %28
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @CLEAR_REGNO_REG_SET(i32 %43, i32 %46)
  br label %38

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %17
  br label %50

50:                                               ; preds = %49, %12
  store i32 0, i32* %3, align 4
  br label %103

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @SET_DEST(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @SET_SRC(i32 %54)
  %56 = call i32 @rtx_equal_for_cselib_p(i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %103

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SET_DEST(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @pc_rtx, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %103

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @REG_P(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %103

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @REGNO(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @SET_REGNO_REG_SET(i32 %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %71
  %81 = load i32**, i32*** @hard_regno_nregs, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @GET_MODE(i32 %86)
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %94, %80
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @SET_REGNO_REG_SET(i32 %95, i32 %98)
  br label %90

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %71
  store i32 0, i32* %3, align 4
  br label %103

102:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %101, %70, %65, %58, %50
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @CLEAR_REGNO_REG_SET(i32, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @rtx_equal_for_cselib_p(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
