; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_alloc_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_alloc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rxrpc_call_jar = common dso_local global i32 0, align 4
@rxrpc_call_life_expired = common dso_local global i32 0, align 4
@rxrpc_dead_call_expired = common dso_local global i32 0, align 4
@rxrpc_ack_time_expired = common dso_local global i32 0, align 4
@rxrpc_resend_time_expired = common dso_local global i32 0, align 4
@rxrpc_destroy_call = common dso_local global i32 0, align 4
@rxrpc_process_call = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_SEND_REQUEST = common dso_local global i32 0, align 4
@RXRPC_MAXACKS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_call* (i32)* @rxrpc_alloc_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_call* @rxrpc_alloc_call(i32 %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxrpc_call*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @rxrpc_call_jar, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rxrpc_call* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.rxrpc_call* %7, %struct.rxrpc_call** %4, align 8
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %9 = icmp ne %struct.rxrpc_call* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %2, align 8
  br label %107

11:                                               ; preds = %1
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 0
  store i32 16, i32* %13, align 8
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %23 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %22, i32 0, i32 22
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 22
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %11
  %29 = load i32, i32* @rxrpc_call_jar, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %31 = call i32 @kmem_cache_free(i32 %29, %struct.rxrpc_call* %30)
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %2, align 8
  br label %107

32:                                               ; preds = %11
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %34 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %33, i32 0, i32 21
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %36 = ptrtoint %struct.rxrpc_call* %35 to i64
  %37 = call i32 @setup_timer(i32* %34, i32* @rxrpc_call_life_expired, i64 %36)
  %38 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %39 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %38, i32 0, i32 20
  %40 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %41 = ptrtoint %struct.rxrpc_call* %40 to i64
  %42 = call i32 @setup_timer(i32* %39, i32* @rxrpc_dead_call_expired, i64 %41)
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %44 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %43, i32 0, i32 19
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %46 = ptrtoint %struct.rxrpc_call* %45 to i64
  %47 = call i32 @setup_timer(i32* %44, i32* @rxrpc_ack_time_expired, i64 %46)
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %49 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %48, i32 0, i32 18
  %50 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %51 = ptrtoint %struct.rxrpc_call* %50 to i64
  %52 = call i32 @setup_timer(i32* %49, i32* @rxrpc_resend_time_expired, i64 %51)
  %53 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %54 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %53, i32 0, i32 17
  %55 = call i32 @INIT_WORK(i32* %54, i32* @rxrpc_destroy_call)
  %56 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %57 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %56, i32 0, i32 16
  %58 = call i32 @INIT_WORK(i32* %57, i32* @rxrpc_process_call)
  %59 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %60 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %59, i32 0, i32 15
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %63 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %62, i32 0, i32 14
  %64 = call i32 @skb_queue_head_init(i32* %63)
  %65 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %66 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %65, i32 0, i32 13
  %67 = call i32 @skb_queue_head_init(i32* %66)
  %68 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %69 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %68, i32 0, i32 12
  %70 = call i32 @init_waitqueue_head(i32* %69)
  %71 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %72 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %71, i32 0, i32 11
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %75 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %74, i32 0, i32 10
  %76 = call i32 @rwlock_init(i32* %75)
  %77 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %78 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %77, i32 0, i32 9
  %79 = call i32 @atomic_set(i32* %78, i32 1)
  %80 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %81 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %82 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @RXRPC_CALL_CLIENT_SEND_REQUEST, align 4
  %84 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %85 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %87 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %86, i32 0, i32 6
  %88 = call i32 @memset(i32* %87, i32 237, i32 4)
  %89 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %90 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %92 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %94 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %96 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = load i64, i64* @RXRPC_MAXACKS, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %102 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @jiffies, align 4
  %104 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %105 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  store %struct.rxrpc_call* %106, %struct.rxrpc_call** %2, align 8
  br label %107

107:                                              ; preds = %32, %28, %10
  %108 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  ret %struct.rxrpc_call* %108
}

declare dso_local %struct.rxrpc_call* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rxrpc_call*) #1

declare dso_local i32 @setup_timer(i32*, i32*, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
