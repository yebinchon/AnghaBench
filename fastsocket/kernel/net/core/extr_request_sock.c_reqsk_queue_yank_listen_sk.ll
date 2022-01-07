; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_request_sock.c_reqsk_queue_yank_listen_sk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_request_sock.c_reqsk_queue_yank_listen_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_sock = type { i32 }
%struct.request_sock_queue = type { i32, %struct.listen_sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.listen_sock* (%struct.request_sock_queue*)* @reqsk_queue_yank_listen_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.listen_sock* @reqsk_queue_yank_listen_sk(%struct.request_sock_queue* %0) #0 {
  %2 = alloca %struct.request_sock_queue*, align 8
  %3 = alloca %struct.listen_sock*, align 8
  store %struct.request_sock_queue* %0, %struct.request_sock_queue** %2, align 8
  %4 = load %struct.request_sock_queue*, %struct.request_sock_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %4, i32 0, i32 0
  %6 = call i32 @write_lock_bh(i32* %5)
  %7 = load %struct.request_sock_queue*, %struct.request_sock_queue** %2, align 8
  %8 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %7, i32 0, i32 1
  %9 = load %struct.listen_sock*, %struct.listen_sock** %8, align 8
  store %struct.listen_sock* %9, %struct.listen_sock** %3, align 8
  %10 = load %struct.request_sock_queue*, %struct.request_sock_queue** %2, align 8
  %11 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %10, i32 0, i32 1
  store %struct.listen_sock* null, %struct.listen_sock** %11, align 8
  %12 = load %struct.request_sock_queue*, %struct.request_sock_queue** %2, align 8
  %13 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %12, i32 0, i32 0
  %14 = call i32 @write_unlock_bh(i32* %13)
  %15 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  ret %struct.listen_sock* %15
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
