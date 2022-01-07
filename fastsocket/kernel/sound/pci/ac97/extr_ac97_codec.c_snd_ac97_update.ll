; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_update(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %10 = load i16, i16* %6, align 2
  %11 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %9, i16 zeroext %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %20, i32 0, i32 0
  %22 = load i16*, i16** %21, align 8
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds i16, i16* %22, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %27, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %16
  %35 = load i16, i16* %7, align 2
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %36, i32 0, i32 0
  %38 = load i16*, i16** %37, align 8
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  store i16 %35, i16* %41, align 2
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.snd_ac97*, i16, i16)**
  %49 = load i32 (%struct.snd_ac97*, i16, i16)*, i32 (%struct.snd_ac97*, i16, i16)** %48, align 8
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %51 = load i16, i16* %6, align 2
  %52 = load i16, i16* %7, align 2
  %53 = call i32 %49(%struct.snd_ac97* %50, i16 zeroext %51, i16 zeroext %52)
  br label %54

54:                                               ; preds = %34, %16
  %55 = load i16, i16* %6, align 2
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @set_bit(i16 zeroext %55, i32 %58)
  %60 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %61 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %54, %13
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i16 zeroext) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i16 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
