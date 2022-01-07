; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_init_chip_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_init_chip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@IGA1 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_8__* null, align 8
@viafb_refresh = common dso_local global i32 0, align 4
@viafb_lcd_dsp_method = common dso_local global i32 0, align 4
@GET_LCD_SIZE_BY_USER_SETTING = common dso_local global i32 0, align 4
@viafb_lcd_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_init_chip_info(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %7 = call i32 @init_gfx_chip_info(%struct.pci_dev* %5, %struct.pci_device_id* %6)
  %8 = call i32 (...) @init_tmds_chip_info()
  %9 = call i32 (...) @init_lvds_chip_info()
  %10 = load i32, i32* @IGA1, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @viafb_refresh, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = call i32 (...) @viafb_set_iga_path()
  %21 = load i32, i32* @viafb_lcd_dsp_method, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @GET_LCD_SIZE_BY_USER_SETTING, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @viafb_lcd_mode, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  ret void
}

declare dso_local i32 @init_gfx_chip_info(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @init_tmds_chip_info(...) #1

declare dso_local i32 @init_lvds_chip_info(...) #1

declare dso_local i32 @viafb_set_iga_path(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
