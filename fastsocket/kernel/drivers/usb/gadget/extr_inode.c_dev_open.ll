; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.dev_data* }
%struct.dev_data = type { i64, i32, i64 }
%struct.file = type { %struct.dev_data* }

@EBUSY = common dso_local global i32 0, align 4
@STATE_DEV_DISABLED = common dso_local global i64 0, align 8
@STATE_DEV_OPENED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dev_data*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.dev_data*, %struct.dev_data** %8, align 8
  store %struct.dev_data* %9, %struct.dev_data** %5, align 8
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %13 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %16 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STATE_DEV_DISABLED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %22 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @STATE_DEV_OPENED, align 8
  %24 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %25 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.dev_data* %26, %struct.dev_data** %28, align 8
  %29 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %30 = call i32 @get_dev(%struct.dev_data* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %20, %2
  %32 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %33 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @get_dev(%struct.dev_data*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
