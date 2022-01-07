; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_old_write_codec_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_old_write_codec_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@HIFREQ = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@VX_DATA_CODEC_MASK = common dso_local global i32 0, align 4
@RUER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32, i32)* @vx2_old_write_codec_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_old_write_codec_bit(%struct.vx_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %9 = load i32, i32* @HIFREQ, align 4
  %10 = call i32 @vx_inl(%struct.vx_core* %8, i32 %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 24
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 8388608
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @VX_DATA_CODEC_MASK, align 4
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = call i32 @vx_outl(%struct.vx_core* %15, i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %33 = load i32, i32* @RUER, align 4
  %34 = call i32 @vx_inl(%struct.vx_core* %32, i32 %33)
  ret void
}

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
