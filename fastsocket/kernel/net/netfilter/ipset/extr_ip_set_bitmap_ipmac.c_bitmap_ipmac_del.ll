; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i32 }
%struct.ipmac = type { i32 }
%struct.ipmac_elem = type { i64 }

@MAC_EMPTY = common dso_local global i64 0, align 8
@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i8*, i32, i32)* @bitmap_ipmac_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_del(%struct.ip_set* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_ipmac*, align 8
  %11 = alloca %struct.ipmac*, align 8
  %12 = alloca %struct.ipmac_elem*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %14 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %13, i32 0, i32 0
  %15 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %14, align 8
  store %struct.bitmap_ipmac* %15, %struct.bitmap_ipmac** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.ipmac*
  store %struct.ipmac* %17, %struct.ipmac** %11, align 8
  %18 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %10, align 8
  %19 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %20 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ipmac_elem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %18, i32 %21)
  store %struct.ipmac_elem* %22, %struct.ipmac_elem** %12, align 8
  %23 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %24 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC_EMPTY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %4
  %32 = load i64, i64* @MAC_EMPTY, align 8
  %33 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %34 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.ipmac_elem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
