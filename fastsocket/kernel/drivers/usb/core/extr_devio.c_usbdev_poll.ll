; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbdev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbdev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.dev_state* }
%struct.dev_state = type { i32, i32 }
%struct.poll_table_struct = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @usbdev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdev_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.dev_state*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.dev_state*, %struct.dev_state** %8, align 8
  store %struct.dev_state* %9, %struct.dev_state** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %12 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %11, i32 0, i32 1
  %13 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, %struct.poll_table_struct* %13)
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FMODE_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %23 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %22, i32 0, i32 0
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @POLLOUT, align 4
  %28 = load i32, i32* @POLLWRNORM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %21, %2
  %33 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %34 = call i32 @connected(%struct.dev_state* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @POLLERR, align 4
  %38 = load i32, i32* @POLLHUP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @connected(%struct.dev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
