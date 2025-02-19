; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_aircable.c_serial_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_aircable.c_serial_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circ_buf = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AIRCABLE_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.circ_buf* ()* @serial_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.circ_buf* @serial_buf_alloc() #0 {
  %1 = alloca %struct.circ_buf*, align 8
  %2 = alloca %struct.circ_buf*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call i8* @kmalloc(i32 8, i32 %3)
  %5 = bitcast i8* %4 to %struct.circ_buf*
  store %struct.circ_buf* %5, %struct.circ_buf** %2, align 8
  %6 = load %struct.circ_buf*, %struct.circ_buf** %2, align 8
  %7 = icmp eq %struct.circ_buf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.circ_buf* null, %struct.circ_buf** %1, align 8
  br label %27

9:                                                ; preds = %0
  %10 = load i32, i32* @AIRCABLE_BUF_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.circ_buf*, %struct.circ_buf** %2, align 8
  %15 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.circ_buf*, %struct.circ_buf** %2, align 8
  %17 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load %struct.circ_buf*, %struct.circ_buf** %2, align 8
  %22 = call i32 @kfree(%struct.circ_buf* %21)
  store %struct.circ_buf* null, %struct.circ_buf** %1, align 8
  br label %27

23:                                               ; preds = %9
  %24 = load %struct.circ_buf*, %struct.circ_buf** %2, align 8
  %25 = call i32 @serial_buf_clear(%struct.circ_buf* %24)
  %26 = load %struct.circ_buf*, %struct.circ_buf** %2, align 8
  store %struct.circ_buf* %26, %struct.circ_buf** %1, align 8
  br label %27

27:                                               ; preds = %23, %20, %8
  %28 = load %struct.circ_buf*, %struct.circ_buf** %1, align 8
  ret %struct.circ_buf* %28
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.circ_buf*) #1

declare dso_local i32 @serial_buf_clear(%struct.circ_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
