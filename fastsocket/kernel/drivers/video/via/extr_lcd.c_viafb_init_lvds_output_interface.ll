; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_viafb_init_lvds_output_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_viafb_init_lvds_output_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lvds_chip_information = type { i64, i32 }
%struct.lvds_setting_information = type { i32 }

@INTERFACE_NONE = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@INTERFACE_DVP1 = common dso_local global i64 0, align 8
@INTERFACE_DFP_LOW = common dso_local global i8* null, align 8
@INTERFACE_DVP0 = common dso_local global i64 0, align 8
@INTERFACE_DFP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_init_lvds_output_interface(%struct.lvds_chip_information* %0, %struct.lvds_setting_information* %1) #0 {
  %3 = alloca %struct.lvds_chip_information*, align 8
  %4 = alloca %struct.lvds_setting_information*, align 8
  store %struct.lvds_chip_information* %0, %struct.lvds_chip_information** %3, align 8
  store %struct.lvds_setting_information* %1, %struct.lvds_setting_information** %4, align 8
  %5 = load i64, i64* @INTERFACE_NONE, align 8
  %6 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %7 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %55

11:                                               ; preds = %2
  %12 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %13 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %39 [
    i32 128, label %15
    i32 134, label %35
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 132, label %21
    i32 133, label %25
  ]

21:                                               ; preds = %15
  %22 = load i64, i64* @INTERFACE_DVP1, align 8
  %23 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %24 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %34

25:                                               ; preds = %15
  %26 = load i8*, i8** @INTERFACE_DFP_LOW, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %29 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %15
  %31 = load i64, i64* @INTERFACE_DVP0, align 8
  %32 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %33 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25, %21
  br label %55

35:                                               ; preds = %11
  %36 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %37 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %4, align 8
  %38 = call i32 @check_diport_of_integrated_lvds(%struct.lvds_chip_information* %36, %struct.lvds_setting_information* %37)
  br label %55

39:                                               ; preds = %11
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %50 [
    i32 131, label %45
    i32 129, label %45
    i32 130, label %45
  ]

45:                                               ; preds = %39, %39, %39
  %46 = load i8*, i8** @INTERFACE_DFP_LOW, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %49 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %54

50:                                               ; preds = %39
  %51 = load i64, i64* @INTERFACE_DFP, align 8
  %52 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %3, align 8
  %53 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %10, %54, %35, %34
  ret void
}

declare dso_local i32 @check_diport_of_integrated_lvds(%struct.lvds_chip_information*, %struct.lvds_setting_information*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
