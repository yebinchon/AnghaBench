; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_change_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_change_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@IFF_DEBUG = common dso_local global i32 0, align 4
@IFF_NOTRAILERS = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_DYNAMIC = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_PORTSEL = common dso_local global i32 0, align 4
@IFF_AUTOMEDIA = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_VOLATILE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@NETDEV_CHANGE = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_change_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IFF_DEBUG, align 4
  %16 = load i32, i32* @IFF_NOTRAILERS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IFF_NOARP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IFF_DYNAMIC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IFF_MULTICAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IFF_PORTSEL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IFF_AUTOMEDIA, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %14, %27
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_UP, align 4
  %33 = load i32, i32* @IFF_VOLATILE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IFF_PROMISC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = or i32 %28, %39
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = xor i32 %43, %44
  %46 = load i32, i32* @IFF_MULTICAST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load i32, i32* @IFF_MULTICAST, align 4
  %52 = call i32 @dev_change_rx_flags(%struct.net_device* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %2
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @dev_set_rx_mode(%struct.net_device* %54)
  store i32 0, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = xor i32 %56, %57
  %59 = load i32, i32* @IFF_UP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @IFF_UP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 (%struct.net_device*)* @dev_close, i32 (%struct.net_device*)* @dev_open
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 %68(%struct.net_device* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @dev_set_rx_mode(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %62
  br label %77

77:                                               ; preds = %76, %53
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFF_UP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %85, %88
  %90 = load i32, i32* @IFF_UP, align 4
  %91 = load i32, i32* @IFF_PROMISC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IFF_ALLMULTI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IFF_VOLATILE, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %89, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %84
  %101 = load i32, i32* @NETDEV_CHANGE, align 4
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @call_netdevice_notifiers(i32 %101, %struct.net_device* %102)
  br label %104

104:                                              ; preds = %100, %84, %77
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %105, %108
  %110 = load i32, i32* @IFF_PROMISC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %104
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @IFF_PROMISC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 -1
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @IFF_PROMISC, align 4
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @dev_set_promiscuity(%struct.net_device* %125, i32 %126)
  br label %128

128:                                              ; preds = %113, %104
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %129, %132
  %134 = load i32, i32* @IFF_ALLMULTI, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %128
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @IFF_ALLMULTI, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 -1
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* @IFF_ALLMULTI, align 4
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @dev_set_allmulti(%struct.net_device* %149, i32 %150)
  br label %152

152:                                              ; preds = %137, %128
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.net_device*, %struct.net_device** %3, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = xor i32 %153, %156
  %158 = load i32, i32* @IFF_UP, align 4
  %159 = load i32, i32* @IFF_RUNNING, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = and i32 %157, %161
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %152
  %166 = load i32, i32* @RTM_NEWLINK, align 4
  %167 = load %struct.net_device*, %struct.net_device** %3, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @rtmsg_ifinfo(i32 %166, %struct.net_device* %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %152
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @dev_change_rx_flags(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @dev_open(%struct.net_device*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @rtmsg_ifinfo(i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
