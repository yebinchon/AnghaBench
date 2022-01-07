; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32 }

@o2hb_live_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @o2hb_region_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2hb_region_put(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.o2hb_region*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.o2hb_region* @o2hb_find_region(i8* %5)
  store %struct.o2hb_region* %6, %struct.o2hb_region** %3, align 8
  %7 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %8 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %9 = icmp ne %struct.o2hb_region* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %12 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %11, i32 0, i32 0
  %13 = call i32 @o2nm_undepend_item(i32* %12)
  %14 = call i32 (...) @o2nm_undepend_this_node()
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.o2hb_region* @o2hb_find_region(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @o2nm_undepend_item(i32*) #1

declare dso_local i32 @o2nm_undepend_this_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
