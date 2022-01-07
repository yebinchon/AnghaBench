; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mcast_set_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mcast_set_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list*, i32 }
%struct.adapter = type { i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_DIRECTED = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@MAC_BCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_ALLMCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@MAC_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @slic_mcast_set_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_mcast_set_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @netdev_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.adapter*
  store %struct.adapter* %11, %struct.adapter** %3, align 8
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %14, align 8
  store %struct.dev_mc_list* %15, %struct.dev_mc_list** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = call i32 @ASSERT(%struct.adapter* %19)
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %52, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %27 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %26, i32 0, i32 2
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %6, align 8
  %29 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %30 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @slic_mcast_add_list(%struct.adapter* %34, i8* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %55

41:                                               ; preds = %33
  br label %45

42:                                               ; preds = %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %41
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @slic_mcast_set_bit(%struct.adapter* %46, i8* %47)
  %49 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %50 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %49, i32 0, i32 1
  %51 = load %struct.dev_mc_list*, %struct.dev_mc_list** %50, align 8
  store %struct.dev_mc_list* %51, %struct.dev_mc_list** %7, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %21

55:                                               ; preds = %42, %40, %21
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %132

63:                                               ; preds = %55
  %64 = load i32, i32* @MAC_DIRECTED, align 4
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %124

71:                                               ; preds = %63
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFF_BROADCAST, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @MAC_BCAST, align 4
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_PROMISC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @MAC_PROMISC, align 4
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IFF_ALLMULTI, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* @MAC_ALLMCAST, align 4
  %106 = load %struct.adapter*, %struct.adapter** %3, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IFF_MULTICAST, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32, i32* @MAC_MCAST, align 4
  %119 = load %struct.adapter*, %struct.adapter** %3, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %110
  br label %124

124:                                              ; preds = %123, %63
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.adapter*, %struct.adapter** %3, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = call i32 @slic_config_set(%struct.adapter* %130, i32 1)
  br label %140

132:                                              ; preds = %55
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @STATUS_SUCCESS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = call i32 @slic_mcast_set_mask(%struct.adapter* %137)
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %124
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT(%struct.adapter*) #1

declare dso_local i32 @slic_mcast_add_list(%struct.adapter*, i8*) #1

declare dso_local i32 @slic_mcast_set_bit(%struct.adapter*, i8*) #1

declare dso_local i32 @slic_config_set(%struct.adapter*, i32) #1

declare dso_local i32 @slic_mcast_set_mask(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
