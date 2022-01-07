; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_r8180_set_mac_adr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_r8180_set_mac_adr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8180_set_mac_adr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8180_priv* %8, %struct.r8180_priv** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %11, i32 0, i32 0
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memcpy(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IW_MODE_MASTER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %2
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @rtl8180_down(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @rtl8180_up(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %53 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %52, i32 0, i32 0
  %54 = call i32 @up(i32* %53)
  ret i32 0
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtl8180_down(%struct.net_device*) #1

declare dso_local i32 @rtl8180_up(%struct.net_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
