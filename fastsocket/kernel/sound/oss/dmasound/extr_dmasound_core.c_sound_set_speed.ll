; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sound_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sound_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@dmasound = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SND_DEV_DSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sound_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sound_set_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  store i32 %7, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 3, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 3, i32 0), align 8
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 3, i32 0), align 8
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %11, %8
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 0), align 8
  %20 = load i64, i64* @SND_DEV_DSP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 2, i32 0), align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
