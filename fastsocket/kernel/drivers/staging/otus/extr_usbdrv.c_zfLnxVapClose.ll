; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxVapClose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxVapClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@vap = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"zfLnxVapClose: device name=%s, vap ID=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"VAP port was not opened : vap ID=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfLnxVapClose(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @zfLnxGetVapId(%struct.net_device* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 65535
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vap, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_stop_queue(%struct.net_device* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vap, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %32

29:                                               ; preds = %8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %16
  br label %33

33:                                               ; preds = %32, %1
  ret i32 0
}

declare dso_local i32 @zfLnxGetVapId(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
