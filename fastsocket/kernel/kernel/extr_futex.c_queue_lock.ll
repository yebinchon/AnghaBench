; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_queue_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_queue_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_hash_bucket = type { i32 }
%struct.futex_q = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.futex_hash_bucket* (%struct.futex_q*)* @queue_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.futex_hash_bucket* @queue_lock(%struct.futex_q* %0) #0 {
  %2 = alloca %struct.futex_q*, align 8
  %3 = alloca %struct.futex_hash_bucket*, align 8
  store %struct.futex_q* %0, %struct.futex_q** %2, align 8
  %4 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %5 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %4, i32 0, i32 1
  %6 = call i32 @get_futex_key_refs(i32* %5)
  %7 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %8 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %7, i32 0, i32 1
  %9 = call %struct.futex_hash_bucket* @hash_futex(i32* %8)
  store %struct.futex_hash_bucket* %9, %struct.futex_hash_bucket** %3, align 8
  %10 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  %11 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %10, i32 0, i32 0
  %12 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %13 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  %15 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %3, align 8
  ret %struct.futex_hash_bucket* %17
}

declare dso_local i32 @get_futex_key_refs(i32*) #1

declare dso_local %struct.futex_hash_bucket* @hash_futex(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
