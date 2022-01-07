; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_wedge_bulk_in_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_wedge_bulk_in_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"bulk-in set wedge\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"delayed bulk-in endpoint wedge\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_ep_set_wedge -> %d\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @wedge_bulk_in_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wedge_bulk_in_endpoint(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  %5 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %6 = call i32 @DBG(%struct.fsg_dev* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %8 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_ep_set_wedge(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %17 = call i32 @VDBG(%struct.fsg_dev* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @WARNING(%struct.fsg_dev* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 0, i32* %4, align 4
  br label %42

31:                                               ; preds = %22
  %32 = call i64 @msleep_interruptible(i32 100)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINTR, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %39 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_ep_set_wedge(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %19

42:                                               ; preds = %27, %19
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @usb_ep_set_wedge(i32) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @WARNING(%struct.fsg_dev*, i8*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
