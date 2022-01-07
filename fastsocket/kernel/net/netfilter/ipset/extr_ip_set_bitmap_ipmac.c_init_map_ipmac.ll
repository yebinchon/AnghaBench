; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_init_map_ipmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_init_map_ipmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i32, i32, i32, i32, i32 }

@IPSET_NO_TIMEOUT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.bitmap_ipmac*, i32, i32)* @init_map_ipmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_map_ipmac(%struct.ip_set* %0, %struct.bitmap_ipmac* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca %struct.bitmap_ipmac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store %struct.bitmap_ipmac* %1, %struct.bitmap_ipmac** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = sub nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  %14 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %15 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = call i32 @ip_set_alloc(i32 %17)
  %19 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %20 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %22 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %29 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %32 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %34 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %35 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %7, align 8
  %37 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %38 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %37, i32 0, i32 1
  store %struct.bitmap_ipmac* %36, %struct.bitmap_ipmac** %38, align 8
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %41 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %26, %25
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @ip_set_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
