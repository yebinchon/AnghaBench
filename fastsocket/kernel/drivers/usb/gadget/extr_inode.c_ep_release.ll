; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ep_data* }
%struct.ep_data = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@STATE_EP_UNBOUND = common dso_local global i64 0, align 8
@STATE_EP_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ep_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ep_data*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  store %struct.ep_data* %10, %struct.ep_data** %6, align 8
  %11 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %12 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %11, i32 0, i32 1
  %13 = call i32 @down_interruptible(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %19 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STATE_EP_UNBOUND, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i64, i64* @STATE_EP_DISABLED, align 8
  %25 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %26 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %28 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %31 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %34 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_ep_disable(i32 %35)
  br label %37

37:                                               ; preds = %23, %17
  %38 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %39 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %38, i32 0, i32 1
  %40 = call i32 @up(i32* %39)
  %41 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %42 = call i32 @put_ep(%struct.ep_data* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @put_ep(%struct.ep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
