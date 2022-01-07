; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_cm9761_update_jacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_cm9761_update_jacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@cm9761_update_jacks.surr_on = internal global [3 x [2 x i16]] [[2 x i16] [i16 8, i16 0], [2 x i16] [i16 0, i16 8], [2 x i16] [i16 0, i16 8]], align 2
@cm9761_update_jacks.clfe_on = internal global [3 x [2 x i16]] [[2 x i16] [i16 0, i16 4096], [2 x i16] [i16 4096, i16 0], [2 x i16] [i16 0, i16 4096]], align 2
@cm9761_update_jacks.surr_shared = internal global [3 x [2 x i16]] [[2 x i16] [i16 0, i16 1024], [2 x i16] [i16 0, i16 1024], [2 x i16] [i16 0, i16 1024]], align 2
@cm9761_update_jacks.clfe_shared = internal global [3 x [2 x i16]] [[2 x i16] [i16 8192, i16 2176], [2 x i16] [i16 0, i16 10368], [2 x i16] [i16 8192, i16 2048]], align 2
@AC97_CM9761_MULTI_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @cm9761_update_jacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm9761_update_jacks(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  store i16 0, i16* %3, align 2
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* @cm9761_update_jacks.surr_on, i64 0, i64 %7
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %10 = call i64 @is_surround_on(%struct.snd_ac97* %9)
  %11 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %19 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* @cm9761_update_jacks.clfe_on, i64 0, i64 %21
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %24 = call i64 @is_clfe_on(%struct.snd_ac97* %23)
  %25 = getelementptr inbounds [2 x i16], [2 x i16]* %22, i64 0, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %3, align 2
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %33 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* @cm9761_update_jacks.surr_shared, i64 0, i64 %35
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %38 = call i64 @is_shared_surrout(%struct.snd_ac97* %37)
  %39 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i64 0, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %3, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %3, align 2
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* @cm9761_update_jacks.clfe_shared, i64 0, i64 %49
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %52 = call i64 @is_shared_clfeout(%struct.snd_ac97* %51)
  %53 = getelementptr inbounds [2 x i16], [2 x i16]* %50, i64 0, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* %3, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %3, align 2
  %60 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %61 = load i32, i32* @AC97_CM9761_MULTI_CHAN, align 4
  %62 = load i16, i16* %3, align 2
  %63 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %60, i32 %61, i32 15496, i16 zeroext %62)
  ret void
}

declare dso_local i64 @is_surround_on(%struct.snd_ac97*) #1

declare dso_local i64 @is_clfe_on(%struct.snd_ac97*) #1

declare dso_local i64 @is_shared_surrout(%struct.snd_ac97*) #1

declare dso_local i64 @is_shared_clfeout(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
