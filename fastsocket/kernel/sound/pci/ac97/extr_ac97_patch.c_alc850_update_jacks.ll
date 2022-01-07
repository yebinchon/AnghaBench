; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_alc850_update_jacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_alc850_update_jacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@AC97_ALC850_MISC1 = common dso_local global i32 0, align 4
@AC97_ALC850_JACK_SELECT = common dso_local global i32 0, align 4
@AC97_ALC850_MULTICH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @alc850_update_jacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc850_update_jacks(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = call i32 @is_shared_surrout(%struct.snd_ac97* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %8 = load i32, i32* @AC97_ALC850_MISC1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 32, i32 16
  %13 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %7, i32 %8, i32 48, i32 %12)
  %14 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %15 = load i32, i32* @AC97_ALC850_JACK_SELECT, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 8192, i32 0
  %20 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %14, i32 %15, i32 28672, i32 %19)
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %22 = call i32 @is_shared_clfeout(%struct.snd_ac97* %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %24 = load i32, i32* @AC97_ALC850_MISC1, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 4096, i32 8192
  %29 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %23, i32 %24, i32 12288, i32 %28)
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %31 = load i32, i32* @AC97_ALC850_JACK_SELECT, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 80, i32 16
  %36 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %30, i32 %31, i32 112, i32 %35)
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %38 = call i32 @alc850_is_aux_back_surround(%struct.snd_ac97* %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %40 = load i32, i32* @AC97_ALC850_MULTICH, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1024, i32 0
  %45 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %39, i32 %40, i32 1024, i32 %44)
  ret void
}

declare dso_local i32 @is_shared_surrout(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @is_shared_clfeout(%struct.snd_ac97*) #1

declare dso_local i32 @alc850_is_aux_back_surround(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
