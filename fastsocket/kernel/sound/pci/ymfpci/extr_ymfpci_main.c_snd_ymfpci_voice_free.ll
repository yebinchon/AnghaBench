; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_voice_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_voice_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, i32 }
%struct.snd_ymfpci_voice = type { i32, i32*, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*, %struct.snd_ymfpci_voice*)* @snd_ymfpci_voice_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_voice_free(%struct.snd_ymfpci* %0, %struct.snd_ymfpci_voice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca %struct.snd_ymfpci_voice*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %4, align 8
  store %struct.snd_ymfpci_voice* %1, %struct.snd_ymfpci_voice** %5, align 8
  %7 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %8 = icmp ne %struct.snd_ymfpci_voice* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %18 = call i32 @snd_ymfpci_hw_stop(%struct.snd_ymfpci* %17)
  %19 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %16
  %38 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %46, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %37, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ymfpci_hw_stop(%struct.snd_ymfpci*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
