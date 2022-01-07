; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-local.c_rxrpc_alloc_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-local.c_rxrpc_alloc_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_rxrpc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rxrpc_destroy_local = common dso_local global i32 0, align 4
@rxrpc_accept_incoming_calls = common dso_local global i32 0, align 4
@rxrpc_reject_packets = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_local* (%struct.sockaddr_rxrpc*)* @rxrpc_alloc_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_local* @rxrpc_alloc_local(%struct.sockaddr_rxrpc* %0) #0 {
  %2 = alloca %struct.sockaddr_rxrpc*, align 8
  %3 = alloca %struct.rxrpc_local*, align 8
  store %struct.sockaddr_rxrpc* %0, %struct.sockaddr_rxrpc** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.rxrpc_local* @kzalloc(i32 52, i32 %4)
  store %struct.rxrpc_local* %5, %struct.rxrpc_local** %3, align 8
  %6 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %7 = icmp ne %struct.rxrpc_local* %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %10 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %9, i32 0, i32 12
  %11 = call i32 @INIT_WORK(i32* %10, i32* @rxrpc_destroy_local)
  %12 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %13 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %12, i32 0, i32 11
  %14 = call i32 @INIT_WORK(i32* %13, i32* @rxrpc_accept_incoming_calls)
  %15 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %15, i32 0, i32 10
  %17 = call i32 @INIT_WORK(i32* %16, i32* @rxrpc_reject_packets)
  %18 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %19 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %18, i32 0, i32 9
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %22 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %25 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %24, i32 0, i32 7
  %26 = call i32 @init_rwsem(i32* %25)
  %27 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %28 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %27, i32 0, i32 6
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %31 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %30, i32 0, i32 5
  %32 = call i32 @skb_queue_head_init(i32* %31)
  %33 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %34 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %33, i32 0, i32 4
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %37 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %36, i32 0, i32 3
  %38 = call i32 @rwlock_init(i32* %37)
  %39 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %40 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %39, i32 0, i32 2
  %41 = call i32 @atomic_set(i32* %40, i32 1)
  %42 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %43 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %44 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %46 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %45, i32 0, i32 0
  %47 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %2, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.sockaddr_rxrpc* %47, i32 4)
  br label %49

49:                                               ; preds = %8, %1
  %50 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  %51 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_local* %50)
  %52 = load %struct.rxrpc_local*, %struct.rxrpc_local** %3, align 8
  ret %struct.rxrpc_local* %52
}

declare dso_local %struct.rxrpc_local* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
