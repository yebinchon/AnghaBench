; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv10GetConfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv10GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@NV_CHIP_IGEFORCE2 = common dso_local global i32 0, align 4
@NV_CHIP_0x01F0 = common dso_local global i32 0, align 4
@nv10Busy = common dso_local global i32 0, align 4
@ShowHideCursor = common dso_local global i32 0, align 4
@LoadStateExt = common dso_local global i32 0, align 4
@UnloadStateExt = common dso_local global i32 0, align 4
@SetStartAddress = common dso_local global i32 0, align 4
@nv10SetSurfaces2D = common dso_local global i32 0, align 4
@nv10SetSurfaces3D = common dso_local global i32 0, align 4
@nv4LockUnlock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @nv10GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10GetConfig(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NV_CHIP_IGEFORCE2, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = call i32 @pci_read_config_dword(%struct.pci_dev* %12, i32 124, i32* %6)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = call i32 @pci_dev_put(%struct.pci_dev* %14)
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 31
  %19 = add nsw i32 %18, 1
  %20 = mul nsw i32 %19, 1024
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NV_CHIP_0x01F0, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %28, %struct.pci_dev** %5, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i32 132, i32* %6)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @pci_dev_put(%struct.pci_dev* %31)
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 127
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %36, 1024
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %72

40:                                               ; preds = %23
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NV_RD32(i32 %43, i32 524)
  %45 = ashr i32 %44, 20
  %46 = and i32 %45, 255
  switch i32 %46, label %68 [
    i32 2, label %47
    i32 4, label %50
    i32 8, label %53
    i32 16, label %56
    i32 32, label %59
    i32 64, label %62
    i32 128, label %65
  ]

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 2048, i32* %49, align 8
  br label %71

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 4096, i32* %52, align 8
  br label %71

53:                                               ; preds = %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 8192, i32* %55, align 8
  br label %71

56:                                               ; preds = %40
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 16384, i32* %58, align 8
  br label %71

59:                                               ; preds = %40
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 32768, i32* %61, align 8
  br label %71

62:                                               ; preds = %40
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 65536, i32* %64, align 8
  br label %71

65:                                               ; preds = %40
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 131072, i32* %67, align 8
  br label %71

68:                                               ; preds = %40
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 16384, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %65, %62, %59, %56, %53, %50, %47
  br label %72

72:                                               ; preds = %71, %27
  br label %73

73:                                               ; preds = %72, %10
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 17
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @NV_RD32(i32 %76, i32 0)
  %78 = ashr i32 %77, 3
  %79 = and i32 %78, 3
  switch i32 %79, label %83 [
    i32 3, label %80
  ]

80:                                               ; preds = %73
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 800000, i32* %82, align 4
  br label %86

83:                                               ; preds = %73
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 1000000, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 16
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @NV_RD32(i32 %89, i32 0)
  %91 = and i32 %90, 64
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 14318, i32 13500
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, 4080
  switch i32 %98, label %110 [
    i32 368, label %99
    i32 384, label %99
    i32 496, label %99
    i32 592, label %99
    i32 640, label %99
    i32 768, label %99
    i32 784, label %99
    i32 800, label %99
    i32 816, label %99
    i32 832, label %99
  ]

99:                                               ; preds = %86, %86, %86, %86, %86, %86, %86, %86, %86, %86
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 16
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @NV_RD32(i32 %102, i32 0)
  %104 = and i32 %103, 4194304
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 27000, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %99
  br label %111

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %109
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 128
  %116 = mul nsw i32 %115, 1024
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 15
  store i32* null, i32** %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  store i32 350000, i32* %124, align 4
  %125 = load i32, i32* @nv10Busy, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 14
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @ShowHideCursor, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 13
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @LoadStateExt, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 12
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @UnloadStateExt, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @SetStartAddress, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 10
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @nv10SetSurfaces2D, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 9
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @nv10SetSurfaces3D, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @nv4LockUnlock, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %4, align 4
  %150 = and i32 %149, 4080
  switch i32 %150, label %155 [
    i32 272, label %151
    i32 368, label %151
    i32 384, label %151
    i32 496, label %151
    i32 592, label %151
    i32 640, label %151
    i32 768, label %151
    i32 784, label %151
    i32 800, label %151
    i32 816, label %151
    i32 832, label %151
  ]

151:                                              ; preds = %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111
  %152 = load i32, i32* @TRUE, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  br label %159

155:                                              ; preds = %111
  %156 = load i32, i32* @FALSE, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %151
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
