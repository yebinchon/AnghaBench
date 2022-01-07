; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_enable_spdif_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_enable_spdif_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ALI_SCTRL = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_ENABLE = common dso_local global i8 0, align 1
@ALI_SPDIF_CTRL = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_CH_STATUS = common dso_local global i8 0, align 1
@ALI_GLOBAL_CONTROL = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_SEL_PCM = common dso_local global i16 0, align 2
@ALI_SPDIF_OUT_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*)* @snd_ali_enable_spdif_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_enable_spdif_out(%struct.snd_ali* %0) #0 {
  %2 = alloca %struct.snd_ali*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.snd_ali* %0, %struct.snd_ali** %2, align 8
  %6 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = icmp eq %struct.pci_dev* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %90

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i32 97, i8* %4)
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 64
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i8, i8* %4, align 1
  %21 = call i32 @pci_write_config_byte(%struct.pci_dev* %19, i32 97, i8 zeroext %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i32 @pci_read_config_byte(%struct.pci_dev* %22, i32 125, i8* %4)
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, 1
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i8, i8* %4, align 1
  %30 = call i32 @pci_write_config_byte(%struct.pci_dev* %28, i32 125, i8 zeroext %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 126, i8* %4)
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, -33
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %4, align 1
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, 16
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %4, align 1
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i8, i8* %4, align 1
  %43 = call i32 @pci_write_config_byte(%struct.pci_dev* %41, i32 126, i8 zeroext %42)
  %44 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %45 = load i32, i32* @ALI_SCTRL, align 4
  %46 = call i32 @ALI_REG(%struct.snd_ali* %44, i32 %45)
  %47 = call zeroext i8 @inb(i32 %46)
  store i8 %47, i8* %4, align 1
  %48 = load i8, i8* %4, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @ALI_SPDIF_OUT_ENABLE, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %55 = load i32, i32* @ALI_SCTRL, align 4
  %56 = call i32 @ALI_REG(%struct.snd_ali* %54, i32 %55)
  %57 = call i32 @outb(i8 zeroext %53, i32 %56)
  %58 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %59 = load i32, i32* @ALI_SPDIF_CTRL, align 4
  %60 = call i32 @ALI_REG(%struct.snd_ali* %58, i32 %59)
  %61 = call zeroext i8 @inb(i32 %60)
  store i8 %61, i8* %4, align 1
  %62 = load i8, i8* %4, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @ALI_SPDIF_OUT_CH_STATUS, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = trunc i32 %66 to i8
  %68 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %69 = load i32, i32* @ALI_SPDIF_CTRL, align 4
  %70 = call i32 @ALI_REG(%struct.snd_ali* %68, i32 %69)
  %71 = call i32 @outb(i8 zeroext %67, i32 %70)
  %72 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %73 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %74 = call i32 @ALI_REG(%struct.snd_ali* %72, i32 %73)
  %75 = call zeroext i16 @inw(i32 %74)
  store i16 %75, i16* %3, align 2
  %76 = load i16, i16* @ALI_SPDIF_OUT_SEL_PCM, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* %3, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %79, %77
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %3, align 2
  %82 = load i16, i16* %3, align 2
  %83 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %84 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %85 = call i32 @ALI_REG(%struct.snd_ali* %83, i32 %84)
  %86 = call i32 @outw(i16 zeroext %82, i32 %85)
  %87 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %88 = load i32, i32* @ALI_SPDIF_OUT_CHANNEL, align 4
  %89 = call i32 @snd_ali_disable_special_channel(%struct.snd_ali* %87, i32 %88)
  br label %90

90:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local zeroext i16 @inw(i32) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @snd_ali_disable_special_channel(%struct.snd_ali*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
