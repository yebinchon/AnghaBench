; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_fbinfo2index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_fbinfo2index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fb_info = type { i32 }

@CONFIG_FB_AU1200_DEVS = common dso_local global i32 0, align 4
@_au1200fb_devices = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"au1200fb: ERROR: fbinfo2index failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @fbinfo2index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbinfo2index(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CONFIG_FB_AU1200_DEVS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_au1200fb_devices, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.fb_info*
  %17 = icmp eq %struct.fb_info* %10, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  %25 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
