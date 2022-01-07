; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_start_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32, %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bulk-in\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"intr-in\00", align 1
@BUF_STATE_BUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUF_STATE_EMPTY = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error in submission: %s --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_dev*, %struct.usb_ep*, %struct.usb_request*, i32*, i32*)* @start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_transfer(%struct.fsg_dev* %0, %struct.usb_ep* %1, %struct.usb_request* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.fsg_dev*, align 8
  %7 = alloca %struct.usb_ep*, align 8
  %8 = alloca %struct.usb_request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %6, align 8
  store %struct.usb_ep* %1, %struct.usb_ep** %7, align 8
  store %struct.usb_request* %2, %struct.usb_request** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %13 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %14 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %13, i32 0, i32 2
  %15 = load %struct.usb_ep*, %struct.usb_ep** %14, align 8
  %16 = icmp eq %struct.usb_ep* %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %19 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %20 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dump_msg(%struct.fsg_dev* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %24)
  br label %42

26:                                               ; preds = %5
  %27 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %28 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %29 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %28, i32 0, i32 1
  %30 = load %struct.usb_ep*, %struct.usb_ep** %29, align 8
  %31 = icmp eq %struct.usb_ep* %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %34 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %38 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dump_msg(%struct.fsg_dev* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %32, %26
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %44 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load i32*, i32** %9, align 8
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @BUF_STATE_BUSY, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %50 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %53 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @usb_ep_queue(%struct.usb_ep* %52, %struct.usb_request* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %42
  %59 = load i32*, i32** %9, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* @BUF_STATE_EMPTY, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ESHUTDOWN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %73 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %78 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %79 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @WARNING(%struct.fsg_dev* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %71, %58
  br label %84

84:                                               ; preds = %83, %42
  ret void
}

declare dso_local i32 @dump_msg(%struct.fsg_dev*, i8*, i32, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @WARNING(%struct.fsg_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
