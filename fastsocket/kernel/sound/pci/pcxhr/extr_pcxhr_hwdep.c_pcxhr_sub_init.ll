; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_sub_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_sub_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32, i32* }

@CMD_ACCESS_IO_READ = common dso_local global i32 0, align 4
@IO_NUM_REG_STATUS = common dso_local global i32 0, align 4
@REG_STATUS_OPTIONS = common dso_local global i32 0, align 4
@REG_STATUS_OPT_DAUGHTER_MASK = common dso_local global i32 0, align 4
@REG_STATUS_OPT_ANALOG_BOARD = common dso_local global i32 0, align 4
@REG_CONT_UNMUTE_INPUTS = common dso_local global i32 0, align 4
@IO_NUM_REG_MUTE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*)* @pcxhr_sub_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_sub_init(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_rmh, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  %6 = load i32, i32* @CMD_ACCESS_IO_READ, align 4
  %7 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %5, i32 %6)
  %8 = load i32, i32* @IO_NUM_REG_STATUS, align 4
  %9 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @REG_STATUS_OPTIONS, align 4
  %15 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %14, i32* %17, align 4
  %18 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 1
  store i32 2, i32* %18, align 8
  %19 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %20 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %19, %struct.pcxhr_rmh* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %67

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REG_STATUS_OPT_DAUGHTER_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @REG_STATUS_OPT_ANALOG_BOARD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %36 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %39 = load i32, i32* @REG_CONT_UNMUTE_INPUTS, align 4
  %40 = load i32, i32* @REG_CONT_UNMUTE_INPUTS, align 4
  %41 = call i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr* %38, i32 %39, i32 %40, i32* null)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %67

46:                                               ; preds = %37
  %47 = load i32, i32* @CMD_ACCESS_IO_READ, align 4
  %48 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %5, i32 %47)
  %49 = load i32, i32* @IO_NUM_REG_MUTE_OUT, align 4
  %50 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %56 = call i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 1
  store i32 2, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %46
  %64 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %65 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %64, %struct.pcxhr_rmh* %5)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %44, %23
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr*, i32, i32, i32*) #1

declare dso_local i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
