; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_addrconf_dst_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_addrconf_dst_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.neighbour*, i32, i32, %struct.inet6_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.neighbour = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@ip6_input = common dso_local global i32 0, align 4
@ip6_output = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@RTAX_HOPLIMIT = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@RT6_TABLE_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt6_info* @addrconf_dst_alloc(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.neighbour*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @dev_net(i32 %13)
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = load %struct.net*, %struct.net** %8, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call %struct.rt6_info* @ip6_dst_alloc(i32* %17)
  store %struct.rt6_info* %18, %struct.rt6_info** %9, align 8
  %19 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %20 = icmp eq %struct.rt6_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.rt6_info* @ERR_PTR(i32 %23)
  store %struct.rt6_info* %24, %struct.rt6_info** %4, align 8
  br label %155

25:                                               ; preds = %3
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_hold(i32 %28)
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %31 = call i32 @in6_dev_hold(%struct.inet6_dev* %30)
  %32 = load i32, i32* @DST_HOST, align 4
  %33 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %34 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @ip6_input, align 4
  %38 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %39 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @ip6_output, align 4
  %43 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %44 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32 %42, i32* %46, align 8
  %47 = load %struct.net*, %struct.net** %8, align 8
  %48 = getelementptr inbounds %struct.net, %struct.net* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %51 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %53 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %54 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %53, i32 0, i32 7
  store %struct.inet6_dev* %52, %struct.inet6_dev** %54, align 8
  %55 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %56 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ipv6_get_mtu(i32 %57)
  %59 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %60 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @RTAX_MTU, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %58, i32* %67, align 4
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %70 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @dst_mtu(%struct.TYPE_9__* %71)
  %73 = call i32 @ipv6_advmss(%struct.net* %68, i32 %72)
  %74 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %75 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @RTAX_ADVMSS, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %73, i32* %82, align 4
  %83 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %84 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 -1, i32* %91, align 4
  %92 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %93 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 8
  %96 = load i32, i32* @RTF_UP, align 4
  %97 = load i32, i32* @RTF_NONEXTHOP, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %100 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %25
  %104 = load i32, i32* @RTF_ANYCAST, align 4
  %105 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %106 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %115

109:                                              ; preds = %25
  %110 = load i32, i32* @RTF_LOCAL, align 4
  %111 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %112 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %117 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %120 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %119, i32 0, i32 5
  %121 = call %struct.neighbour* @ndisc_get_neigh(i32 %118, i32* %120)
  store %struct.neighbour* %121, %struct.neighbour** %10, align 8
  %122 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %123 = call i64 @IS_ERR(%struct.neighbour* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %115
  %126 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %127 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = call i32 @dst_free(%struct.TYPE_9__* %128)
  %130 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %131 = bitcast %struct.neighbour* %130 to %struct.rt6_info*
  store %struct.rt6_info* %131, %struct.rt6_info** %4, align 8
  br label %155

132:                                              ; preds = %115
  %133 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %134 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %135 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %134, i32 0, i32 4
  store %struct.neighbour* %133, %struct.neighbour** %135, align 8
  %136 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %137 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %140 = call i32 @ipv6_addr_copy(i32* %138, %struct.in6_addr* %139)
  %141 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %142 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 128, i32* %143, align 4
  %144 = load %struct.net*, %struct.net** %8, align 8
  %145 = load i32, i32* @RT6_TABLE_LOCAL, align 4
  %146 = call i32 @fib6_get_table(%struct.net* %144, i32 %145)
  %147 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %148 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %150 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = call i32 @atomic_set(i32* %152, i32 1)
  %154 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  store %struct.rt6_info* %154, %struct.rt6_info** %4, align 8
  br label %155

155:                                              ; preds = %132, %125, %21
  %156 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  ret %struct.rt6_info* %156
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(i32*) #1

declare dso_local %struct.rt6_info* @ERR_PTR(i32) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @in6_dev_hold(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_get_mtu(i32) #1

declare dso_local i32 @ipv6_advmss(%struct.net*, i32) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_9__*) #1

declare dso_local %struct.neighbour* @ndisc_get_neigh(i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @dst_free(%struct.TYPE_9__*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @fib6_get_table(%struct.net*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
