; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_capdata_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_capdata_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whci_card = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i32, i32, i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"PCI v%04x d%04x c%06x#%02x: corrected capdata from %016Lx to %016Lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whci_card*, i32)* @whci_capdata_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whci_capdata_quirks(%struct.whci_card* %0, i32 %1) #0 {
  %3 = alloca %struct.whci_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.whci_card* %0, %struct.whci_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %9 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 3131
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %43

26:                                               ; preds = %21, %16
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 856080
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @UWBCAPDATA_TO_CAP_ID(i32 %32)
  switch i32 %33, label %42 [
    i32 128, label %34
    i32 2, label %37
  ]

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, 16384
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -65536
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 8193
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %37, %34
  br label %43

43:                                               ; preds = %42, %26, %21, %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 3
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @UWBCAPDATA_TO_CAP_ID(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55, i32 %58, i32 %60, i64 %62, i64 %64)
  br label %66

66:                                               ; preds = %47, %43
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @UWBCAPDATA_TO_CAP_ID(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
