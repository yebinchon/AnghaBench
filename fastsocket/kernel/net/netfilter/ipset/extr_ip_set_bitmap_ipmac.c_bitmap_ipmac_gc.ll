; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ipmac_telem = type { i64, i32 }

@MAC_FILLED = common dso_local global i64 0, align 8
@MAC_EMPTY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bitmap_ipmac_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_ipmac_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca %struct.bitmap_ipmac*, align 8
  %5 = alloca %struct.ipmac_telem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.ip_set*
  store %struct.ip_set* %9, %struct.ip_set** %3, align 8
  %10 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %11 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %10, i32 0, i32 1
  %12 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %11, align 8
  store %struct.bitmap_ipmac* %12, %struct.bitmap_ipmac** %4, align 8
  %13 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %4, align 8
  %14 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %4, align 8
  %17 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %21 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %20, i32 0, i32 0
  %22 = call i32 @read_lock_bh(i32* %21)
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %47, %1
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %28, i64 %29)
  store %struct.ipmac_telem* %30, %struct.ipmac_telem** %5, align 8
  %31 = load %struct.ipmac_telem*, %struct.ipmac_telem** %5, align 8
  %32 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAC_FILLED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.ipmac_telem*, %struct.ipmac_telem** %5, align 8
  %38 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ip_set_timeout_expired(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @MAC_EMPTY, align 8
  %44 = load %struct.ipmac_telem*, %struct.ipmac_telem** %5, align 8
  %45 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %36, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %52 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %51, i32 0, i32 0
  %53 = call i32 @read_unlock_bh(i32* %52)
  %54 = load i64, i64* @jiffies, align 8
  %55 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %4, align 8
  %56 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @IPSET_GC_PERIOD(i32 %57)
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %54, %61
  %63 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %4, align 8
  %64 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %4, align 8
  %67 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %66, i32 0, i32 2
  %68 = call i32 @add_timer(%struct.TYPE_2__* %67)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i64) #1

declare dso_local i64 @ip_set_timeout_expired(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
