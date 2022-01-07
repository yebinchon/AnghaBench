; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.list_set* }
%struct.list_set = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @list_set_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_set_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca %struct.list_set*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.ip_set*
  store %struct.ip_set* %6, %struct.ip_set** %3, align 8
  %7 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %8 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %7, i32 0, i32 1
  %9 = load %struct.list_set*, %struct.list_set** %8, align 8
  store %struct.list_set* %9, %struct.list_set** %4, align 8
  %10 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %11 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %10, i32 0, i32 0
  %12 = call i32 @write_lock_bh(i32* %11)
  %13 = load %struct.list_set*, %struct.list_set** %4, align 8
  %14 = call i32 @cleanup_entries(%struct.list_set* %13)
  %15 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 0
  %17 = call i32 @write_unlock_bh(i32* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.list_set*, %struct.list_set** %4, align 8
  %20 = getelementptr inbounds %struct.list_set, %struct.list_set* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IPSET_GC_PERIOD(i32 %21)
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %18, %25
  %27 = load %struct.list_set*, %struct.list_set** %4, align 8
  %28 = getelementptr inbounds %struct.list_set, %struct.list_set* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.list_set*, %struct.list_set** %4, align 8
  %31 = getelementptr inbounds %struct.list_set, %struct.list_set* %30, i32 0, i32 0
  %32 = call i32 @add_timer(%struct.TYPE_2__* %31)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @cleanup_entries(%struct.list_set*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
