; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_load_dsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_load_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.firmware = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32, %struct.firmware*)* @vxp_load_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxp_load_dsp(%struct.vx_core* %0, i32 %1, %struct.firmware* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %36 [
    i32 0, label %10
    i32 1, label %24
    i32 2, label %28
    i32 3, label %32
  ]

10:                                               ; preds = %3
  %11 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %12 = call i32 @vx_check_magic(%struct.vx_core* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %10
  %17 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %18 = load %struct.firmware*, %struct.firmware** %7, align 8
  %19 = call i32 @snd_vx_load_boot_image(%struct.vx_core* %17, %struct.firmware* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %26 = load %struct.firmware*, %struct.firmware** %7, align 8
  %27 = call i32 @vxp_load_xilinx_binary(%struct.vx_core* %25, %struct.firmware* %26)
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %30 = load %struct.firmware*, %struct.firmware** %7, align 8
  %31 = call i32 @snd_vx_dsp_boot(%struct.vx_core* %29, %struct.firmware* %30)
  store i32 %31, i32* %4, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %34 = load %struct.firmware*, %struct.firmware** %7, align 8
  %35 = call i32 @snd_vx_dsp_load(%struct.vx_core* %33, %struct.firmware* %34)
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %3
  %37 = call i32 (...) @snd_BUG()
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %32, %28, %24, %23, %21, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @vx_check_magic(%struct.vx_core*) #1

declare dso_local i32 @snd_vx_load_boot_image(%struct.vx_core*, %struct.firmware*) #1

declare dso_local i32 @vxp_load_xilinx_binary(%struct.vx_core*, %struct.firmware*) #1

declare dso_local i32 @snd_vx_dsp_boot(%struct.vx_core*, %struct.firmware*) #1

declare dso_local i32 @snd_vx_dsp_load(%struct.vx_core*, %struct.firmware*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
