; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_ep_data_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_ep_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { %struct.c67x00_ep_data* }
%struct.c67x00_ep_data = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_host_endpoint*)* @c67x00_ep_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_ep_data_free(%struct.usb_host_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_host_endpoint*, align 8
  %4 = alloca %struct.c67x00_ep_data*, align 8
  store %struct.usb_host_endpoint* %0, %struct.usb_host_endpoint** %3, align 8
  %5 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %6 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %5, i32 0, i32 0
  %7 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %6, align 8
  store %struct.c67x00_ep_data* %7, %struct.c67x00_ep_data** %4, align 8
  %8 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %4, align 8
  %9 = icmp ne %struct.c67x00_ep_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %4, align 8
  %13 = getelementptr inbounds %struct.c67x00_ep_data, %struct.c67x00_ep_data* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %11
  %20 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %4, align 8
  %21 = getelementptr inbounds %struct.c67x00_ep_data, %struct.c67x00_ep_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_put_dev(i32 %22)
  %24 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %4, align 8
  %25 = getelementptr inbounds %struct.c67x00_ep_data, %struct.c67x00_ep_data* %24, i32 0, i32 1
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %4, align 8
  %28 = getelementptr inbounds %struct.c67x00_ep_data, %struct.c67x00_ep_data* %27, i32 0, i32 0
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.c67x00_ep_data*, %struct.c67x00_ep_data** %4, align 8
  %31 = call i32 @kfree(%struct.c67x00_ep_data* %30)
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i32 0, i32 0
  store %struct.c67x00_ep_data* null, %struct.c67x00_ep_data** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %19, %16, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.c67x00_ep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
