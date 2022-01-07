; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nForceUpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nForceUpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.TYPE_9__*)* @nForceUpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nForceUpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pci_dev*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  %22 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 3)
  store %struct.pci_dev* %22, %struct.pci_dev** %20, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i32 108, i32* %19)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %26 = call i32 @pci_dev_put(%struct.pci_dev* %25)
  %27 = load i32, i32* %19, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 15
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store i32 4, i32* %19, align 4
  br label %33

33:                                               ; preds = %32, %5
  %34 = load i32, i32* %19, align 4
  %35 = udiv i32 400000, %34
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 320
  %40 = call i32 @NV_RD32(i32* %39, i32 0)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = lshr i32 %41, 0
  %43 = and i32 %42, 255
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %16, align 4
  %45 = lshr i32 %44, 8
  %46 = and i32 %45, 255
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 15
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul i32 %50, %53
  %55 = load i32, i32* %13, align 4
  %56 = udiv i32 %54, %55
  %57 = load i32, i32* %15, align 4
  %58 = lshr i32 %56, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %7, align 4
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i8 %60, i8* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 11
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 10
  store i64 0, i64* %63, align 8
  %64 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %64, %struct.pci_dev** %20, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %67 = call i32 @pci_read_config_dword(%struct.pci_dev* %65, i32 124, i32* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %69 = call i32 @pci_dev_put(%struct.pci_dev* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = lshr i32 %71, 12
  %73 = and i32 %72, 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 64, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i32 3, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 10, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* %17, align 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %18, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  store i32 %84, i32* %85, align 8
  %86 = call i32 @nv10CalcArbitration(%struct.TYPE_8__* %11, %struct.TYPE_7__* %12)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %33
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 4
  store i32 %93, i32* %21, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %99, %90
  %96 = load i32, i32* %21, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %21, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %95

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 3
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %33
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @NV_RD32(i32*, i32) #1

declare dso_local i32 @nv10CalcArbitration(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
