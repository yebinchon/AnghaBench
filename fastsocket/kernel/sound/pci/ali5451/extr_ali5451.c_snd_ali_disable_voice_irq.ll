; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_disable_voice_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_disable_voice_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.snd_ali_channel_control }
%struct.snd_ali_channel_control = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"disable_voice_irq channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, i32)* @snd_ali_disable_voice_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_disable_voice_irq(%struct.snd_ali* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ali_channel_control*, align 8
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %7, i32 0, i32 0
  store %struct.snd_ali_channel_control* %8, %struct.snd_ali_channel_control** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @snd_ali_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 31
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %15 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %16 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ALI_REG(%struct.snd_ali* %14, i32 %18)
  %20 = call i32 @inl(i32 %19)
  %21 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %22 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %27 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %36 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %6, align 8
  %37 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ALI_REG(%struct.snd_ali* %35, i32 %39)
  %41 = call i32 @outl(i32 %34, i32 %40)
  ret void
}

declare dso_local i32 @snd_ali_printk(i8*, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
