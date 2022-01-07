; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }

@AC97_CMD = common dso_local global i32 0, align 4
@ICE1712_AC97_WRITE = common dso_local global i8 0, align 1
@ICE1712_AC97_READ = common dso_local global i8 0, align 1
@ICE1712_AC97_READY = common dso_local global i8 0, align 1
@AC97_INDEX = common dso_local global i32 0, align 4
@AC97_DATA = common dso_local global i32 0, align 4
@ICE1712_AC97_PBK_VSR = common dso_local global i8 0, align 1
@ICE1712_AC97_CAP_VSR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_ice1712_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %7, align 8
  store i8 0, i8* %9, align 1
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 65536
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %18 = load i32, i32* @AC97_CMD, align 4
  %19 = call i32 @ICEREG(%struct.snd_ice1712* %17, i32 %18)
  %20 = call zeroext i8 @inb(i32 %19)
  store i8 %20, i8* %9, align 1
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @ICE1712_AC97_WRITE, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ICE1712_AC97_READ, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = and i32 %22, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %40

31:                                               ; preds = %16
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @ICE1712_AC97_READY, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %40

39:                                               ; preds = %31
  br label %43

40:                                               ; preds = %38, %30
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %13

43:                                               ; preds = %39, %13
  %44 = load i16, i16* %5, align 2
  %45 = trunc i16 %44 to i8
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %47 = load i32, i32* @AC97_INDEX, align 4
  %48 = call i32 @ICEREG(%struct.snd_ice1712* %46, i32 %47)
  %49 = call i32 @outb(i8 zeroext %45, i32 %48)
  %50 = load i16, i16* %6, align 2
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %52 = load i32, i32* @AC97_DATA, align 4
  %53 = call i32 @ICEREG(%struct.snd_ice1712* %51, i32 %52)
  %54 = call i32 @outw(i16 zeroext %50, i32 %53)
  %55 = load i8, i8* @ICE1712_AC97_PBK_VSR, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @ICE1712_AC97_CAP_VSR, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = xor i32 %59, -1
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %9, align 1
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @ICE1712_AC97_WRITE, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = trunc i32 %69 to i8
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %72 = load i32, i32* @AC97_CMD, align 4
  %73 = call i32 @ICEREG(%struct.snd_ice1712* %71, i32 %72)
  %74 = call i32 @outb(i8 zeroext %70, i32 %73)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %90, %43
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 65536
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %80 = load i32, i32* @AC97_CMD, align 4
  %81 = call i32 @ICEREG(%struct.snd_ice1712* %79, i32 %80)
  %82 = call zeroext i8 @inb(i32 %81)
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @ICE1712_AC97_WRITE, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %83, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %75

93:                                               ; preds = %88, %75
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
