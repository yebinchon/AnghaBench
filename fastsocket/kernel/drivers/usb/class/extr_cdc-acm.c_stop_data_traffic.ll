; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_stop_data_traffic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_stop_data_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Entering stop_data_traffic\00", align 1
@ACM_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm*)* @stop_data_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_data_traffic(%struct.acm* %0) #0 {
  %2 = alloca %struct.acm*, align 8
  %3 = alloca i32, align 4
  store %struct.acm* %0, %struct.acm** %2, align 8
  %4 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.acm*, %struct.acm** %2, align 8
  %6 = getelementptr inbounds %struct.acm, %struct.acm* %5, i32 0, i32 2
  %7 = call i32 @tasklet_disable(i32* %6)
  %8 = load %struct.acm*, %struct.acm** %2, align 8
  %9 = getelementptr inbounds %struct.acm, %struct.acm* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @usb_kill_urb(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ACM_NW, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.acm*, %struct.acm** %2, align 8
  %18 = getelementptr inbounds %struct.acm, %struct.acm* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_kill_urb(i32 %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %12

29:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.acm*, %struct.acm** %2, align 8
  %33 = getelementptr inbounds %struct.acm, %struct.acm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.acm*, %struct.acm** %2, align 8
  %38 = getelementptr inbounds %struct.acm, %struct.acm* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usb_kill_urb(i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.acm*, %struct.acm** %2, align 8
  %51 = getelementptr inbounds %struct.acm, %struct.acm* %50, i32 0, i32 2
  %52 = call i32 @tasklet_enable(i32* %51)
  %53 = load %struct.acm*, %struct.acm** %2, align 8
  %54 = getelementptr inbounds %struct.acm, %struct.acm* %53, i32 0, i32 1
  %55 = call i32 @cancel_work_sync(i32* %54)
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
