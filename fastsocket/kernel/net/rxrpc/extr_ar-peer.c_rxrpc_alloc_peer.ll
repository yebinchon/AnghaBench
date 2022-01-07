; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-peer.c_rxrpc_alloc_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-peer.c_rxrpc_alloc_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_rxrpc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rxrpc_destroy_peer = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_peer* (%struct.sockaddr_rxrpc*, i32)* @rxrpc_alloc_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_peer* @rxrpc_alloc_peer(%struct.sockaddr_rxrpc* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr_rxrpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_peer*, align 8
  store %struct.sockaddr_rxrpc* %0, %struct.sockaddr_rxrpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.rxrpc_peer* @kzalloc(i32 64, i32 %7)
  store %struct.rxrpc_peer* %8, %struct.rxrpc_peer** %5, align 8
  %9 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %10 = icmp ne %struct.rxrpc_peer* %9, null
  br i1 %10, label %11, label %82

11:                                               ; preds = %2
  %12 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %13 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %12, i32 0, i32 10
  %14 = call i32 @INIT_WORK(i32* %13, i32* @rxrpc_destroy_peer)
  %15 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %16 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %15, i32 0, i32 9
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %19 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %18, i32 0, i32 8
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %21, i32 0, i32 7
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %25 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %24, i32 0, i32 6
  %26 = call i32 @atomic_set(i32* %25, i32 1)
  %27 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %28 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %29 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %30, i32 0, i32 4
  %32 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %3, align 8
  %33 = call i32 @memcpy(i32* %31, %struct.sockaddr_rxrpc* %32, i32 16)
  %34 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %35 = call i32 @rxrpc_assess_MTU_size(%struct.rxrpc_peer* %34)
  %36 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %37 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %40 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %3, align 8
  %42 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %11
  %48 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %49 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %48, i32 0, i32 0
  store i32 4, i32* %49, align 8
  %50 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %3, align 8
  %51 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %60 [
    i32 128, label %53
  ]

53:                                               ; preds = %47
  %54 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %55 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  br label %62

60:                                               ; preds = %47
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %60, %53
  br label %65

63:                                               ; preds = %11
  %64 = call i32 (...) @BUG()
  br label %65

65:                                               ; preds = %63, %62
  %66 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %67 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %73 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %76 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %74, %78
  %80 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %81 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %65, %2
  %83 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %84 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_peer* %83)
  %85 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  ret %struct.rxrpc_peer* %85
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @rxrpc_assess_MTU_size(%struct.rxrpc_peer*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
