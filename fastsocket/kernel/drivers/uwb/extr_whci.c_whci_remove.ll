; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.whci_card = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @whci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.whci_card*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.whci_card* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.whci_card* %6, %struct.whci_card** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call i32 @pci_set_drvdata(%struct.pci_dev* %7, i32* null)
  %9 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %10 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %19, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @whci_del_cap(%struct.whci_card* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %25 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pci_iounmap(%struct.pci_dev* %23, i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %31 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UWBCAPDATA_SIZE(i32 %32)
  %34 = call i32 @release_mem_region(i32 %29, i32 %33)
  %35 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %36 = call i32 @kfree(%struct.whci_card* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_disable_msi(%struct.pci_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  ret void
}

declare dso_local %struct.whci_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @whci_del_cap(%struct.whci_card*, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @UWBCAPDATA_SIZE(i32) #1

declare dso_local i32 @kfree(%struct.whci_card*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
