; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_ad1888_update_jacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_ad1888_update_jacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AC97_AD_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @ad1888_update_jacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1888_update_jacks(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  store i16 0, i16* %3, align 2
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = call i64 @is_shared_linein(%struct.snd_ac97* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, 4096
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %3, align 2
  br label %19

19:                                               ; preds = %14, %10, %1
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %21 = call i64 @is_shared_micin(%struct.snd_ac97* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, 2048
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %3, align 2
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %30 = load i32, i32* @AC97_AD_MISC, align 4
  %31 = load i16, i16* %3, align 2
  %32 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %29, i32 %30, i32 6144, i16 zeroext %31)
  ret void
}

declare dso_local i64 @is_shared_linein(%struct.snd_ac97*) #1

declare dso_local i64 @is_shared_micin(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
