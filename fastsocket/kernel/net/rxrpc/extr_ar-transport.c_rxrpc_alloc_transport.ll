; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-transport.c_rxrpc_alloc_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-transport.c_rxrpc_alloc_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_transport = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, %struct.rxrpc_peer*, %struct.rxrpc_local* }
%struct.rxrpc_local = type { i32 }
%struct.rxrpc_peer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RB_ROOT = common dso_local global i8* null, align 8
@rxrpc_debug_id = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@rxrpc_UDP_error_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_transport* (%struct.rxrpc_local*, %struct.rxrpc_peer*, i32)* @rxrpc_alloc_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_transport* @rxrpc_alloc_transport(%struct.rxrpc_local* %0, %struct.rxrpc_peer* %1, i32 %2) #0 {
  %4 = alloca %struct.rxrpc_local*, align 8
  %5 = alloca %struct.rxrpc_peer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxrpc_transport*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %4, align 8
  store %struct.rxrpc_peer* %1, %struct.rxrpc_peer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.rxrpc_transport* @kzalloc(i32 72, i32 %9)
  store %struct.rxrpc_transport* %10, %struct.rxrpc_transport** %7, align 8
  %11 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %12 = icmp ne %struct.rxrpc_transport* %11, null
  br i1 %12, label %13, label %70

13:                                               ; preds = %3
  %14 = load %struct.rxrpc_local*, %struct.rxrpc_local** %4, align 8
  %15 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %16 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %15, i32 0, i32 11
  store %struct.rxrpc_local* %14, %struct.rxrpc_local** %16, align 8
  %17 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %18 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %19 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %18, i32 0, i32 10
  store %struct.rxrpc_peer* %17, %struct.rxrpc_peer** %19, align 8
  %20 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %21 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %20, i32 0, i32 9
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i8*, i8** @RB_ROOT, align 8
  %24 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %25 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @RB_ROOT, align 8
  %27 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %28 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @RB_ROOT, align 8
  %30 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %31 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %33 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %32, i32 0, i32 5
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %36 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %39 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %38, i32 0, i32 3
  %40 = call i32 @rwlock_init(i32* %39)
  %41 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %42 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 1)
  %44 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %45 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %46 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %48 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %13
  %55 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %5, align 8
  %56 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %64 [
    i32 128, label %59
  ]

59:                                               ; preds = %54
  %60 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %61 = getelementptr inbounds %struct.rxrpc_transport, %struct.rxrpc_transport* %60, i32 0, i32 0
  %62 = load i32, i32* @rxrpc_UDP_error_handler, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  br label %66

64:                                               ; preds = %54
  %65 = call i32 (...) @BUG()
  br label %66

66:                                               ; preds = %64, %59
  br label %69

67:                                               ; preds = %13
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %67, %66
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  %72 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_transport* %71)
  %73 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %7, align 8
  ret %struct.rxrpc_transport* %73
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_transport* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
