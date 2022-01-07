; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_port* }
%struct.bitmap_port = type { i64*, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@IPSET_ELEM_UNSET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bitmap_port_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_port_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca %struct.bitmap_port*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.ip_set*
  store %struct.ip_set* %9, %struct.ip_set** %3, align 8
  %10 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %11 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %10, i32 0, i32 1
  %12 = load %struct.bitmap_port*, %struct.bitmap_port** %11, align 8
  store %struct.bitmap_port* %12, %struct.bitmap_port** %4, align 8
  %13 = load %struct.bitmap_port*, %struct.bitmap_port** %4, align 8
  %14 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load %struct.bitmap_port*, %struct.bitmap_port** %4, align 8
  %17 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bitmap_port*, %struct.bitmap_port** %4, align 8
  %20 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %24 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %23, i32 0, i32 0
  %25 = call i32 @read_lock_bh(i32* %24)
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %43, %1
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ip_set_timeout_expired(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i64, i64* @IPSET_ELEM_UNSET, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %48 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %47, i32 0, i32 0
  %49 = call i32 @read_unlock_bh(i32* %48)
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.bitmap_port*, %struct.bitmap_port** %4, align 8
  %52 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IPSET_GC_PERIOD(i32 %53)
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %50, %57
  %59 = load %struct.bitmap_port*, %struct.bitmap_port** %4, align 8
  %60 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.bitmap_port*, %struct.bitmap_port** %4, align 8
  %63 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %62, i32 0, i32 3
  %64 = call i32 @add_timer(%struct.TYPE_2__* %63)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ip_set_timeout_expired(i64) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
