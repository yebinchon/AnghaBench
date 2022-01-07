; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_slave.c_dsa_slave_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_slave_priv = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32*)* }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tx_packets\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tx_bytes\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"rx_packets\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rx_bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @dsa_slave_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_slave_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dsa_slave_priv*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dsa_slave_priv* %11, %struct.dsa_slave_priv** %7, align 8
  %12 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %13 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %12, i32 0, i32 1
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %13, align 8
  store %struct.dsa_switch* %14, %struct.dsa_switch** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ETH_SS_STATS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %3
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @strncpy(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @strncpy(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @strncpy(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 3, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @strncpy(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %44 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %46, align 8
  %48 = icmp ne i32 (%struct.dsa_switch*, i32, i32*)* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %18
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %51 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %53, align 8
  %55 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %56 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %7, align 8
  %57 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 4, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = call i32 %54(%struct.dsa_switch* %55, i32 %58, i32* %63)
  br label %65

65:                                               ; preds = %49, %18
  br label %66

66:                                               ; preds = %65, %3
  ret void
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
