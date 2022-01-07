; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_queue_me.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_queue_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.futex_q = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.futex_hash_bucket = type { i32, i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@MAX_RT_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_q*, %struct.futex_hash_bucket*)* @queue_me to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_me(%struct.futex_q* %0, %struct.futex_hash_bucket* %1) #0 {
  %3 = alloca %struct.futex_q*, align 8
  %4 = alloca %struct.futex_hash_bucket*, align 8
  %5 = alloca i32, align 4
  store %struct.futex_q* %0, %struct.futex_q** %3, align 8
  store %struct.futex_hash_bucket* %1, %struct.futex_hash_bucket** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX_RT_PRIO, align 4
  %10 = call i32 @min(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.futex_q*, %struct.futex_q** %3, align 8
  %12 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %11, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @plist_node_init(%struct.TYPE_6__* %12, i32 %13)
  %15 = load %struct.futex_q*, %struct.futex_q** %3, align 8
  %16 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %15, i32 0, i32 1
  %17 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %18 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %17, i32 0, i32 1
  %19 = call i32 @plist_add(%struct.TYPE_6__* %16, i32* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %21 = load %struct.futex_q*, %struct.futex_q** %3, align 8
  %22 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %21, i32 0, i32 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %4, align 8
  %24 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @plist_node_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @plist_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
