; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i16 }

@audio_devs = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i16)* @waveartist_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @waveartist_set_channels(i32 %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %7, i64 %9
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %3, align 2
  br label %31

26:                                               ; preds = %18, %2
  %27 = load i16, i16* %5, align 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i16 %27, i16* %29, align 2
  %30 = load i16, i16* %5, align 2
  store i16 %30, i16* %3, align 2
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i16, i16* %3, align 2
  ret i16 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
