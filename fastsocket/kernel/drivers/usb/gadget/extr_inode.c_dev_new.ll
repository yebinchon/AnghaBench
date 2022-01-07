; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_dev_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@STATE_DEV_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dev_data* ()* @dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dev_data* @dev_new() #0 {
  %1 = alloca %struct.dev_data*, align 8
  %2 = alloca %struct.dev_data*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.dev_data* @kzalloc(i32 20, i32 %3)
  store %struct.dev_data* %4, %struct.dev_data** %2, align 8
  %5 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %6 = icmp ne %struct.dev_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.dev_data* null, %struct.dev_data** %1, align 8
  br label %25

8:                                                ; preds = %0
  %9 = load i32, i32* @STATE_DEV_DISABLED, align 4
  %10 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %11 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %13 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %12, i32 0, i32 3
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %16 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %19 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %22 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %21, i32 0, i32 0
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  store %struct.dev_data* %24, %struct.dev_data** %1, align 8
  br label %25

25:                                               ; preds = %8, %7
  %26 = load %struct.dev_data*, %struct.dev_data** %1, align 8
  ret %struct.dev_data* %26
}

declare dso_local %struct.dev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
