; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_new_writeurb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_new_writeurb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.usblp = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@usblp_bulk_write = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usblp*, i32)* @usblp_new_writeurb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @usblp_new_writeurb(%struct.usblp* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usblp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  store %struct.usblp* %0, %struct.usblp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %51

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %14)
  store %struct.urb* %15, %struct.urb** %6, align 8
  %16 = icmp eq %struct.urb* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @kfree(i8* %18)
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %51

20:                                               ; preds = %13
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = load %struct.usblp*, %struct.usblp** %4, align 8
  %23 = getelementptr inbounds %struct.usblp, %struct.usblp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.usblp*, %struct.usblp** %4, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.usblp*, %struct.usblp** %4, align 8
  %29 = getelementptr inbounds %struct.usblp, %struct.usblp* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.usblp*, %struct.usblp** %4, align 8
  %32 = getelementptr inbounds %struct.usblp, %struct.usblp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_sndbulkpipe(i32 %27, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @usblp_bulk_write, align 4
  %43 = load %struct.usblp*, %struct.usblp** %4, align 8
  %44 = call i32 @usb_fill_bulk_urb(%struct.urb* %21, i32 %24, i32 %39, i8* %40, i32 %41, i32 %42, %struct.usblp* %43)
  %45 = load i32, i32* @URB_FREE_BUFFER, align 4
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.urb*, %struct.urb** %6, align 8
  store %struct.urb* %50, %struct.urb** %3, align 8
  br label %51

51:                                               ; preds = %20, %17, %12
  %52 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %52
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.usblp*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
