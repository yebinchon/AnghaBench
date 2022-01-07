; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_rt_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_rt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32*, i32, i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.rt6_info*)* @ip6_rt_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @ip6_rt_copy(%struct.rt6_info* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.rt6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %2, align 8
  %5 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %6 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.net* @dev_net(i32 %7)
  store %struct.net* %8, %struct.net** %3, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call %struct.rt6_info* @ip6_dst_alloc(i32* %11)
  store %struct.rt6_info* %12, %struct.rt6_info** %4, align 8
  %13 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %14 = icmp ne %struct.rt6_info* %13, null
  br i1 %14, label %15, label %133

15:                                               ; preds = %1
  %16 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %17 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %22 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i32 %20, i32* %24, align 4
  %25 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %26 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %31 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i32 %29, i32* %33, align 8
  %34 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %35 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %40 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @RTAX_MAX, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(i32* %38, i32* %43, i32 %47)
  %49 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %50 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %59 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %64 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %62, i64* %66, align 8
  %67 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %68 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %15
  %74 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %75 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_hold(i64 %78)
  br label %80

80:                                               ; preds = %73, %15
  %81 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %82 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %85 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  %86 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %87 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %92 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @in6_dev_hold(i64 %93)
  br label %95

95:                                               ; preds = %90, %80
  %96 = load i32, i32* @jiffies, align 4
  %97 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %98 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %102 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %104 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %103, i32 0, i32 6
  %105 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %106 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %105, i32 0, i32 6
  %107 = call i32 @ipv6_addr_copy(i32* %104, i32* %106)
  %108 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %109 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RTF_EXPIRES, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %115 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %117 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %119 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %118, i32 0, i32 4
  %120 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %121 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %120, i32 0, i32 4
  %122 = call i32 @memcpy(i32* %119, i32* %121, i32 4)
  %123 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %124 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %123, i32 0, i32 2
  %125 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %126 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %125, i32 0, i32 2
  %127 = call i32 @memcpy(i32* %124, i32* %126, i32 4)
  %128 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %129 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %132 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %95, %1
  %134 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  ret %struct.rt6_info* %134
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_hold(i64) #1

declare dso_local i32 @in6_dev_hold(i64) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
