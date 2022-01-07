; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep_data* }
%struct.ep_data = type { i32 }
%struct.iovec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ep_aio_read_retry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @ep_aio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_aio_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ep_data*, align 8
  %11 = alloca i8*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ep_data*, %struct.ep_data** %15, align 8
  store %struct.ep_data* %16, %struct.ep_data** %10, align 8
  %17 = load %struct.ep_data*, %struct.ep_data** %10, align 8
  %18 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %17, i32 0, i32 0
  %19 = call i32 @usb_endpoint_dir_in(i32* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %53

25:                                               ; preds = %4
  %26 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %27 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmalloc(i32 %28, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %53

40:                                               ; preds = %25
  %41 = load i32, i32* @ep_aio_read_retry, align 4
  %42 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %43 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %47 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ep_data*, %struct.ep_data** %10, align 8
  %50 = load %struct.iovec*, %struct.iovec** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @ep_aio_rwtail(%struct.kiocb* %44, i8* %45, i32 %48, %struct.ep_data* %49, %struct.iovec* %50, i64 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %40, %37, %22
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_endpoint_dir_in(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ep_aio_rwtail(%struct.kiocb*, i8*, i32, %struct.ep_data*, %struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
