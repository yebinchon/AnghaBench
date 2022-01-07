; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_set_update_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_blizzard_set_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"s1d1374x: setting update mode to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@OMAPFB_EVENT_DISABLED = common dso_local global i32 0, align 4
@OMAPFB_EVENT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @blizzard_set_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blizzard_set_update_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 129
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 130
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 128
  br label %12

12:                                               ; preds = %9, %6, %1
  %13 = phi i1 [ false, %6 ], [ false, %1 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %60

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %37

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 130
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  br label %37

37:                                               ; preds = %32, %31
  %38 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %31 ], [ %36, %32 ]
  %39 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  switch i32 %40, label %48 [
    i32 129, label %41
    i32 130, label %45
    i32 128, label %47
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %43 = load i32, i32* @OMAPFB_EVENT_DISABLED, align 4
  %44 = call i32 @omapfb_notify_clients(%struct.TYPE_3__* %42, i32 %43)
  br label %48

45:                                               ; preds = %37
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 4
  %46 = call i32 @del_timer_sync(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 3))
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %37, %47, %45, %41
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %50 = call i32 (...) @blizzard_sync()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 4
  %51 = load i32, i32* %3, align 4
  switch i32 %51, label %59 [
    i32 129, label %52
    i32 130, label %56
    i32 128, label %58
  ]

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %54 = load i32, i32* @OMAPFB_EVENT_READY, align 4
  %55 = call i32 @omapfb_notify_clients(%struct.TYPE_3__* %53, i32 %54)
  br label %59

56:                                               ; preds = %48
  %57 = call i32 @blizzard_update_window_auto(i32 0)
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %48, %58, %56, %52
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %24, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @omapfb_notify_clients(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @blizzard_sync(...) #1

declare dso_local i32 @blizzard_update_window_auto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
