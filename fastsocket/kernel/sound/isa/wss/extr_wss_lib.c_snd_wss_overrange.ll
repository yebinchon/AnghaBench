; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_overrange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_overrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CS4231_TEST_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_wss_overrange(%struct.snd_wss* %0) #0 {
  %2 = alloca %struct.snd_wss*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store %struct.snd_wss* %0, %struct.snd_wss** %2, align 8
  %5 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %6 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %10 = load i32, i32* @CS4231_TEST_INIT, align 4
  %11 = call zeroext i8 @snd_wss_in(%struct.snd_wss* %9, i32 %10)
  store i8 %11, i8* %4, align 1
  %12 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %13 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i64 %14)
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 10
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.snd_wss*, %struct.snd_wss** %2, align 8
  %22 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_wss_in(%struct.snd_wss*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
