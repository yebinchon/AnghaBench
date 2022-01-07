; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_master_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_teql.c_teql_master_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }
%struct.Qdisc = type { i32 }
%struct.teql_master = type { %struct.TYPE_2__*, %struct.Qdisc* }
%struct.TYPE_2__ = type { i32, i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@FMASK = common dso_local global i32 0, align 4
@LL_MAX_HEADER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @teql_master_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_master_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.teql_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.teql_master* @netdev_priv(%struct.net_device* %9)
  store %struct.teql_master* %10, %struct.teql_master** %5, align 8
  store i32 65534, i32* %6, align 4
  %11 = load i32, i32* @IFF_NOARP, align 4
  %12 = load i32, i32* @IFF_MULTICAST, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %15 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %14, i32 0, i32 1
  %16 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %17 = icmp eq %struct.Qdisc* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EUNATCH, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %121

21:                                               ; preds = %1
  %22 = load i32, i32* @FMASK, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %24 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %23, i32 0, i32 1
  %25 = load %struct.Qdisc*, %struct.Qdisc** %24, align 8
  store %struct.Qdisc* %25, %struct.Qdisc** %4, align 8
  br label %26

26:                                               ; preds = %90, %21
  %27 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %28 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %27)
  store %struct.net_device* %28, %struct.net_device** %8, align 8
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = icmp eq %struct.net_device* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EUNATCH, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %121

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LL_MAX_HEADER, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %121

53:                                               ; preds = %44
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IFF_POINTOPOINT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @IFF_POINTOPOINT, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IFF_BROADCAST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @IFF_BROADCAST, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %65
  %78 = load %struct.net_device*, %struct.net_device** %8, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IFF_MULTICAST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @IFF_MULTICAST, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %84, %77
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %92 = call %struct.Qdisc* @NEXT_SLAVE(%struct.Qdisc* %91)
  store %struct.Qdisc* %92, %struct.Qdisc** %4, align 8
  %93 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %94 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %93, i32 0, i32 1
  %95 = load %struct.Qdisc*, %struct.Qdisc** %94, align 8
  %96 = icmp ne %struct.Qdisc* %92, %95
  br i1 %96, label %26, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %100 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %104 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FMASK, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %114 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.teql_master*, %struct.teql_master** %5, align 8
  %118 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = call i32 @netif_start_queue(%struct.TYPE_2__* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %97, %50, %31, %18
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.teql_master* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @NEXT_SLAVE(%struct.Qdisc*) #1

declare dso_local i32 @netif_start_queue(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
