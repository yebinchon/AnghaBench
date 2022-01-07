; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32 }
%struct.urb = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ehci_iso_stream = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't get iso stream\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"can't change iso interval %d --> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't init sitds\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.urb*, i32)* @sitd_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sitd_submit(%struct.ehci_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ehci_iso_stream*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %14 = load %struct.urb*, %struct.urb** %6, align 8
  %15 = call %struct.ehci_iso_stream* @iso_stream_find(%struct.ehci_hcd* %13, %struct.urb* %14)
  store %struct.ehci_iso_stream* %15, %struct.ehci_iso_stream** %10, align 8
  %16 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %17 = icmp eq %struct.ehci_iso_stream* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %20 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %112

23:                                               ; preds = %3
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %28 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %33 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %34 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %38)
  br label %103

40:                                               ; preds = %23
  %41 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %43 = load %struct.urb*, %struct.urb** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @sitd_urb_transaction(%struct.ehci_iso_stream* %41, %struct.ehci_hcd* %42, %struct.urb* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %50 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %103

51:                                               ; preds = %40
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %53 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %52, i32 0, i32 1
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %57 = call i32 @ehci_to_hcd(%struct.ehci_hcd* %56)
  %58 = call i32 @HCD_HW_ACCESSIBLE(i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @ESHUTDOWN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %98

67:                                               ; preds = %51
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %69 = call i32 @ehci_to_hcd(%struct.ehci_hcd* %68)
  %70 = load %struct.urb*, %struct.urb** %6, align 8
  %71 = call i32 @usb_hcd_link_urb_to_ep(i32 %69, %struct.urb* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %98

76:                                               ; preds = %67
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %80 = call i32 @iso_stream_schedule(%struct.ehci_hcd* %77, %struct.urb* %78, %struct.ehci_iso_stream* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %85 = load %struct.urb*, %struct.urb** %6, align 8
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %87 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 3
  %90 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %91 = call i32 @sitd_link_urb(%struct.ehci_hcd* %84, %struct.urb* %85, i32 %89, %struct.ehci_iso_stream* %90)
  br label %97

92:                                               ; preds = %76
  %93 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %94 = call i32 @ehci_to_hcd(%struct.ehci_hcd* %93)
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %94, %struct.urb* %95)
  br label %97

97:                                               ; preds = %92, %83
  br label %98

98:                                               ; preds = %97, %75, %64
  %99 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %100 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %99, i32 0, i32 1
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %48, %31
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %108 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %10, align 8
  %109 = call i32 @iso_stream_put(%struct.ehci_hcd* %107, %struct.ehci_iso_stream* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.ehci_iso_stream* @iso_stream_find(%struct.ehci_hcd*, %struct.urb*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i32 @sitd_urb_transaction(%struct.ehci_iso_stream*, %struct.ehci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(i32) #1

declare dso_local i32 @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(i32, %struct.urb*) #1

declare dso_local i32 @iso_stream_schedule(%struct.ehci_hcd*, %struct.urb*, %struct.ehci_iso_stream*) #1

declare dso_local i32 @sitd_link_urb(%struct.ehci_hcd*, %struct.urb*, i32, %struct.ehci_iso_stream*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iso_stream_put(%struct.ehci_hcd*, %struct.ehci_iso_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
