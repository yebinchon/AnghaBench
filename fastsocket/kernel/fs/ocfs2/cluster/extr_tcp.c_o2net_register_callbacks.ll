; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_register_callbacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_register_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32, i32 }
%struct.o2net_sock_container = type { i64, i32, i32 }

@o2net_listen_data_ready = common dso_local global i64 0, align 8
@o2net_data_ready = common dso_local global i64 0, align 8
@o2net_state_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.o2net_sock_container*)* @o2net_register_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_register_callbacks(%struct.sock* %0, %struct.o2net_sock_container* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.o2net_sock_container*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.o2net_sock_container* %1, %struct.o2net_sock_container** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 2
  %7 = call i32 @write_lock_bh(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @o2net_listen_data_ready, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %30 = ptrtoint %struct.o2net_sock_container* %29 to i64
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %34 = call i32 @sc_get(%struct.o2net_sock_container* %33)
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %39 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %44 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* @o2net_data_ready, align 8
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @o2net_state_change, align 4
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  %52 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %51, i32 0, i32 1
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  %56 = call i32 @write_unlock_bh(i32* %55)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sc_get(%struct.o2net_sock_container*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
