; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_load_boot_binary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_load_boot_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCXHR_PLX_MBOX1 = common dso_local global i32 0, align 4
@PCXHR_IT_DOWNLOAD_BOOT = common dso_local global i32 0, align 4
@PCXHR_PLX_MBOX0 = common dso_local global i32 0, align 4
@PCXHR_MBOX0_HF5 = common dso_local global i32 0, align 4
@PCXHR_TIMEOUT_DSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_load_boot_binary(%struct.pcxhr_mgr* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %10 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 255
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %22 = load i32, i32* @PCXHR_PLX_MBOX1, align 4
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 8
  %25 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %21, i32 %22, i32 %24)
  %26 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %27 = load i32, i32* @PCXHR_IT_DOWNLOAD_BOOT, align 4
  %28 = call i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr* %26, i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %20
  %34 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %35 = load i32, i32* @PCXHR_PLX_MBOX0, align 4
  %36 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %37 = load i32, i32* @PCXHR_PLX_MBOX0, align 4
  %38 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %36, i32 %37)
  %39 = load i32, i32* @PCXHR_MBOX0_HF5, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %34, i32 %35, i32 %41)
  %43 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %44 = load %struct.firmware*, %struct.firmware** %5, align 8
  %45 = call i32 @pcxhr_download_dsp(%struct.pcxhr_mgr* %43, %struct.firmware* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %33
  %51 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %52 = load i32, i32* @PCXHR_PLX_MBOX0, align 4
  %53 = load i32, i32* @PCXHR_MBOX0_HF5, align 4
  %54 = load i32, i32* @PCXHR_MBOX0_HF5, align 4
  %55 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %56 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %51, i32 %52, i32 %53, i32 %54, i32 %55, i8* %8)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %48, %31, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @PCXHR_OUTPL(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @pcxhr_send_it_dsp(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @PCXHR_INPL(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @pcxhr_download_dsp(%struct.pcxhr_mgr*, %struct.firmware*) #1

declare dso_local i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
