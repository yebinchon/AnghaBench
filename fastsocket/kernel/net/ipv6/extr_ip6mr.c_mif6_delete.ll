; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_mif6_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_mif6_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.mif_device* }
%struct.mif_device = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@mrt_lock = common dso_local global i32 0, align 4
@MIFF_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32)* @mif6_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mif6_delete(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mif_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @EADDRNOTAVAIL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %12
  %23 = load %struct.net*, %struct.net** %4, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.mif_device*, %struct.mif_device** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mif_device, %struct.mif_device* %26, i64 %28
  store %struct.mif_device* %29, %struct.mif_device** %6, align 8
  %30 = call i32 @write_lock_bh(i32* @mrt_lock)
  %31 = load %struct.mif_device*, %struct.mif_device** %6, align 8
  %32 = getelementptr inbounds %struct.mif_device, %struct.mif_device* %31, i32 0, i32 1
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  store %struct.net_device* %33, %struct.net_device** %7, align 8
  %34 = load %struct.mif_device*, %struct.mif_device** %6, align 8
  %35 = getelementptr inbounds %struct.mif_device, %struct.mif_device* %34, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %22
  %39 = call i32 @write_unlock_bh(i32* @mrt_lock)
  %40 = load i32, i32* @EADDRNOTAVAIL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %99

42:                                               ; preds = %22
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.net*, %struct.net** %4, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %63, %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.net*, %struct.net** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @MIF_EXISTS(%struct.net* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %53

66:                                               ; preds = %61, %53
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.net*, %struct.net** %4, align 8
  %70 = getelementptr inbounds %struct.net, %struct.net* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %42
  %73 = call i32 @write_unlock_bh(i32* @mrt_lock)
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = call i32 @dev_set_allmulti(%struct.net_device* %74, i32 -1)
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %76)
  store %struct.inet6_dev* %77, %struct.inet6_dev** %8, align 8
  %78 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %79 = icmp ne %struct.inet6_dev* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %82 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.mif_device*, %struct.mif_device** %6, align 8
  %88 = getelementptr inbounds %struct.mif_device, %struct.mif_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MIFF_REGISTER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = call i32 @unregister_netdevice(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = call i32 @dev_put(%struct.net_device* %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %38, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i64 @MIF_EXISTS(%struct.net*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
