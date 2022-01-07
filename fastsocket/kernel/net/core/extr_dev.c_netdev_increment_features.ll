; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_increment_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netdev_increment_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETIF_F_GEN_CSUM = common dso_local global i64 0, align 8
@NETIF_F_ALL_CSUM = common dso_local global i64 0, align 8
@NETIF_F_VLAN_CHALLENGED = common dso_local global i64 0, align 8
@NETIF_F_ONE_FOR_ALL = common dso_local global i64 0, align 8
@NETIF_F_ALL_FOR_ALL = common dso_local global i64 0, align 8
@NETIF_F_NO_CSUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @netdev_increment_features(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NETIF_F_GEN_CSUM, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i64, i64* @NETIF_F_ALL_CSUM, align 8
  %13 = load i64, i64* %6, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i64, i64* @NETIF_F_VLAN_CHALLENGED, align 8
  %17 = load i64, i64* %6, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @NETIF_F_ONE_FOR_ALL, align 8
  %21 = load i64, i64* @NETIF_F_ALL_CSUM, align 8
  %22 = or i64 %20, %21
  %23 = and i64 %19, %22
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* %4, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @NETIF_F_ALL_FOR_ALL, align 8
  %30 = xor i64 %29, -1
  %31 = or i64 %28, %30
  %32 = load i64, i64* %4, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @NETIF_F_ALL_CSUM, align 8
  %36 = load i64, i64* @NETIF_F_NO_CSUM, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = and i64 %34, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load i64, i64* @NETIF_F_NO_CSUM, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %4, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %41, %15
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @NETIF_F_GEN_CSUM, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i64, i64* @NETIF_F_ALL_CSUM, align 8
  %53 = load i64, i64* @NETIF_F_GEN_CSUM, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %4, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
