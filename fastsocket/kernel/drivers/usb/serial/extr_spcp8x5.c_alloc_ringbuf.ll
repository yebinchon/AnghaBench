; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_alloc_ringbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_alloc_ringbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ringbuf = type { i32, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ringbuf* (i32)* @alloc_ringbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ringbuf* @alloc_ringbuf(i32 %0) #0 {
  %2 = alloca %struct.ringbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ringbuf*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.ringbuf* null, %struct.ringbuf** %2, align 8
  br label %41

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 32, i32 %9)
  %11 = bitcast i8* %10 to %struct.ringbuf*
  store %struct.ringbuf* %11, %struct.ringbuf** %4, align 8
  %12 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %13 = icmp eq %struct.ringbuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store %struct.ringbuf* null, %struct.ringbuf** %2, align 8
  br label %41

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %21 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %23 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %28 = call i32 @kfree(%struct.ringbuf* %27)
  store %struct.ringbuf* null, %struct.ringbuf** %2, align 8
  br label %41

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %32 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %34 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %37 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  %39 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %38, i32 0, i32 3
  store i32* %35, i32** %39, align 8
  %40 = load %struct.ringbuf*, %struct.ringbuf** %4, align 8
  store %struct.ringbuf* %40, %struct.ringbuf** %2, align 8
  br label %41

41:                                               ; preds = %29, %26, %14, %7
  %42 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  ret %struct.ringbuf* %42
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ringbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
