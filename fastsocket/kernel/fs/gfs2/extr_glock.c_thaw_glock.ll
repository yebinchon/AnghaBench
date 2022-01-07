; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_thaw_glock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_thaw_glock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, i32 }

@GLF_FROZEN = common dso_local global i32 0, align 4
@GLF_REPLY_PENDING = common dso_local global i32 0, align 4
@glock_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @thaw_glock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thaw_glock(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %3 = load i32, i32* @GLF_FROZEN, align 4
  %4 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %4, i32 0, i32 1
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @GLF_REPLY_PENDING, align 4
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 1
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load i32, i32* @glock_workqueue, align 4
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %15, i32 0, i32 0
  %17 = call i64 @queue_delayed_work(i32 %14, i32* %16, i32 0)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %22 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %21)
  br label %23

23:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
