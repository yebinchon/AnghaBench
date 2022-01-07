; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.cxacru_data* }
%struct.cxacru_data = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"cxacru_unbind entered\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cxacru_unbind: NULL instance!\00", align 1
@CXPOLL_SHUTDOWN = common dso_local global i64 0, align 8
@CXPOLL_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbatm_data*, %struct.usb_interface*)* @cxacru_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxacru_unbind(%struct.usbatm_data* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbatm_data*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cxacru_data*, align 8
  %6 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %8 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %7, i32 0, i32 0
  %9 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  store %struct.cxacru_data* %9, %struct.cxacru_data** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %12 = icmp ne %struct.cxacru_data* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %17 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %16, i32 0, i32 6
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %20 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CXPOLL_SHUTDOWN, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %27 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CXPOLL_STOPPED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i64, i64* @CXPOLL_SHUTDOWN, align 8
  %34 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %35 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %37 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %36, i32 0, i32 6
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %43 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %42, i32 0, i32 5
  %44 = call i32 @cancel_rearming_delayed_work(i32* %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %47 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_kill_urb(i32 %48)
  %50 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %51 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_kill_urb(i32 %52)
  %54 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %55 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_free_urb(i32 %56)
  %58 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %59 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @usb_free_urb(i32 %60)
  %62 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %63 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @free_page(i64 %64)
  %66 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %67 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @free_page(i64 %68)
  %70 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %71 = call i32 @kfree(%struct.cxacru_data* %70)
  %72 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %73 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %72, i32 0, i32 0
  store %struct.cxacru_data* null, %struct.cxacru_data** %73, align 8
  br label %74

74:                                               ; preds = %45, %13
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_rearming_delayed_work(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.cxacru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
