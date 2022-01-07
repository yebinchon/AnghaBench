; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_init_gfxdevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_init_gfxdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, i32 }

@SISUSB_PCI_MEMBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_MMIOBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_IOPORTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32)* @sisusb_init_gfxdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_init_gfxdevice(%struct.sisusb_usb_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sisusb_usb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %10 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %15 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %14, i32 16, i32* %8)
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, -16
  %25 = load i32, i32* @SISUSB_PCI_MEMBASE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %32 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %31, i32 20, i32* %8)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %110

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, -16
  %42 = load i32, i32* @SISUSB_PCI_MMIOBASE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %49 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %48, i32 24, i32* %8)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %110

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, -16
  %59 = load i32, i32* @SISUSB_PCI_IOPORTBASE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %67 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %84

73:                                               ; preds = %70, %65
  %74 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %75 = call i32 @sisusb_do_init_gfxdevice(%struct.sisusb_usb_data* %74)
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %82 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %86 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %91 = call i64 @sisusb_init_gfxcore(%struct.sisusb_usb_data* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %95 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  %96 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %97 = call i32 @sisusb_get_ramconfig(%struct.sisusb_usb_data* %96)
  %98 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %99 = call i32 @sisusb_set_default_mode(%struct.sisusb_usb_data* %98, i32 1)
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @sisusb_setup_screen(%struct.sisusb_usb_data* %102, i32 1, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %93, %89
  br label %108

108:                                              ; preds = %107, %84
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %54, %37, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @sisusb_read_pci_config(%struct.sisusb_usb_data*, i32, i32*) #1

declare dso_local i32 @sisusb_do_init_gfxdevice(%struct.sisusb_usb_data*) #1

declare dso_local i64 @sisusb_init_gfxcore(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_get_ramconfig(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_set_default_mode(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @sisusb_setup_screen(%struct.sisusb_usb_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
