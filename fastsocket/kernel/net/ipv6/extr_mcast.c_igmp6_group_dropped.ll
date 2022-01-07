; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_group_dropped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_group_dropped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@MAF_LOADED = common dso_local global i32 0, align 4
@MAF_NOREPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @igmp6_group_dropped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_group_dropped(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %6 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %7 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load i32, i32* @MAX_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %16 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %19 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAF_LOADED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %1
  %25 = load i32, i32* @MAF_LOADED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %32 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %31, i32 0, i32 5
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @ndisc_mc_map(i32* %32, i8* %14, %struct.net_device* %33, i32 0)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_mc_delete(%struct.net_device* %37, i8* %14, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %36, %24
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %45 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MAF_NOREPORT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %77

51:                                               ; preds = %43
  %52 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %53 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %56 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %63 = call i32 @igmp6_leave_group(%struct.ifmcaddr6* %62)
  br label %64

64:                                               ; preds = %61, %51
  %65 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %66 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %65, i32 0, i32 1
  %67 = call i32 @spin_lock_bh(i32* %66)
  %68 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %69 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %68, i32 0, i32 3
  %70 = call i64 @del_timer(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %74 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %73, i32 0, i32 2
  %75 = call i32 @atomic_dec(i32* %74)
  br label %76

76:                                               ; preds = %72, %64
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %79 = call i32 @ip6_mc_clear_src(%struct.ifmcaddr6* %78)
  %80 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %81 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i64 @ndisc_mc_map(i32*, i8*, %struct.net_device*, i32) #2

declare dso_local i32 @dev_mc_delete(%struct.net_device*, i8*, i32, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @igmp6_leave_group(%struct.ifmcaddr6*) #2

declare dso_local i64 @del_timer(i32*) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @ip6_mc_clear_src(%struct.ifmcaddr6*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
