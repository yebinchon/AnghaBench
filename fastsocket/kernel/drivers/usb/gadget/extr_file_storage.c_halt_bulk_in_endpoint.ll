; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_halt_bulk_in_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_halt_bulk_in_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"delayed bulk-in endpoint halt\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_ep_set_halt -> %d\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @halt_bulk_in_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halt_bulk_in_endpoint(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  %5 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %6 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fsg_set_halt(%struct.fsg_dev* %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %16 = call i32 @VDBG(%struct.fsg_dev* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @WARNING(%struct.fsg_dev* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %4, align 4
  br label %41

30:                                               ; preds = %21
  %31 = call i64 @msleep_interruptible(i32 100)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINTR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %38 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_ep_set_halt(i32 %39)
  store i32 %40, i32* %4, align 4
  br label %18

41:                                               ; preds = %26, %18
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @fsg_set_halt(%struct.fsg_dev*, i32) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @WARNING(%struct.fsg_dev*, i8*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @usb_ep_set_halt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
