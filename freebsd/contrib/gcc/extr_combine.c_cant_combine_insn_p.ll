; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_cant_combine_insn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_cant_combine_insn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@fixed_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cant_combine_insn_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cant_combine_insn_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSN_P(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %83

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @single_set(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %83

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SET_SRC(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SET_DEST(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = load i64, i64* @SUBREG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @SUBREG_REG(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @SUBREG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @SUBREG_REG(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @REG_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @REG_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @REGNO(i32 %46)
  %48 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32*, i32** @fixed_regs, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @REGNO(i32 %52)
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @REGNO(i32 %58)
  %60 = call i32 @REGNO_REG_CLASS(i64 %59)
  %61 = call i64 @CLASS_LIKELY_SPILLED_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %57, %50, %45
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @REGNO(i32 %64)
  %66 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32*, i32** @fixed_regs, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @REGNO(i32 %70)
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @REGNO(i32 %76)
  %78 = call i32 @REGNO_REG_CLASS(i64 %77)
  %79 = call i64 @CLASS_LIKELY_SPILLED_P(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %57
  store i32 1, i32* %2, align 4
  br label %83

82:                                               ; preds = %75, %68, %63, %41, %37
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %81, %16, %10
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @INSN_P(i32) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @CLASS_LIKELY_SPILLED_P(i32) #1

declare dso_local i32 @REGNO_REG_CLASS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
