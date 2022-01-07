; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_update_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_update_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@MSR = common dso_local global i32 0, align 4
@MSR_LINK_MASK = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@MSR_LINK_MANAGED = common dso_local global i32 0, align 4
@MSR_LINK_SHIFT = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@MSR_LINK_MASTER = common dso_local global i32 0, align 4
@MSR_LINK_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_update_msr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @MSR, align 4
  %9 = call i32 @read_nic_byte(%struct.net_device* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @MSR_LINK_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_LINKED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %1
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IW_MODE_INFRA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @MSR_LINK_MANAGED, align 4
  %31 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %65

35:                                               ; preds = %21
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IW_MODE_ADHOC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* @MSR_LINK_ADHOC, align 4
  %45 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %64

49:                                               ; preds = %35
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IW_MODE_MASTER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @MSR_LINK_MASTER, align 4
  %59 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %49
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %29
  br label %72

66:                                               ; preds = %1
  %67 = load i32, i32* @MSR_LINK_NONE, align 4
  %68 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %65
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = load i32, i32* @MSR, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @write_nic_byte(%struct.net_device* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
