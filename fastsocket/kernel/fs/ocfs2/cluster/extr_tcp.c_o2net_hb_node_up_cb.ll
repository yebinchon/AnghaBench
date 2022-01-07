; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_hb_node_up_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_hb_node_up_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32 }
%struct.o2net_node = type { i32, i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2nm_node*, i32, i8*)* @o2net_hb_node_up_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_hb_node_up_cb(%struct.o2nm_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.o2nm_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.o2net_node*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.o2net_node* @o2net_nn_from_num(i32 %8)
  store %struct.o2net_node* %9, %struct.o2net_node** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @o2quo_hb_up(i32 %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = call i32 (...) @o2net_reconnect_delay()
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  %15 = add nsw i64 %14, 1
  %16 = sub nsw i64 %12, %15
  %17 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %18 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (...) @o2nm_this_node()
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %24 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %27 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %26, i32 0, i32 2
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %30 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %35 = call i32 @o2net_set_nn_state(%struct.o2net_node* %34, i32* null, i32 0, i32 0)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load %struct.o2net_node*, %struct.o2net_node** %7, align 8
  %38 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %3
  ret void
}

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i32) #1

declare dso_local i32 @o2quo_hb_up(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @o2net_reconnect_delay(...) #1

declare dso_local i32 @o2nm_this_node(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @o2net_set_nn_state(%struct.o2net_node*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
