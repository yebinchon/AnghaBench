; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_channel = type { i32, i32, i32 (i32, i32)*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"SMD: ch %d %s -> %s\0A\00", align 1
@SMD_EVENT_OPEN = common dso_local global i32 0, align 4
@SMD_EVENT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smd_channel*, i32, i32)* @smd_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smd_state_change(%struct.smd_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smd_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smd_channel* %0, %struct.smd_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %9 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %11 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @chstate(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @chstate(i32 %15)
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %46 [
    i32 129, label %19
    i32 130, label %24
    i32 131, label %45
    i32 128, label %45
  ]

19:                                               ; preds = %3
  %20 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %21 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %3, %19
  %25 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %26 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 130
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %33 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @hc_set_state(%struct.TYPE_4__* %34, i32 130)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %38 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %37, i32 0, i32 2
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %41 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SMD_EVENT_OPEN, align 4
  %44 = call i32 %39(i32 %42, i32 %43)
  br label %55

45:                                               ; preds = %3, %3
  br label %46

46:                                               ; preds = %3, %45
  %47 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %48 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %47, i32 0, i32 2
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %51 = getelementptr inbounds %struct.smd_channel, %struct.smd_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SMD_EVENT_CLOSE, align 4
  %54 = call i32 %49(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %36
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @chstate(i32) #1

declare dso_local i32 @hc_set_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
