; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dsp_set_run_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dsp_set_run_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@DSP_DBGCNTL_INST_OFFSET = common dso_local global i32 0, align 4
@DSP_DBGCNTL_STATE_MASK = common dso_local global i32 0, align 4
@DSP_DBGCNTL_STATE_LOBIT = common dso_local global i32 0, align 4
@DSP_DBGCNTL_SS_LOBIT = common dso_local global i32 0, align 4
@DSP_DBGCNTL_SS_MASK = common dso_local global i32 0, align 4
@DSP_DBGCNTL_EXEC_LOBIT = common dso_local global i32 0, align 4
@DSP_DBGCNTL_EXEC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @dsp_set_run_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_set_run_state(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = load i32, i32* @DSP_DBGCNTL_INST_OFFSET, align 4
  %9 = call i32 @chipio_read(%struct.hda_codec* %7, i32 %8, i32* %4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DSP_DBGCNTL_STATE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @DSP_DBGCNTL_STATE_LOBIT, align 4
  %19 = lshr i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DSP_DBGCNTL_SS_LOBIT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @DSP_DBGCNTL_SS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32, i32* @DSP_DBGCNTL_INST_OFFSET, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @chipio_write(%struct.hda_codec* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %57

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @DSP_DBGCNTL_EXEC_LOBIT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @DSP_DBGCNTL_EXEC_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load i32, i32* @DSP_DBGCNTL_INST_OFFSET, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @chipio_write(%struct.hda_codec* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %14
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %37, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @chipio_read(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
