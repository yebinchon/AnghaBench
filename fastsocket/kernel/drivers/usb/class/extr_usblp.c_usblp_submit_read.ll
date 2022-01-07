; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_submit_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_submit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBLP_BUF_SIZE_IN = common dso_local global i32 0, align 4
@usblp_bulk_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error submitting urb (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*)* @usblp_submit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_submit_read(%struct.usblp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usblp*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %4, align 8
  %11 = icmp eq %struct.urb* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = load %struct.usblp*, %struct.usblp** %3, align 8
  %16 = getelementptr inbounds %struct.usblp, %struct.usblp* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.usblp*, %struct.usblp** %3, align 8
  %19 = getelementptr inbounds %struct.usblp, %struct.usblp* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usblp*, %struct.usblp** %3, align 8
  %22 = getelementptr inbounds %struct.usblp, %struct.usblp* %21, i32 0, i32 7
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.usblp*, %struct.usblp** %3, align 8
  %25 = getelementptr inbounds %struct.usblp, %struct.usblp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_rcvbulkpipe(i32 %20, i32 %31)
  %33 = load %struct.usblp*, %struct.usblp** %3, align 8
  %34 = getelementptr inbounds %struct.usblp, %struct.usblp* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USBLP_BUF_SIZE_IN, align 4
  %37 = load i32, i32* @usblp_bulk_read, align 4
  %38 = load %struct.usblp*, %struct.usblp** %3, align 8
  %39 = call i32 @usb_fill_bulk_urb(%struct.urb* %14, i32 %17, i32 %32, i32 %35, i32 %36, i32 %37, %struct.usblp* %38)
  %40 = load %struct.urb*, %struct.urb** %4, align 8
  %41 = load %struct.usblp*, %struct.usblp** %3, align 8
  %42 = getelementptr inbounds %struct.usblp, %struct.usblp* %41, i32 0, i32 5
  %43 = call i32 @usb_anchor_urb(%struct.urb* %40, i32* %42)
  %44 = load %struct.usblp*, %struct.usblp** %3, align 8
  %45 = getelementptr inbounds %struct.usblp, %struct.usblp* %44, i32 0, i32 3
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.usblp*, %struct.usblp** %3, align 8
  %49 = getelementptr inbounds %struct.usblp, %struct.usblp* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.usblp*, %struct.usblp** %3, align 8
  %51 = getelementptr inbounds %struct.usblp, %struct.usblp* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.usblp*, %struct.usblp** %3, align 8
  %53 = getelementptr inbounds %struct.usblp, %struct.usblp* %52, i32 0, i32 3
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.urb*, %struct.urb** %4, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @usb_submit_urb(%struct.urb* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %13
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.usblp*, %struct.usblp** %3, align 8
  %64 = getelementptr inbounds %struct.usblp, %struct.usblp* %63, i32 0, i32 3
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.usblp*, %struct.usblp** %3, align 8
  %69 = getelementptr inbounds %struct.usblp, %struct.usblp* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.usblp*, %struct.usblp** %3, align 8
  %71 = getelementptr inbounds %struct.usblp, %struct.usblp* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load %struct.usblp*, %struct.usblp** %3, align 8
  %73 = getelementptr inbounds %struct.usblp, %struct.usblp* %72, i32 0, i32 3
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %77

76:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %84

77:                                               ; preds = %60
  %78 = load %struct.urb*, %struct.urb** %4, align 8
  %79 = call i32 @usb_unanchor_urb(%struct.urb* %78)
  %80 = load %struct.urb*, %struct.urb** %4, align 8
  %81 = call i32 @usb_free_urb(%struct.urb* %80)
  br label %82

82:                                               ; preds = %77, %12
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.usblp*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
