; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_device_main.c_device_get_pci_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_device_main.c_device_get_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.pci_dev*, i8*, i8*, i32, i32 }
%struct.pci_dev = type { i32 }

@PCI_REVISION_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pci_dev*)* @device_get_pci_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_get_pci_info(%struct.TYPE_3__* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @PCI_REVISION_ID, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @pci_read_config_byte(%struct.pci_dev* %8, i32 %9, i32* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %13, i32 %14, i32* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i32, i32* @PCI_SUBSYSTEM_VENDOR_ID, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = call i32 @pci_read_config_word(%struct.pci_dev* %18, i32 %19, i32* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* @PCI_COMMAND, align 4
  %25 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i32 %24, i32* %5)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_set_master(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i8* @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i8* @pci_resource_start(%struct.pci_dev* %32, i32 1)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i8* @pci_resource_start(%struct.pci_dev* %36, i32 2)
  store i8* %37, i8** %7, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store %struct.pci_dev* %38, %struct.pci_dev** %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @PCI_COMMAND, align 4
  %43 = call i32 @pci_read_config_byte(%struct.pci_dev* %41, i32 %42, i32* %6)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @PCI_COMMAND, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @pci_write_config_byte(%struct.pci_dev* %44, i32 %45, i32 %48)
  %50 = load i32, i32* @TRUE, align 4
  ret i32 %50
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
