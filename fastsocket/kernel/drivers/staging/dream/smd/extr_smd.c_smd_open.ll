; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_channel = type { void (i8*, i32)*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i8*, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@smd_initialized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"smd_open() before smd_init()\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SMD_SS_CLOSED = common dso_local global i32 0, align 4
@smd_lock = common dso_local global i32 0, align 4
@smd_ch_list = common dso_local global i32 0, align 4
@SMD_SS_CLOSING = common dso_local global i64 0, align 8
@SMD_SS_OPENING = common dso_local global i32 0, align 4
@SMD_SS_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smd_open(i8* %0, %struct.smd_channel** %1, i8* %2, void (i8*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smd_channel**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*, i32)*, align 8
  %10 = alloca %struct.smd_channel*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.smd_channel** %1, %struct.smd_channel*** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (i8*, i32)* %3, void (i8*, i32)** %9, align 8
  %12 = load i64, i64* @smd_initialized, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %77

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.smd_channel* @smd_get_channel(i8* %19)
  store %struct.smd_channel* %20, %struct.smd_channel** %10, align 8
  %21 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %22 = icmp ne %struct.smd_channel* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %77

26:                                               ; preds = %18
  %27 = load void (i8*, i32)*, void (i8*, i32)** %9, align 8
  %28 = icmp eq void (i8*, i32)* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store void (i8*, i32)* @do_nothing_notify, void (i8*, i32)** %9, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load void (i8*, i32)*, void (i8*, i32)** %9, align 8
  %32 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %33 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %32, i32 0, i32 0
  store void (i8*, i32)* %31, void (i8*, i32)** %33, align 8
  %34 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %35 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @SMD_SS_CLOSED, align 4
  %37 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %38 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %41 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %43 = load %struct.smd_channel**, %struct.smd_channel*** %7, align 8
  store %struct.smd_channel* %42, %struct.smd_channel** %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @spin_lock_irqsave(i32* @smd_lock, i64 %44)
  %46 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %47 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %46, i32 0, i32 3
  %48 = call i32 @list_add(i32* %47, i32* @smd_ch_list)
  %49 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %50 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMD_SS_CLOSING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %30
  %57 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %58 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %62 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* @SMD_SS_OPENING, align 4
  %65 = call i32 @hc_set_state(%struct.TYPE_4__* %63, i32 %64)
  br label %72

66:                                               ; preds = %30
  %67 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %68 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @SMD_SS_OPENED, align 4
  %71 = call i32 @hc_set_state(%struct.TYPE_4__* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %56
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @smd_lock, i64 %73)
  %75 = load %struct.smd_channel*, %struct.smd_channel** %10, align 8
  %76 = call i32 @smd_kick(%struct.smd_channel* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %23, %14
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.smd_channel* @smd_get_channel(i8*) #1

declare dso_local void @do_nothing_notify(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hc_set_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smd_kick(%struct.smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
