; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw_card_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_card_shutdown(%struct.hw* %0) #0 {
  %2 = alloca %struct.hw*, align 8
  store %struct.hw* %0, %struct.hw** %2, align 8
  %3 = load %struct.hw*, %struct.hw** %2, align 8
  %4 = getelementptr inbounds %struct.hw, %struct.hw* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.hw*, %struct.hw** %2, align 8
  %9 = getelementptr inbounds %struct.hw, %struct.hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hw*, %struct.hw** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.hw* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.hw*, %struct.hw** %2, align 8
  %15 = getelementptr inbounds %struct.hw, %struct.hw* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.hw*, %struct.hw** %2, align 8
  %17 = getelementptr inbounds %struct.hw, %struct.hw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.hw*, %struct.hw** %2, align 8
  %22 = getelementptr inbounds %struct.hw, %struct.hw* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @iounmap(i8* %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.hw*, %struct.hw** %2, align 8
  %28 = getelementptr inbounds %struct.hw, %struct.hw* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.hw*, %struct.hw** %2, align 8
  %30 = getelementptr inbounds %struct.hw, %struct.hw* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.hw*, %struct.hw** %2, align 8
  %35 = getelementptr inbounds %struct.hw, %struct.hw* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_release_regions(i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.hw*, %struct.hw** %2, align 8
  %40 = getelementptr inbounds %struct.hw, %struct.hw* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.hw*, %struct.hw** %2, align 8
  %42 = getelementptr inbounds %struct.hw, %struct.hw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_disable_device(i32 %43)
  ret i32 0
}

declare dso_local i32 @free_irq(i32, %struct.hw*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
