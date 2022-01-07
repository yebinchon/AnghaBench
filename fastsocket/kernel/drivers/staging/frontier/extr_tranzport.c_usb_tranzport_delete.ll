; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_tranzport = type { %struct.usb_tranzport*, %struct.usb_tranzport*, %struct.usb_tranzport*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dev_attr_enable = common dso_local global i32 0, align 4
@dev_attr_offline = common dso_local global i32 0, align 4
@dev_attr_compress_wheel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_tranzport*)* @usb_tranzport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_tranzport_delete(%struct.usb_tranzport* %0) #0 {
  %2 = alloca %struct.usb_tranzport*, align 8
  store %struct.usb_tranzport* %0, %struct.usb_tranzport** %2, align 8
  %3 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %4 = call i32 @usb_tranzport_abort_transfers(%struct.usb_tranzport* %3)
  %5 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %6 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %11 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_attr_enable)
  %15 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %16 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @device_remove_file(i32* %18, i32* @dev_attr_offline)
  %20 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %21 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @device_remove_file(i32* %23, i32* @dev_attr_compress_wheel)
  br label %25

25:                                               ; preds = %9, %1
  %26 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %27 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_free_urb(i32 %28)
  %30 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %31 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_free_urb(i32 %32)
  %34 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %35 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %34, i32 0, i32 2
  %36 = load %struct.usb_tranzport*, %struct.usb_tranzport** %35, align 8
  %37 = call i32 @kfree(%struct.usb_tranzport* %36)
  %38 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %39 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %38, i32 0, i32 1
  %40 = load %struct.usb_tranzport*, %struct.usb_tranzport** %39, align 8
  %41 = call i32 @kfree(%struct.usb_tranzport* %40)
  %42 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %43 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %42, i32 0, i32 0
  %44 = load %struct.usb_tranzport*, %struct.usb_tranzport** %43, align 8
  %45 = call i32 @kfree(%struct.usb_tranzport* %44)
  %46 = load %struct.usb_tranzport*, %struct.usb_tranzport** %2, align 8
  %47 = call i32 @kfree(%struct.usb_tranzport* %46)
  ret void
}

declare dso_local i32 @usb_tranzport_abort_transfers(%struct.usb_tranzport*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.usb_tranzport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
