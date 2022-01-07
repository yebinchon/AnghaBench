; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_rtx_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_rtx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@CMDR = common dso_local global i32 0, align 4
@CR_TE = common dso_local global i32 0, align 4
@CR_RE = common dso_local global i32 0, align 4
@MAX_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_rtx_disable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @CMDR, align 4
  %10 = call i32 @read_nic_byte(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @CMDR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CR_TE, align 4
  %15 = load i32, i32* @CR_RE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = call i32 @write_nic_byte(%struct.net_device* %11, i32 %12, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @force_pci_posting(%struct.net_device* %20)
  %22 = call i32 @mdelay(i32 30)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %37, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @skb_queue_purge(i32* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %23

40:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @skb_queue_purge(i32* %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 0
  %61 = call i32 @skb_queue_purge(i32* %60)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
