; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_ep = type { i32, i32, i32, %struct.TYPE_3__, %struct.at91_udc* }
%struct.TYPE_3__ = type { i32 }
%struct.at91_udc = type { i32 }
%struct.at91_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_3__*, %struct.TYPE_4__*)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s done %p, status %d\0A\00", align 1
@AT91_UDP_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_ep*, %struct.at91_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.at91_ep* %0, %struct.at91_request* %1, i32 %2) #0 {
  %4 = alloca %struct.at91_ep*, align 8
  %5 = alloca %struct.at91_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.at91_udc*, align 8
  store %struct.at91_ep* %0, %struct.at91_ep** %4, align 8
  store %struct.at91_request* %1, %struct.at91_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %10 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %13 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %12, i32 0, i32 4
  %14 = load %struct.at91_udc*, %struct.at91_udc** %13, align 8
  store %struct.at91_udc* %14, %struct.at91_udc** %8, align 8
  %15 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %16 = getelementptr inbounds %struct.at91_request, %struct.at91_request* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %19 = getelementptr inbounds %struct.at91_request, %struct.at91_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %28 = getelementptr inbounds %struct.at91_request, %struct.at91_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %32 = getelementptr inbounds %struct.at91_request, %struct.at91_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ESHUTDOWN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %45 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @VDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47, %struct.at91_request* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %38, %35
  %52 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %53 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %55 = getelementptr inbounds %struct.at91_request, %struct.at91_request* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_3__*, %struct.TYPE_4__*)*, i32 (%struct.TYPE_3__*, %struct.TYPE_4__*)** %56, align 8
  %58 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %59 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %58, i32 0, i32 3
  %60 = load %struct.at91_request*, %struct.at91_request** %5, align 8
  %61 = getelementptr inbounds %struct.at91_request, %struct.at91_request* %60, i32 0, i32 0
  %62 = call i32 %57(%struct.TYPE_3__* %59, %struct.TYPE_4__* %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %65 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %67 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %66, i32 0, i32 2
  %68 = call i64 @list_empty(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %51
  %71 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %72 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.at91_udc*, %struct.at91_udc** %8, align 8
  %77 = load i32, i32* @AT91_UDP_IDR, align 4
  %78 = load %struct.at91_ep*, %struct.at91_ep** %4, align 8
  %79 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @at91_udp_write(%struct.at91_udc* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %75, %70, %51
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @VDBG(i8*, i32, %struct.at91_request*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @at91_udp_write(%struct.at91_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
