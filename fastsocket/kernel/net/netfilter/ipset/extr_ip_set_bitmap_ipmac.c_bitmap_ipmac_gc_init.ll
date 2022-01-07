; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_gc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_gc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@bitmap_ipmac_gc = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_set*)* @bitmap_ipmac_gc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_ipmac_gc_init(%struct.ip_set* %0) #0 {
  %2 = alloca %struct.ip_set*, align 8
  %3 = alloca %struct.bitmap_ipmac*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %2, align 8
  %4 = load %struct.ip_set*, %struct.ip_set** %2, align 8
  %5 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %4, i32 0, i32 0
  %6 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %5, align 8
  store %struct.bitmap_ipmac* %6, %struct.bitmap_ipmac** %3, align 8
  %7 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %8 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %7, i32 0, i32 0
  %9 = call i32 @init_timer(%struct.TYPE_3__* %8)
  %10 = load %struct.ip_set*, %struct.ip_set** %2, align 8
  %11 = ptrtoint %struct.ip_set* %10 to i64
  %12 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %13 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load i32, i32* @bitmap_ipmac_gc, align 4
  %16 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %17 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %21 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IPSET_GC_PERIOD(i32 %22)
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %19, %26
  %28 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %29 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  %31 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %32 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %31, i32 0, i32 0
  %33 = call i32 @add_timer(%struct.TYPE_3__* %32)
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
