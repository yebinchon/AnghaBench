; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_nsw_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_nsw_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_node = type { i32 }
%struct.o2net_status_wait = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_node*, %struct.o2net_status_wait*)* @o2net_nsw_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_nsw_completed(%struct.o2net_node* %0, %struct.o2net_status_wait* %1) #0 {
  %3 = alloca %struct.o2net_node*, align 8
  %4 = alloca %struct.o2net_status_wait*, align 8
  %5 = alloca i32, align 4
  store %struct.o2net_node* %0, %struct.o2net_node** %3, align 8
  store %struct.o2net_status_wait* %1, %struct.o2net_status_wait** %4, align 8
  %6 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %7 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %10 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %9, i32 0, i32 0
  %11 = call i32 @list_empty(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %13 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
