; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_computed_jump_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_computed_jump_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_LABEL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @computed_jump_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @JUMP_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %109

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PATTERN(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @REG_LABEL, align 4
  %16 = load i32, i32* @NULL_RTX, align 4
  %17 = call i64 @find_reg_note(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %110

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @PARALLEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @XVECLEN(i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %50, %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @XVECEXP(i32 %34, i32 0, i32 %35)
  %37 = call i64 @GET_CODE(i32 %36)
  %38 = load i64, i64* @USE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @XVECEXP(i32 %41, i32 0, i32 %42)
  %44 = call i32 @XEXP(i32 %43, i32 0)
  %45 = call i64 @GET_CODE(i32 %44)
  %46 = load i64, i64* @LABEL_REF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %40, %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %85, %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @XVECEXP(i32 %63, i32 0, i32 %64)
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @SET, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @XVECEXP(i32 %70, i32 0, i32 %71)
  %73 = call i64 @SET_DEST(i32 %72)
  %74 = load i64, i64* @pc_rtx, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @XVECEXP(i32 %77, i32 0, i32 %78)
  %80 = call i32 @SET_SRC(i32 %79)
  %81 = call i64 @computed_jump_p_1(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %110

84:                                               ; preds = %76, %69, %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %4, align 4
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %53
  br label %107

90:                                               ; preds = %20
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @GET_CODE(i32 %91)
  %93 = load i64, i64* @SET, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @SET_DEST(i32 %96)
  %98 = load i64, i64* @pc_rtx, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @SET_SRC(i32 %101)
  %103 = call i64 @computed_jump_p_1(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %2, align 4
  br label %110

106:                                              ; preds = %100, %95, %90
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %1
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %105, %83, %19
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @find_reg_note(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @SET_DEST(i32) #1

declare dso_local i64 @computed_jump_p_1(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
