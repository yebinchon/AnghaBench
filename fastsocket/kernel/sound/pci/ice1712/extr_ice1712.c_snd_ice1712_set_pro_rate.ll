; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_set_pro_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_set_pro_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.snd_ice1712.0*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_6__ = type { i32 (%struct.snd_ice1712.1*, i32)* }
%struct.snd_ice1712.1 = type opaque

@PLAYBACK_CONTROL = common dso_local global i32 0, align 4
@ICE1712_CAPTURE_START_SHADOW = common dso_local global i32 0, align 4
@ICE1712_PLAYBACK_PAUSE = common dso_local global i32 0, align 4
@ICE1712_PLAYBACK_START = common dso_local global i32 0, align 4
@RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32)* @snd_ice1712_set_pro_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_set_pro_rate(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %25 [
    i32 8000, label %12
    i32 9600, label %13
    i32 11025, label %14
    i32 12000, label %15
    i32 16000, label %16
    i32 22050, label %17
    i32 24000, label %18
    i32 32000, label %19
    i32 44100, label %20
    i32 48000, label %21
    i32 64000, label %22
    i32 88200, label %23
    i32 96000, label %24
  ]

12:                                               ; preds = %3
  store i8 6, i8* %8, align 1
  br label %27

13:                                               ; preds = %3
  store i8 3, i8* %8, align 1
  br label %27

14:                                               ; preds = %3
  store i8 10, i8* %8, align 1
  br label %27

15:                                               ; preds = %3
  store i8 2, i8* %8, align 1
  br label %27

16:                                               ; preds = %3
  store i8 5, i8* %8, align 1
  br label %27

17:                                               ; preds = %3
  store i8 9, i8* %8, align 1
  br label %27

18:                                               ; preds = %3
  store i8 1, i8* %8, align 1
  br label %27

19:                                               ; preds = %3
  store i8 4, i8* %8, align 1
  br label %27

20:                                               ; preds = %3
  store i8 8, i8* %8, align 1
  br label %27

21:                                               ; preds = %3
  store i8 0, i8* %8, align 1
  br label %27

22:                                               ; preds = %3
  store i8 15, i8* %8, align 1
  br label %27

23:                                               ; preds = %3
  store i8 11, i8* %8, align 1
  br label %27

24:                                               ; preds = %3
  store i8 7, i8* %8, align 1
  br label %27

25:                                               ; preds = %3
  %26 = call i32 (...) @snd_BUG()
  store i8 0, i8* %8, align 1
  store i32 48000, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %33 = load i32, i32* @PLAYBACK_CONTROL, align 4
  %34 = call i32 @ICEMT(%struct.snd_ice1712* %32, i32 %33)
  %35 = call i32 @inb(i32 %34)
  %36 = load i32, i32* @ICE1712_CAPTURE_START_SHADOW, align 4
  %37 = load i32, i32* @ICE1712_PLAYBACK_PAUSE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ICE1712_PLAYBACK_START, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %71, %56, %43
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %153

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %54 = call i64 @is_pro_rate_locked(%struct.snd_ice1712* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %44

57:                                               ; preds = %52, %49
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %59 = load i32, i32* @RATE, align 4
  %60 = call i32 @ICEMT(%struct.snd_ice1712* %58, i32 %59)
  %61 = call i32 @inb(i32 %60)
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %9, align 1
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %44

72:                                               ; preds = %65, %57
  %73 = load i8, i8* %8, align 1
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %75 = load i32, i32* @RATE, align 4
  %76 = call i32 @ICEMT(%struct.snd_ice1712* %74, i32 %75)
  %77 = call i32 @outb(i8 zeroext %73, i32 %76)
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 4
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %83 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.snd_ice1712.1*, i32)* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %72
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %89 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %90, align 8
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %93 = bitcast %struct.snd_ice1712* %92 to %struct.snd_ice1712.1*
  %94 = load i32, i32* %5, align 4
  %95 = call i32 %91(%struct.snd_ice1712.1* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %72
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %133, %96
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %100 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %97
  %104 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %105 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_10__*, i32)* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %103
  %115 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %116 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %122, align 8
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %125 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = load i32, i32* %5, align 4
  %131 = call i32 %123(%struct.TYPE_10__* %129, i32 %130)
  br label %132

132:                                              ; preds = %114, %103
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %97

136:                                              ; preds = %97
  %137 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %138 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %140, align 8
  %142 = icmp ne i32 (%struct.snd_ice1712.0*, i32)* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %145 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %147, align 8
  %149 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %150 = bitcast %struct.snd_ice1712* %149 to %struct.snd_ice1712.0*
  %151 = load i32, i32* %5, align 4
  %152 = call i32 %148(%struct.snd_ice1712.0* %150, i32 %151)
  br label %153

153:                                              ; preds = %44, %143, %136
  ret void
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_pro_rate_locked(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
