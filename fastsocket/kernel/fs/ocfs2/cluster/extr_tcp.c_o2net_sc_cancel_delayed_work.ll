; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_sc_cancel_delayed_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_sc_cancel_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { i32 }
%struct.delayed_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2net_sock_container*, %struct.delayed_work*)* @o2net_sc_cancel_delayed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_sc_cancel_delayed_work(%struct.o2net_sock_container* %0, %struct.delayed_work* %1) #0 {
  %3 = alloca %struct.o2net_sock_container*, align 8
  %4 = alloca %struct.delayed_work*, align 8
  store %struct.o2net_sock_container* %0, %struct.o2net_sock_container** %3, align 8
  store %struct.delayed_work* %1, %struct.delayed_work** %4, align 8
  %5 = load %struct.delayed_work*, %struct.delayed_work** %4, align 8
  %6 = call i64 @cancel_delayed_work(%struct.delayed_work* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %10 = call i32 @sc_put(%struct.o2net_sock_container* %9)
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @cancel_delayed_work(%struct.delayed_work*) #1

declare dso_local i32 @sc_put(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
