; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_gp_pseudo_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_gp_pseudo_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@UNSPEC_GP = common dso_local global i32 0, align 4
@NOTE_INSN_FUNCTION_BEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mips16_gp_pseudo_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips16_gp_pseudo_reg() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NULL_RTX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %66

11:                                               ; preds = %0
  %12 = load i32, i32* @Pmode, align 4
  %13 = call i64 @gen_reg_rtx(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  %18 = call i32 (...) @start_sequence()
  %19 = load i32, i32* @VOIDmode, align 4
  %20 = load i32, i32* @const0_rtx, align 4
  %21 = call i32 @gen_rtvec(i32 1, i32 %20)
  %22 = load i32, i32* @UNSPEC_GP, align 4
  %23 = call i64 @gen_rtx_UNSPEC(i32 %19, i32 %21, i32 %22)
  store i64 %23, i64* %1, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @Pmode, align 4
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @gen_rtx_CONST(i32 %29, i64 %30)
  %32 = call i32 @emit_move_insn(i64 %28, i32 %31)
  %33 = call i64 (...) @get_insns()
  store i64 %33, i64* %2, align 8
  %34 = call i32 (...) @end_sequence()
  %35 = call i32 (...) @push_topmost_sequence()
  %36 = call i64 (...) @get_insns()
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %52, %11
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @NULL_RTX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @NOTE_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @NOTE_LINE_NUMBER(i64 %46)
  %48 = load i64, i64* @NOTE_INSN_FUNCTION_BEG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %3, align 8
  %54 = call i64 @NEXT_INSN(i64 %53)
  store i64 %54, i64* %3, align 8
  br label %37

55:                                               ; preds = %50, %37
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @NULL_RTX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i64 (...) @get_insns()
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i64 @emit_insn_after(i64 %62, i64 %63)
  store i64 %64, i64* %2, align 8
  %65 = call i32 (...) @pop_topmost_sequence()
  br label %66

66:                                               ; preds = %61, %0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  ret i64 %71
}

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i32) #1

declare dso_local i32 @gen_rtx_CONST(i32, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @push_topmost_sequence(...) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @emit_insn_after(i64, i64) #1

declare dso_local i32 @pop_topmost_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
