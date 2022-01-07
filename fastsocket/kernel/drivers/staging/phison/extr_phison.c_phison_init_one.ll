; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/phison/extr_phison.c_phison_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/phison/extr_phison.c_phison_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ata_port_info = type { i32, i32, i32*, i32, i32 }

@phison_ops = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i32 0, align 4
@ATA_FLAG_NO_ATAPI = common dso_local global i32 0, align 4
@phison_sht = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"phison_init_one(), ret = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @phison_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phison_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_port_info, align 8
  %7 = alloca [2 x %struct.ata_port_info*], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %6, i32 0, i32 0
  store i32 31, i32* %8, align 8
  %9 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %6, i32 0, i32 1
  store i32 7, i32* %9, align 4
  %10 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %6, i32 0, i32 2
  store i32* @phison_ops, i32** %10, align 8
  %11 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %6, i32 0, i32 3
  %12 = load i32, i32* @ATA_UDMA5, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %6, i32 0, i32 4
  %14 = load i32, i32* @ATA_FLAG_NO_ATAPI, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %7, i64 0, i64 0
  store %struct.ata_port_info* %6, %struct.ata_port_info** %15, align 8
  %16 = getelementptr inbounds %struct.ata_port_info*, %struct.ata_port_info** %15, i64 1
  store %struct.ata_port_info* null, %struct.ata_port_info** %16, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds [2 x %struct.ata_port_info*], [2 x %struct.ata_port_info*]* %7, i64 0, i64 0
  %19 = call i32 @ata_pci_sff_init_one(%struct.pci_dev* %17, %struct.ata_port_info** %18, i32* @phison_sht, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @ata_pci_sff_init_one(%struct.pci_dev*, %struct.ata_port_info**, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
