; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_tdel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_tdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i32 }
%struct.ipmac = type { i32 }
%struct.ipmac_telem = type { i64 }

@MAC_EMPTY = common dso_local global i64 0, align 8
@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i8*, i32, i32)* @bitmap_ipmac_tdel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_tdel(%struct.ip_set* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_ipmac*, align 8
  %11 = alloca %struct.ipmac*, align 8
  %12 = alloca %struct.ipmac_telem*, align 8
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
  %22 = call %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %18, i32 %21)
  store %struct.ipmac_telem* %22, %struct.ipmac_telem** %12, align 8
  %23 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %24 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC_EMPTY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  %29 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %10, align 8
  %30 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %31 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @bitmap_expired(%struct.bitmap_ipmac* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %4
  %36 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %28
  %39 = load i64, i64* @MAC_EMPTY, align 8
  %40 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %41 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i32) #1

declare dso_local i64 @bitmap_expired(%struct.bitmap_ipmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
