; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c_dev_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_queue.c_dev_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { %struct.TYPE_11__*, %struct.TYPE_7__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_queue_entry*, i64)* @dev_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_cmp(%struct.nf_queue_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %7 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %6, i32 0, i32 2
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %12 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %36

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %22 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %27 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %36

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
