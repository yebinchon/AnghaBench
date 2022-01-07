; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_arm_write_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_arm_write_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Queue write timeout for %u ms\0A\00", align 1
@O2HB_MAX_WRITE_TIMEOUT_MS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2hb_region*)* @o2hb_arm_write_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_arm_write_timeout(%struct.o2hb_region* %0) #0 {
  %2 = alloca %struct.o2hb_region*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %2, align 8
  %3 = load i32, i32* @O2HB_MAX_WRITE_TIMEOUT_MS, align 4
  %4 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %6 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %5, i32 0, i32 0
  %7 = call i32 @cancel_delayed_work(i32* %6)
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %10 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.o2hb_region*, %struct.o2hb_region** %2, align 8
  %12 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %11, i32 0, i32 0
  %13 = load i32, i32* @O2HB_MAX_WRITE_TIMEOUT_MS, align 4
  %14 = call i32 @msecs_to_jiffies(i32 %13)
  %15 = call i32 @schedule_delayed_work(i32* %12, i32 %14)
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
