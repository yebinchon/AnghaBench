; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxSignalThread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxSignalThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"macp is NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxSignalThread(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbdrv_private*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  store %struct.usbdrv_private* %8, %struct.usbdrv_private** %5, align 8
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %10 = icmp eq %struct.usbdrv_private* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %16 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %15, i32 0, i32 2
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %19 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %18, i32 0, i32 1
  %20 = call i32 @schedule_work(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %11, %22, %13
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
