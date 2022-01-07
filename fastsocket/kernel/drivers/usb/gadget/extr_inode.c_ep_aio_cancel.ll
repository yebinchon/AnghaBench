; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.kiocb_priv* }
%struct.kiocb_priv = type { i64, %struct.ep_data* }
%struct.ep_data = type { i64 }
%struct.io_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.io_event*)* @ep_aio_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_aio_cancel(%struct.kiocb* %0, %struct.io_event* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.io_event*, align 8
  %5 = alloca %struct.kiocb_priv*, align 8
  %6 = alloca %struct.ep_data*, align 8
  %7 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.io_event* %1, %struct.io_event** %4, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 0
  %10 = load %struct.kiocb_priv*, %struct.kiocb_priv** %9, align 8
  store %struct.kiocb_priv* %10, %struct.kiocb_priv** %5, align 8
  %11 = call i32 (...) @local_irq_disable()
  %12 = load %struct.kiocb_priv*, %struct.kiocb_priv** %5, align 8
  %13 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %12, i32 0, i32 1
  %14 = load %struct.ep_data*, %struct.ep_data** %13, align 8
  store %struct.ep_data* %14, %struct.ep_data** %6, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %16 = call i32 @kiocbSetCancelled(%struct.kiocb* %15)
  %17 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %18 = icmp ne %struct.ep_data* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %21 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.kiocb_priv*, %struct.kiocb_priv** %5, align 8
  %26 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %19, %2
  %30 = phi i1 [ false, %19 ], [ false, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %36 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kiocb_priv*, %struct.kiocb_priv** %5, align 8
  %39 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @usb_ep_dequeue(i64 %37, i64 %40)
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %34
  %46 = call i32 (...) @local_irq_enable()
  %47 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %48 = call i32 @aio_put_req(%struct.kiocb* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @kiocbSetCancelled(%struct.kiocb*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_ep_dequeue(i64, i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @aio_put_req(%struct.kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
