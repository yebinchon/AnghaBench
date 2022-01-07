; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, i32, %struct.o2net_sock_container* }
%struct.o2net_sock_container = type { {}*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"state_change to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @o2net_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.o2net_sock_container*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 2
  %7 = call i32 @read_lock(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 3
  %10 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %9, align 8
  store %struct.o2net_sock_container* %10, %struct.o2net_sock_container** %4, align 8
  %11 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %12 = icmp eq %struct.o2net_sock_container* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to void (%struct.sock*)**
  %17 = load void (%struct.sock*)*, void (%struct.sock*)** %16, align 8
  store void (%struct.sock*)* %17, void (%struct.sock*)** %3, align 8
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sclog(%struct.o2net_sock_container* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %25 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to void (%struct.sock*)**
  %27 = load void (%struct.sock*)*, void (%struct.sock*)** %26, align 8
  store void (%struct.sock*)* %27, void (%struct.sock*)** %3, align 8
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %37 [
    i32 128, label %31
    i32 129, label %31
    i32 130, label %32
  ]

31:                                               ; preds = %18, %18
  br label %42

32:                                               ; preds = %18
  %33 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %34 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %35 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %34, i32 0, i32 2
  %36 = call i32 @o2net_sc_queue_work(%struct.o2net_sock_container* %33, i32* %35)
  br label %42

37:                                               ; preds = %18
  %38 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %39 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %40 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %39, i32 0, i32 1
  %41 = call i32 @o2net_sc_queue_work(%struct.o2net_sock_container* %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %32, %31
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 2
  %46 = call i32 @read_unlock(i32* %45)
  %47 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  call void %47(%struct.sock* %48)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*, i32) #1

declare dso_local i32 @o2net_sc_queue_work(%struct.o2net_sock_container*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
