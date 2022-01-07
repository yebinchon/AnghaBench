; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_buf = type { i32, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_buf*, i32)* @gs_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_buf_alloc(%struct.gs_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.gs_buf* %0, %struct.gs_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc(i32 %6, i32 %7)
  %9 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %10 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %9, i32 0, i32 1
  store i32* %8, i32** %10, align 8
  %11 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %12 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %21 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %23 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %26 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %28 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.gs_buf*, %struct.gs_buf** %4, align 8
  %31 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
