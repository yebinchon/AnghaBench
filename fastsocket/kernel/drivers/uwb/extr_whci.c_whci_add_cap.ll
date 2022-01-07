; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_add_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_add_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whci_card = type { %struct.umc_dev**, %struct.TYPE_6__*, i64 }
%struct.umc_dev = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whci_card*, i32)* @whci_add_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whci_add_cap(%struct.whci_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.whci_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.umc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.whci_card* %0, %struct.whci_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %11 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.umc_dev* @umc_device_create(i32* %13, i32 %14)
  store %struct.umc_dev* %15, %struct.umc_dev** %6, align 8
  %16 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %17 = icmp eq %struct.umc_dev* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %134

21:                                               ; preds = %2
  %22 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %23 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @UWBCAPDATA(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @le_readq(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @UWBCAPDATA_TO_BAR(i32 %29)
  %31 = shl i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @whci_capdata_quirks(%struct.whci_card* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @UWBCAPDATA_TO_VERSION(i32 %35)
  %37 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %38 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  br label %45

42:                                               ; preds = %21
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @UWBCAPDATA_TO_CAP_ID(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ 0, %41 ], [ %44, %42 ]
  %47 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %48 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %51 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %53 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pci_resource_start(%struct.TYPE_6__* %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @UWBCAPDATA_TO_OFFSET(i32 %57)
  %59 = add nsw i32 %56, %58
  %60 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %61 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %64 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  br label %73

70:                                               ; preds = %45
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @UWBCAPDATA_TO_SIZE(i32 %71)
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i32 [ 32, %69 ], [ %72, %70 ]
  %75 = add nsw i32 %66, %74
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %78 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %81 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %80, i32 0, i32 3
  %82 = call i32 @dev_name(i32* %81)
  %83 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %84 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %87 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %97 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 8
  %99 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %100 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %108 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %109, align 8
  %110 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %111 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %116 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %118 = call i32 @umc_device_register(%struct.umc_dev* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %73
  br label %130

122:                                              ; preds = %73
  %123 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %124 = load %struct.whci_card*, %struct.whci_card** %4, align 8
  %125 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %124, i32 0, i32 0
  %126 = load %struct.umc_dev**, %struct.umc_dev*** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.umc_dev*, %struct.umc_dev** %126, i64 %128
  store %struct.umc_dev* %123, %struct.umc_dev** %129, align 8
  store i32 0, i32* %3, align 4
  br label %134

130:                                              ; preds = %121
  %131 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %132 = call i32 @kfree(%struct.umc_dev* %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %122, %18
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.umc_dev* @umc_device_create(i32*, i32) #1

declare dso_local i32 @le_readq(i64) #1

declare dso_local i64 @UWBCAPDATA(i32) #1

declare dso_local i32 @UWBCAPDATA_TO_BAR(i32) #1

declare dso_local i32 @whci_capdata_quirks(%struct.whci_card*, i32) #1

declare dso_local i32 @UWBCAPDATA_TO_VERSION(i32) #1

declare dso_local i32 @UWBCAPDATA_TO_CAP_ID(i32) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @UWBCAPDATA_TO_OFFSET(i32) #1

declare dso_local i32 @UWBCAPDATA_TO_SIZE(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @umc_device_register(%struct.umc_dev*) #1

declare dso_local i32 @kfree(%struct.umc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
