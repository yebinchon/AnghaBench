; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_setup.c_nv10GetConfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_setup.c_nv10GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32, i32, i32, i32, i64, i32*, i32, i64, i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*)* @nv10GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10GetConfig(%struct.nvidia_par* %0) #0 {
  %2 = alloca %struct.nvidia_par*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %2, align 8
  %7 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %8 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 4080
  store i32 %10, i32* %4, align 4
  %11 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %13 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 416
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i32 124, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 6
  %22 = and i32 %21, 31
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 %23, 1024
  %25 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %26 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %29 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 496
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 132, i32* %6)
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 127
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, 1024
  %41 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %42 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %52

43:                                               ; preds = %27
  %44 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %45 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @NV_RD32(i32 %46, i32 524)
  %48 = and i32 %47, -1048576
  %49 = lshr i32 %48, 10
  %50 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %51 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %33
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pci_dev_put(%struct.pci_dev* %54)
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %57 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @NV_RD32(i32 %58, i32 0)
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 14318, i32 13500
  %64 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %65 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %67 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %53
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 272
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %75 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @NV_RD32(i32 %76, i32 0)
  %78 = and i32 %77, 4194304
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %82 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %81, i32 0, i32 2
  store i32 27000, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %70, %53
  %85 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %86 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %85, i32 0, i32 6
  store i32* null, i32** %86, align 8
  %87 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %88 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %87, i32 0, i32 3
  store i32 12000, i32* %88, align 4
  %89 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %90 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 400000, i32 350000
  %95 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %96 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
