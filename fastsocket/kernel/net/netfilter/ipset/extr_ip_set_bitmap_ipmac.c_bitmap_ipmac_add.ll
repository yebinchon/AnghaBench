; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i32 }
%struct.ipmac = type { i32, i32 }
%struct.ipmac_elem = type { i32, i32 }

@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i8*, i32, i32)* @bitmap_ipmac_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_add(%struct.ip_set* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %20 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ipmac_elem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %18, i32 %21)
  store %struct.ipmac_elem* %22, %struct.ipmac_elem** %12, align 8
  %23 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %24 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %68 [
    i32 128, label %26
    i32 129, label %45
    i32 130, label %48
  ]

26:                                               ; preds = %4
  %27 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %28 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %26
  %35 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %36 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %39 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %44 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %43, i32 0, i32 0
  store i32 129, i32* %44, align 4
  br label %68

45:                                               ; preds = %4
  %46 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %69

48:                                               ; preds = %4
  %49 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %50 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %55 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %58 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %56, i32 %59, i32 %60)
  %62 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %63 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %62, i32 0, i32 0
  store i32 129, i32* %63, align 4
  br label %67

64:                                               ; preds = %48
  %65 = load %struct.ipmac_elem*, %struct.ipmac_elem** %12, align 8
  %66 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %65, i32 0, i32 0
  store i32 128, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %4, %34
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %45, %31
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.ipmac_elem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
