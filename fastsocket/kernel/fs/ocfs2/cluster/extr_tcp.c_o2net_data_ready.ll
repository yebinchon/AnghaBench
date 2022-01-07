; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, %struct.o2net_sock_container* }
%struct.o2net_sock_container = type { {}*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"data_ready hit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @o2net_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.sock*, i32)*, align 8
  %6 = alloca %struct.o2net_sock_container*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = call i32 @read_lock(i32* %8)
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 2
  %12 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %11, align 8
  %13 = icmp ne %struct.o2net_sock_container* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 2
  %17 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %16, align 8
  store %struct.o2net_sock_container* %17, %struct.o2net_sock_container** %6, align 8
  %18 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %6, align 8
  %19 = call i32 @sclog(%struct.o2net_sock_container* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %6, align 8
  %21 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %20, i32 0, i32 2
  %22 = call i32 @do_gettimeofday(i32* %21)
  %23 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %6, align 8
  %24 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %6, align 8
  %25 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %24, i32 0, i32 1
  %26 = call i32 @o2net_sc_queue_work(%struct.o2net_sock_container* %23, i32* %25)
  %27 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %6, align 8
  %28 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to void (%struct.sock*, i32)**
  %30 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %29, align 8
  store void (%struct.sock*, i32)* %30, void (%struct.sock*, i32)** %5, align 8
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to void (%struct.sock*, i32)**
  %35 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %34, align 8
  store void (%struct.sock*, i32)* %35, void (%struct.sock*, i32)** %5, align 8
  br label %36

36:                                               ; preds = %31, %14
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = call i32 @read_unlock(i32* %38)
  %40 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %5, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = load i32, i32* %4, align 4
  call void %40(%struct.sock* %41, i32 %42)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @o2net_sc_queue_work(%struct.o2net_sock_container*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
