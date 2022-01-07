; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bt87x = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bt87x*)* @snd_bt87x_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_free(%struct.snd_bt87x* %0) #0 {
  %2 = alloca %struct.snd_bt87x*, align 8
  store %struct.snd_bt87x* %0, %struct.snd_bt87x** %2, align 8
  %3 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %4 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %9 = call i32 @snd_bt87x_stop(%struct.snd_bt87x* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %12 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %17 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %20 = call i32 @free_irq(i64 %18, %struct.snd_bt87x* %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %23 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %28 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iounmap(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %33 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_release_regions(i32 %34)
  %36 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %37 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pci_disable_device(i32 %38)
  %40 = load %struct.snd_bt87x*, %struct.snd_bt87x** %2, align 8
  %41 = call i32 @kfree(%struct.snd_bt87x* %40)
  ret i32 0
}

declare dso_local i32 @snd_bt87x_stop(%struct.snd_bt87x*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_bt87x*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_bt87x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
