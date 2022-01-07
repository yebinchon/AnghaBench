; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_net2280_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_net2280_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.net2280 = type { %struct.TYPE_4__, i64, i64, i64, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@dev_attr_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unbind\0A\00", align 1
@the_controller = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @net2280_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2280_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net2280*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net2280* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net2280* %6, %struct.net2280** %3, align 8
  %7 = load %struct.net2280*, %struct.net2280** %3, align 8
  %8 = getelementptr inbounds %struct.net2280, %struct.net2280* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.net2280*, %struct.net2280** %3, align 8
  %12 = call i32 @net2280_led_shutdown(%struct.net2280* %11)
  %13 = load %struct.net2280*, %struct.net2280** %3, align 8
  %14 = getelementptr inbounds %struct.net2280, %struct.net2280* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load %struct.net2280*, %struct.net2280** %3, align 8
  %23 = getelementptr inbounds %struct.net2280, %struct.net2280* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %53

32:                                               ; preds = %21
  %33 = load %struct.net2280*, %struct.net2280** %3, align 8
  %34 = getelementptr inbounds %struct.net2280, %struct.net2280* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.net2280*, %struct.net2280** %3, align 8
  %37 = getelementptr inbounds %struct.net2280, %struct.net2280* %36, i32 0, i32 6
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net2280*, %struct.net2280** %3, align 8
  %45 = getelementptr inbounds %struct.net2280, %struct.net2280* %44, i32 0, i32 6
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pci_pool_free(i64 %35, i32 %43, i32 %51)
  br label %53

53:                                               ; preds = %32, %31
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.net2280*, %struct.net2280** %3, align 8
  %58 = getelementptr inbounds %struct.net2280, %struct.net2280* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pci_pool_destroy(i64 %59)
  br label %61

61:                                               ; preds = %56, %1
  %62 = load %struct.net2280*, %struct.net2280** %3, align 8
  %63 = getelementptr inbounds %struct.net2280, %struct.net2280* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net2280*, %struct.net2280** %3, align 8
  %71 = call i32 @free_irq(i32 %69, %struct.net2280* %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.net2280*, %struct.net2280** %3, align 8
  %74 = getelementptr inbounds %struct.net2280, %struct.net2280* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.net2280*, %struct.net2280** %3, align 8
  %79 = getelementptr inbounds %struct.net2280, %struct.net2280* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @iounmap(i64 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.net2280*, %struct.net2280** %3, align 8
  %84 = getelementptr inbounds %struct.net2280, %struct.net2280* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %89 = call i32 @pci_resource_start(%struct.pci_dev* %88, i32 0)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = call i32 @pci_resource_len(%struct.pci_dev* %90, i32 0)
  %92 = call i32 @release_mem_region(i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.net2280*, %struct.net2280** %3, align 8
  %95 = getelementptr inbounds %struct.net2280, %struct.net2280* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %100 = call i32 @pci_disable_device(%struct.pci_dev* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.net2280*, %struct.net2280** %3, align 8
  %103 = getelementptr inbounds %struct.net2280, %struct.net2280* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @device_unregister(i32* %104)
  %106 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = call i32 @device_remove_file(i32* %107, i32* @dev_attr_registers)
  %109 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %110 = call i32 @pci_set_drvdata(%struct.pci_dev* %109, i32* null)
  %111 = load %struct.net2280*, %struct.net2280** %3, align 8
  %112 = call i32 @INFO(%struct.net2280* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** @the_controller, align 8
  ret void
}

declare dso_local %struct.net2280* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @net2280_led_shutdown(%struct.net2280*) #1

declare dso_local i32 @pci_pool_free(i64, i32, i32) #1

declare dso_local i32 @pci_pool_destroy(i64) #1

declare dso_local i32 @free_irq(i32, %struct.net2280*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @INFO(%struct.net2280*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
