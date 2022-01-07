; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_ac97*, i16, i16)* }

@AC97_ID_ALC100 = common dso_local global i32 0, align 4
@AC97_MASTER = common dso_local global i16 0, align 2
@AC97_HEADPHONE = common dso_local global i16 0, align 2
@AC97_RESET = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %8 = load i16, i16* %5, align 2
  %9 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %7, i16 zeroext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %55

12:                                               ; preds = %3
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, -256
  %17 = load i32, i32* @AC97_ID_ALC100, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @AC97_MASTER, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @AC97_HEADPHONE, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25, %19
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.snd_ac97*, i16, i16)*, i32 (%struct.snd_ac97*, i16, i16)** %37, align 8
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %40 = load i16, i16* @AC97_RESET, align 2
  %41 = call i32 %38(%struct.snd_ac97* %39, i16 zeroext %40, i16 zeroext 0)
  br label %42

42:                                               ; preds = %31, %25
  br label %43

43:                                               ; preds = %42, %12
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.snd_ac97*, i16, i16)*, i32 (%struct.snd_ac97*, i16, i16)** %49, align 8
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %52 = load i16, i16* %5, align 2
  %53 = load i16, i16* %6, align 2
  %54 = call i32 %50(%struct.snd_ac97* %51, i16 zeroext %52, i16 zeroext %53)
  br label %55

55:                                               ; preds = %43, %11
  ret void
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
