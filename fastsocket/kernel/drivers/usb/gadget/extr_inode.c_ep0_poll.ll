; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep0_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep0_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dev_data* }
%struct.dev_data = type { i64, i64, i32, i64, i64, i64, i32 }

@POLLHUP = common dso_local global i32 0, align 4
@STATE_DEV_SETUP = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ep0_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dev_data*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.dev_data*, %struct.dev_data** %8, align 8
  store %struct.dev_data* %9, %struct.dev_data** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %12 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %11, i32 0, i32 6
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  %15 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %16 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %19 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %24 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @POLLHUP, align 4
  store i32 %25, i32* %6, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %28 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATE_DEV_SETUP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %34 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %39 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @POLLOUT, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %37
  br label %53

45:                                               ; preds = %26
  %46 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %47 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @POLLIN, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %56 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
