; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_pmtu_discovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_pmtu_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.rt6_info = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@RTF_CACHE = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_FEATURE_ALLFRAG = common dso_local global i64 0, align 8
@RTAX_FEATURES = common dso_local global i32 0, align 4
@RTF_MODIFIED = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@RTF_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_pmtu_discovery(%struct.in6_addr* %0, %struct.in6_addr* %1, %struct.net_device* %2, i64 %3) #0 {
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.rt6_info*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.net*, %struct.net** %11, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rt6_info* @rt6_lookup(%struct.net* %15, %struct.in6_addr* %16, %struct.in6_addr* %17, i32 %20, i32 0)
  store %struct.rt6_info* %21, %struct.rt6_info** %9, align 8
  %22 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %23 = icmp eq %struct.rt6_info* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %168

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %28 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = call i64 @dst_mtu(%struct.TYPE_11__* %29)
  %31 = icmp sge i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %163

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @IPV6_MIN_MTU, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @IPV6_MIN_MTU, align 8
  store i64 %38, i64* %8, align 8
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %41 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @dst_confirm(%struct.TYPE_11__* %42)
  %44 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %45 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RTF_CACHE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %53 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* @RTAX_MTU, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %51, i64* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %50
  %64 = load i64, i64* @RTAX_FEATURE_ALLFRAG, align 8
  %65 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %66 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* @RTAX_FEATURES, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %64
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %63, %50
  %77 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %78 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.net*, %struct.net** %11, align 8
  %81 = getelementptr inbounds %struct.net, %struct.net* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dst_set_expires(%struct.TYPE_11__* %79, i32 %84)
  %86 = load i32, i32* @RTF_MODIFIED, align 4
  %87 = load i32, i32* @RTF_EXPIRES, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %90 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %163

93:                                               ; preds = %39
  %94 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %95 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %100 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RTF_NONEXTHOP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %107 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %108 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %109 = call %struct.rt6_info* @rt6_alloc_cow(%struct.rt6_info* %106, %struct.in6_addr* %107, %struct.in6_addr* %108)
  store %struct.rt6_info* %109, %struct.rt6_info** %10, align 8
  br label %114

110:                                              ; preds = %98, %93
  %111 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %112 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %113 = call %struct.rt6_info* @rt6_alloc_clone(%struct.rt6_info* %111, %struct.in6_addr* %112)
  store %struct.rt6_info* %113, %struct.rt6_info** %10, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %116 = icmp ne %struct.rt6_info* %115, null
  br i1 %116, label %117, label %162

117:                                              ; preds = %114
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %120 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* @RTAX_MTU, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  store i64 %118, i64* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %117
  %131 = load i64, i64* @RTAX_FEATURE_ALLFRAG, align 8
  %132 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %133 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* @RTAX_FEATURES, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = or i64 %141, %131
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %130, %117
  %144 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %145 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.net*, %struct.net** %11, align 8
  %148 = getelementptr inbounds %struct.net, %struct.net* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dst_set_expires(%struct.TYPE_11__* %146, i32 %151)
  %153 = load i32, i32* @RTF_DYNAMIC, align 4
  %154 = load i32, i32* @RTF_EXPIRES, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %157 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %161 = call i32 @ip6_ins_rt(%struct.rt6_info* %160)
  br label %162

162:                                              ; preds = %143, %114
  br label %163

163:                                              ; preds = %162, %76, %32
  %164 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %165 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = call i32 @dst_release(%struct.TYPE_11__* %166)
  br label %168

168:                                              ; preds = %163, %24
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(%struct.net*, %struct.in6_addr*, %struct.in6_addr*, i32, i32) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_11__*) #1

declare dso_local i32 @dst_confirm(%struct.TYPE_11__*) #1

declare dso_local i32 @dst_set_expires(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.rt6_info* @rt6_alloc_cow(%struct.rt6_info*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.rt6_info* @rt6_alloc_clone(%struct.rt6_info*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_ins_rt(%struct.rt6_info*) #1

declare dso_local i32 @dst_release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
