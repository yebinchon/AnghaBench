; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_MlmeDisassociateRequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_MlmeDisassociateRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@IEEE80211_NOLINK = common dso_local global i32 0, align 4
@RT_OP_MODE_NO_LINK = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4
@MSR_LINK_MANAGED = common dso_local global i32 0, align 4
@MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@MSR_LINK_MASTER = common dso_local global i32 0, align 4
@MSR_LINK_NONE = common dso_local global i32 0, align 4
@BSSIDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*, i32)* @MlmeDisassociateRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MlmeDisassociateRequest(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %7, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RemovePeerTS(%struct.TYPE_6__* %15, i32* %16)
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SendDisassociation(%struct.TYPE_6__* %20, i32* %21, i32 %22)
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @memcpy(i32* %29, i32* %30, i32 6)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %117

33:                                               ; preds = %3
  %34 = load i32, i32* @IEEE80211_NOLINK, align 4
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %52, %33
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 34, i32* %51, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* @RT_OP_MODE_NO_LINK, align 4
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @MSR, align 4
  %64 = call i32 @read_nic_byte(%struct.net_device* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 252
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %80 [
    i32 128, label %68
    i32 129, label %72
    i32 130, label %76
  ]

68:                                               ; preds = %55
  %69 = load i32, i32* @MSR_LINK_MANAGED, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %84

72:                                               ; preds = %55
  %73 = load i32, i32* @MSR_LINK_ADHOC, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %84

76:                                               ; preds = %55
  %77 = load i32, i32* @MSR_LINK_MASTER, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %84

80:                                               ; preds = %55
  %81 = load i32, i32* @MSR_LINK_NONE, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %76, %72, %68
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = load i32, i32* @MSR, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @write_nic_byte(%struct.net_device* %85, i32 %86, i32 %87)
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @ieee80211_disassociate(%struct.TYPE_6__* %91)
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load i64, i64* @BSSIDR, align 8
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @write_nic_word(%struct.net_device* %93, i64 %94, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = load i64, i64* @BSSIDR, align 8
  %106 = add nsw i64 %105, 2
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write_nic_dword(%struct.net_device* %104, i64 %106, i32 %115)
  br label %117

117:                                              ; preds = %84, %3
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RemovePeerTS(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @SendDisassociation(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32* @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ieee80211_disassociate(%struct.TYPE_6__*) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
