; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_sc_postpone_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_sc_postpone_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2net_sock_container*)* @o2net_sc_postpone_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_sc_postpone_idle(%struct.o2net_sock_container* %0) #0 {
  %2 = alloca %struct.o2net_sock_container*, align 8
  store %struct.o2net_sock_container* %0, %struct.o2net_sock_container** %2, align 8
  %3 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %4 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %3, i32 0, i32 0
  %5 = call i64 @timer_pending(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %9 = call i32 @o2net_sc_reset_idle_timer(%struct.o2net_sock_container* %8)
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @o2net_sc_reset_idle_timer(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
