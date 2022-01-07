; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@audio_devs = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @waveartist_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveartist_set_speed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %7, i64 %9
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 5000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 5000, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 44100
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 44100, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
