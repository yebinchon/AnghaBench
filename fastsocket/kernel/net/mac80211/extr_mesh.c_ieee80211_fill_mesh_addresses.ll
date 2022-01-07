; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_fill_mesh_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_fill_mesh_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32, i32, i32, i32 }

@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_fill_mesh_addresses(%struct.ieee80211_hdr* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i64 @is_multicast_ether_addr(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32 %21, i32* %22, i32 %23)
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %27, i32* %28, i32 %29)
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %33, i32* %34, i32 %35)
  store i32 24, i32* %5, align 4
  br label %68

37:                                               ; preds = %4
  %38 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %39 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memset(i32 %47, i32 0, i32 %48)
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %52, i32* %53, i32 %54)
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %58, i32* %59, i32 %60)
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32 %64, i32* %65, i32 %66)
  store i32 30, i32* %5, align 4
  br label %68

68:                                               ; preds = %37, %13
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
