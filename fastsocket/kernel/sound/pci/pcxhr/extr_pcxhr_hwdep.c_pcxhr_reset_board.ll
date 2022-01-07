; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_reset_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_reset_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32 }
%struct.pcxhr_rmh = type { i32* }

@PCXHR_FIRMWARE_DSP_MAIN_INDEX = common dso_local global i32 0, align 4
@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_MUTE_OUT = common dso_local global i32 0, align 4
@REG_CONT_UNMUTE_INPUTS = common dso_local global i32 0, align 4
@PCXHR_FIRMWARE_DSP_EPRM_INDEX = common dso_local global i32 0, align 4
@PCXHR_FIRMWARE_XLX_COM_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcxhr_reset_board(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca %struct.pcxhr_mgr*, align 8
  %3 = alloca %struct.pcxhr_rmh, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %2, align 8
  %4 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %5 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PCXHR_FIRMWARE_DSP_MAIN_INDEX, align 4
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %18 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %3, i32 %17)
  %19 = load i32, i32* @IO_NUM_REG_MUTE_OUT, align 4
  %20 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %3, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %26 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %25, %struct.pcxhr_rmh* %3)
  %27 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %28 = load i32, i32* @REG_CONT_UNMUTE_INPUTS, align 4
  %29 = call i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr* %27, i32 %28, i32 0, i32* null)
  br label %30

30:                                               ; preds = %16, %11
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %33 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCXHR_FIRMWARE_DSP_EPRM_INDEX, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %41 = call i32 @pcxhr_reset_dsp(%struct.pcxhr_mgr* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %44 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCXHR_FIRMWARE_XLX_COM_INDEX, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %52 = call i32 @pcxhr_reset_xilinx_com(%struct.pcxhr_mgr* %51)
  %53 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %54 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %42
  ret void
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr*, i32, i32, i32*) #1

declare dso_local i32 @pcxhr_reset_dsp(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_reset_xilinx_com(%struct.pcxhr_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
