; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_init_alauda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_init_alauda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.alauda_info = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"init_alauda: Gah! Can't allocate storage foralauda info struct!\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@alauda_info_destructor = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @init_alauda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_alauda(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.alauda_info*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  store %struct.usb_host_interface* %10, %struct.usb_host_interface** %5, align 8
  %11 = call i32 (...) @nand_init_ecc()
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call i64 @kzalloc(i32 4, i32 %12)
  %14 = load %struct.us_data*, %struct.us_data** %3, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.us_data*, %struct.us_data** %3, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.alauda_info*
  store %struct.alauda_info* %27, %struct.alauda_info** %4, align 8
  %28 = load i32, i32* @alauda_info_destructor, align 4
  %29 = load %struct.us_data*, %struct.us_data** %3, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.us_data*, %struct.us_data** %3, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @usb_sndbulkpipe(i32 %33, i32 %42)
  %44 = load %struct.alauda_info*, %struct.alauda_info** %4, align 8
  %45 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %23, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @nand_init_ecc(...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
