; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-connection.c_rxrpc_alloc_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-connection.c_rxrpc_alloc_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rxrpc_process_connection = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@RXRPC_MAXCALLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = %p{%d}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_connection* (i32)* @rxrpc_alloc_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_connection* @rxrpc_alloc_connection(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rxrpc_connection* @kzalloc(i32 44, i32 %5)
  store %struct.rxrpc_connection* %6, %struct.rxrpc_connection** %3, align 8
  %7 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %8 = icmp ne %struct.rxrpc_connection* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %10, i32 0, i32 10
  %12 = call i32 @INIT_WORK(i32* %11, i32* @rxrpc_process_connection)
  %13 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %14 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %13, i32 0, i32 9
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load i32, i32* @RB_ROOT, align 4
  %17 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %18 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 7
  %21 = call i32 @skb_queue_head_init(i32* %20)
  %22 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %23 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %22, i32 0, i32 6
  %24 = call i32 @rwlock_init(i32* %23)
  %25 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %26 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %25, i32 0, i32 5
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %29 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %28, i32 0, i32 4
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %32 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %33 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RXRPC_MAXCALLS, align 4
  %35 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %38 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %40 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  br label %41

41:                                               ; preds = %9, %1
  %42 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %43 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %44 = icmp ne %struct.rxrpc_connection* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %47 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  %52 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_connection* %42, i32 %51)
  %53 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  ret %struct.rxrpc_connection* %53
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
