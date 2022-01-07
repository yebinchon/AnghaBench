; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_group_added.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_group_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@MAF_LOADED = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@MAF_NOREPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @igmp6_group_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_group_added(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %7 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %8 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load i32, i32* @MAX_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %17 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %16, i32 0, i32 3
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MAF_LOADED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @MAF_LOADED, align 4
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %32 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %31, i32 0, i32 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @ndisc_mc_map(i32* %32, i8* %15, %struct.net_device* %33, i32 0)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_mc_add(%struct.net_device* %37, i8* %15, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %25
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %45 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %44, i32 0, i32 3
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %55 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAF_NOREPORT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %43
  store i32 1, i32* %6, align 4
  br label %82

61:                                               ; preds = %53
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %63 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i64 @MLD_V1_SEEN(%struct.TYPE_3__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %69 = call i32 @igmp6_join_group(%struct.ifmcaddr6* %68)
  store i32 1, i32* %6, align 4
  br label %82

70:                                               ; preds = %61
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %72 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %77 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %79 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i32 @mld_ifc_event(%struct.TYPE_3__* %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %70, %67, %60
  %83 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i64 @ndisc_mc_map(i32*, i8*, %struct.net_device*, i32) #2

declare dso_local i32 @dev_mc_add(%struct.net_device*, i8*, i32, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i64 @MLD_V1_SEEN(%struct.TYPE_3__*) #2

declare dso_local i32 @igmp6_join_group(%struct.ifmcaddr6*) #2

declare dso_local i32 @mld_ifc_event(%struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
