; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_gadgetfs_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dev_data = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"suspended from state %d\0A\00", align 1
@GADGETFS_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*)* @gadgetfs_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gadgetfs_suspend(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.dev_data*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = call %struct.dev_data* @get_gadget_data(%struct.usb_gadget* %4)
  store %struct.dev_data* %5, %struct.dev_data** %3, align 8
  %6 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %7 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %8 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @INFO(%struct.dev_data* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %12 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %15 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 130, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %1, %1, %1
  %18 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %19 = load i32, i32* @GADGETFS_SUSPEND, align 4
  %20 = call i32 @next_event(%struct.dev_data* %18, i32 %19)
  %21 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %22 = call i32 @ep0_readable(%struct.dev_data* %21)
  br label %23

23:                                               ; preds = %1, %17
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %26 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local %struct.dev_data* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @next_event(%struct.dev_data*, i32) #1

declare dso_local i32 @ep0_readable(%struct.dev_data*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
