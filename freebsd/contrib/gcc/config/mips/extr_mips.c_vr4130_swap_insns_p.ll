; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_vr4130_swap_insns_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_vr4130_swap_insns_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_DEP_ANTI = common dso_local global i64 0, align 8
@VR4130_CLASS_ALU = common dso_local global i64 0, align 8
@vr4130_last_insn = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @vr4130_swap_insns_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr4130_swap_insns_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @INSN_DEPEND(i64 %11)
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @REG_NOTE_KIND(i64 %17)
  %19 = load i64, i64* @REG_DEP_ANTI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @XEXP(i64 %22, i32 0)
  %24 = call i64 @INSN_PRIORITY(i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @INSN_PRIORITY(i64 %25)
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @XEXP(i64 %29, i32 0)
  %31 = call i64 @recog_memoized(i64 %30)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @XEXP(i64 %34, i32 0)
  %36 = call i32 @get_attr_vr4130_class(i64 %35)
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @VR4130_CLASS_ALU, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %97

41:                                               ; preds = %33, %28, %21, %16
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @XEXP(i64 %43, i32 1)
  store i64 %44, i64* %6, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i64, i64* @vr4130_last_insn, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %96

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @recog_memoized(i64 %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @recog_memoized(i64 %53)
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @get_attr_vr4130_class(i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @get_attr_vr4130_class(i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @VR4130_CLASS_ALU, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %64, %56
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @vr4130_true_reg_dependence_p(i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @vr4130_true_reg_dependence_p(i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %97

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* @VR4130_CLASS_ALU, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i64, i64* @vr4130_last_insn, align 8
  %86 = call i64 @recog_memoized(i64 %85)
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = load i64, i64* @vr4130_last_insn, align 8
  %91 = call i32 @get_attr_vr4130_class(i64 %90)
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %97

94:                                               ; preds = %88, %84, %79
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %52, %48, %45
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %93, %77, %40
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @INSN_DEPEND(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @INSN_PRIORITY(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @recog_memoized(i64) #1

declare dso_local i32 @get_attr_vr4130_class(i64) #1

declare dso_local i32 @vr4130_true_reg_dependence_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
