; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_requeue_futex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_requeue_futex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { %union.futex_key, %struct.TYPE_5__, i32* }
%union.futex_key = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.futex_hash_bucket = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_q*, %struct.futex_hash_bucket*, %struct.futex_hash_bucket*, %union.futex_key*)* @requeue_futex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue_futex(%struct.futex_q* %0, %struct.futex_hash_bucket* %1, %struct.futex_hash_bucket* %2, %union.futex_key* %3) #0 {
  %5 = alloca %struct.futex_q*, align 8
  %6 = alloca %struct.futex_hash_bucket*, align 8
  %7 = alloca %struct.futex_hash_bucket*, align 8
  %8 = alloca %union.futex_key*, align 8
  store %struct.futex_q* %0, %struct.futex_q** %5, align 8
  store %struct.futex_hash_bucket* %1, %struct.futex_hash_bucket** %6, align 8
  store %struct.futex_hash_bucket* %2, %struct.futex_hash_bucket** %7, align 8
  store %union.futex_key* %3, %union.futex_key** %8, align 8
  %9 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %6, align 8
  %10 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %9, i32 0, i32 1
  %11 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %7, align 8
  %12 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %11, i32 0, i32 1
  %13 = icmp ne i32* %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.futex_q*, %struct.futex_q** %5, align 8
  %19 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %18, i32 0, i32 1
  %20 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %6, align 8
  %21 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %20, i32 0, i32 1
  %22 = call i32 @plist_del(%struct.TYPE_5__* %19, i32* %21)
  %23 = load %struct.futex_q*, %struct.futex_q** %5, align 8
  %24 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %23, i32 0, i32 1
  %25 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %7, align 8
  %26 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %25, i32 0, i32 1
  %27 = call i32 @plist_add(%struct.TYPE_5__* %24, i32* %26)
  %28 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %7, align 8
  %29 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %28, i32 0, i32 0
  %30 = load %struct.futex_q*, %struct.futex_q** %5, align 8
  %31 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  br label %32

32:                                               ; preds = %17, %4
  %33 = load %union.futex_key*, %union.futex_key** %8, align 8
  %34 = call i32 @get_futex_key_refs(%union.futex_key* %33)
  %35 = load %struct.futex_q*, %struct.futex_q** %5, align 8
  %36 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %35, i32 0, i32 0
  %37 = load %union.futex_key*, %union.futex_key** %8, align 8
  %38 = bitcast %union.futex_key* %36 to i8*
  %39 = bitcast %union.futex_key* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 4, i1 false)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @plist_del(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @plist_add(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @get_futex_key_refs(%union.futex_key*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
