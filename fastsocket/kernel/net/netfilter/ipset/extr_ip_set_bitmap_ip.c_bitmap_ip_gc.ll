; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_ip* }
%struct.bitmap_ip = type { i64*, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@IPSET_ELEM_UNSET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bitmap_ip_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_ip_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca %struct.bitmap_ip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.ip_set*
  store %struct.ip_set* %8, %struct.ip_set** %3, align 8
  %9 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %10 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %9, i32 0, i32 1
  %11 = load %struct.bitmap_ip*, %struct.bitmap_ip** %10, align 8
  store %struct.bitmap_ip* %11, %struct.bitmap_ip** %4, align 8
  %12 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %13 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %5, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 0
  %17 = call i32 @read_lock_bh(i32* %16)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %37, %1
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %21 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @ip_set_timeout_expired(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i64, i64* @IPSET_ELEM_UNSET, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %18

40:                                               ; preds = %18
  %41 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %42 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %41, i32 0, i32 0
  %43 = call i32 @read_unlock_bh(i32* %42)
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %46 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IPSET_GC_PERIOD(i32 %47)
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %44, %51
  %53 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %54 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.bitmap_ip*, %struct.bitmap_ip** %4, align 8
  %57 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %56, i32 0, i32 2
  %58 = call i32 @add_timer(%struct.TYPE_2__* %57)
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
