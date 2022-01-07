; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_write_codec_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_write_codec_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@LOFREQ = common dso_local global i32 0, align 4
@CODEC2 = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@VX_DATA_CODEC_MASK = common dso_local global i32 0, align 4
@HIFREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32, i32)* @vxp_write_codec_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_write_codec_reg(%struct.vx_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %12 = load i32, i32* @LOFREQ, align 4
  %13 = call i32 @vx_inb(%struct.vx_core* %11, i32 %12)
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %16 = load i32, i32* @CODEC2, align 4
  %17 = call i32 @vx_inb(%struct.vx_core* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %24 = load i32, i32* @DATA, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 8388608
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @VX_DATA_CODEC_MASK, align 4
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32 @vx_outb(%struct.vx_core* %23, i32 %24, i32 %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %41 = load i32, i32* @HIFREQ, align 4
  %42 = call i32 @vx_inb(%struct.vx_core* %40, i32 %41)
  ret void
}

declare dso_local i32 @vx_inb(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
