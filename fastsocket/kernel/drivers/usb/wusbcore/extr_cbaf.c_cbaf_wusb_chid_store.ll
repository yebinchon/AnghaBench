; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_wusb_chid_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_wusb_chid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cbaf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [112 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cbaf_wusb_chid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_wusb_chid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.cbaf*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.usb_interface* @to_usb_interface(%struct.device* %13)
  store %struct.usb_interface* %14, %struct.usb_interface** %11, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %16 = call %struct.cbaf* @usb_get_intfdata(%struct.usb_interface* %15)
  store %struct.cbaf* %16, %struct.cbaf** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %19 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %24 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %29 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %34 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %39 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %44 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %49 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  %53 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %54 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %59 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %64 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 9
  %68 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %69 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 10
  %73 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %74 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 11
  %78 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %79 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 12
  %83 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %84 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 13
  %88 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %89 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 14
  %93 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %94 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 15
  %98 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i32* %22, i32* %27, i32* %32, i32* %37, i32* %42, i32* %47, i32* %52, i32* %57, i32* %62, i32* %67, i32* %72, i32* %77, i32* %82, i32* %87, i32* %92, i32* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 16
  br i1 %100, label %101, label %104

101:                                              ; preds = %4
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %122

104:                                              ; preds = %4
  %105 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %106 = call i32 @cbaf_send_host_info(%struct.cbaf* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %122

111:                                              ; preds = %104
  %112 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %113 = call i32 @cbaf_cdid_get(%struct.cbaf* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %122

119:                                              ; preds = %111
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %119, %116, %109, %101
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.cbaf* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cbaf_send_host_info(%struct.cbaf*) #1

declare dso_local i32 @cbaf_cdid_get(%struct.cbaf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
