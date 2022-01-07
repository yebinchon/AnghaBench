; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_start_wb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_start_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i32 }
%struct.acm_wb = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"usb_submit_urb(write bulk) failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acm*, %struct.acm_wb*)* @acm_start_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_start_wb(%struct.acm* %0, %struct.acm_wb* %1) #0 {
  %3 = alloca %struct.acm*, align 8
  %4 = alloca %struct.acm_wb*, align 8
  %5 = alloca i32, align 4
  store %struct.acm* %0, %struct.acm** %3, align 8
  store %struct.acm_wb* %1, %struct.acm_wb** %4, align 8
  %6 = load %struct.acm*, %struct.acm** %3, align 8
  %7 = getelementptr inbounds %struct.acm, %struct.acm* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %11 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %14 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 4
  %17 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %18 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %21 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 4
  %24 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %25 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %28 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.acm*, %struct.acm** %3, align 8
  %32 = getelementptr inbounds %struct.acm, %struct.acm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %35 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %39 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i32 @usb_submit_urb(%struct.TYPE_2__* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.acm*, %struct.acm** %3, align 8
  %49 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %50 = call i32 @acm_write_done(%struct.acm* %48, %struct.acm_wb* %49)
  br label %51

51:                                               ; preds = %45, %2
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @acm_write_done(%struct.acm*, %struct.acm_wb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
