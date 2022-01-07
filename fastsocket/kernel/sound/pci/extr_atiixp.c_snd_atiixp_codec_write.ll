; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp.c_snd_atiixp_codec_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp.c_snd_atiixp_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { i32 }

@ATI_REG_PHYS_OUT_DATA_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_EN = common dso_local global i32 0, align 4
@PHYS_OUT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp*, i16, i16, i16)* @snd_atiixp_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_atiixp_codec_write(%struct.atiixp* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.atiixp*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %11 = call i64 @snd_atiixp_acquire_codec(%struct.atiixp* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %33

14:                                               ; preds = %4
  %15 = load i16, i16* %8, align 2
  %16 = zext i16 %15 to i32
  %17 = load i32, i32* @ATI_REG_PHYS_OUT_DATA_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %18, %22
  %24 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %25, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %30 = load i32, i32* @PHYS_OUT_ADDR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @atiixp_write(%struct.atiixp* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @snd_atiixp_acquire_codec(%struct.atiixp*) #1

declare dso_local i32 @atiixp_write(%struct.atiixp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
