; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dev_data = type { i64, i32 }

@STATE_DEV_UNCONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@GADGETFS_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*)* @gadgetfs_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gadgetfs_disconnect(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.dev_data*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = call %struct.dev_data* @get_gadget_data(%struct.usb_gadget* %4)
  store %struct.dev_data* %5, %struct.dev_data** %3, align 8
  %6 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %7 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %10 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATE_DEV_UNCONNECTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %26

15:                                               ; preds = %1
  %16 = load i64, i64* @STATE_DEV_UNCONNECTED, align 8
  %17 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %18 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %20 = call i32 @INFO(%struct.dev_data* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %22 = load i32, i32* @GADGETFS_DISCONNECT, align 4
  %23 = call i32 @next_event(%struct.dev_data* %21, i32 %22)
  %24 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %25 = call i32 @ep0_readable(%struct.dev_data* %24)
  br label %26

26:                                               ; preds = %15, %14
  %27 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %28 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local %struct.dev_data* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*) #1

declare dso_local i32 @next_event(%struct.dev_data*, i32) #1

declare dso_local i32 @ep0_readable(%struct.dev_data*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
