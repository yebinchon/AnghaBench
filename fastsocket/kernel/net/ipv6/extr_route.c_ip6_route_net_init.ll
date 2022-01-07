; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_14__, i32, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.dst_entry* }
%struct.dst_entry = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, %struct.dst_entry* }

@ENOMEM = common dso_local global i32 0, align 4
@ip6_dst_ops_template = common dso_local global i32 0, align 4
@ip6_null_entry_template = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@ip6_blk_hole_entry_template = common dso_local global i32 0, align 4
@ip6_prohibit_entry_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @ip6_route_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_route_net_init(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %9 = call i32 @memcpy(i32* %8, i32* @ip6_dst_ops_template, i32 4)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmemdup(i32* @ip6_null_entry_template, i32 16, i32 %10)
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  %13 = load %struct.net*, %struct.net** %2, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %15, align 8
  %16 = load %struct.net*, %struct.net** %2, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %95

22:                                               ; preds = %1
  %23 = load %struct.net*, %struct.net** %2, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = bitcast %struct.TYPE_16__* %26 to %struct.dst_entry*
  %28 = load %struct.net*, %struct.net** %2, align 8
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store %struct.dst_entry* %27, %struct.dst_entry** %34, align 8
  %35 = load %struct.net*, %struct.net** %2, align 8
  %36 = getelementptr inbounds %struct.net, %struct.net* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 4
  %38 = load %struct.net*, %struct.net** %2, align 8
  %39 = getelementptr inbounds %struct.net, %struct.net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32* %37, i32** %44, align 8
  %45 = load %struct.net*, %struct.net** %2, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load %struct.net*, %struct.net** %2, align 8
  %50 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 4096, i32* %52, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 %53, 2
  %55 = load %struct.net*, %struct.net** %2, align 8
  %56 = getelementptr inbounds %struct.net, %struct.net* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 60, %59
  %61 = load %struct.net*, %struct.net** %2, align 8
  %62 = getelementptr inbounds %struct.net, %struct.net* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 30, %65
  %67 = load %struct.net*, %struct.net** %2, align 8
  %68 = getelementptr inbounds %struct.net, %struct.net* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  store i32 %66, i32* %70, align 4
  %71 = load %struct.net*, %struct.net** %2, align 8
  %72 = getelementptr inbounds %struct.net, %struct.net* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  store i32 9, i32* %74, align 8
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 600, %75
  %77 = load %struct.net*, %struct.net** %2, align 8
  %78 = getelementptr inbounds %struct.net, %struct.net* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @IPV6_MIN_MTU, align 4
  %82 = sub nsw i32 %81, 20
  %83 = sub nsw i32 %82, 40
  %84 = load %struct.net*, %struct.net** %2, align 8
  %85 = getelementptr inbounds %struct.net, %struct.net* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 6
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* @HZ, align 4
  %89 = mul nsw i32 30, %88
  %90 = load %struct.net*, %struct.net** %2, align 8
  %91 = getelementptr inbounds %struct.net, %struct.net* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %95, %22
  %94 = load i32, i32* %3, align 4
  ret i32 %94

95:                                               ; preds = %21
  br label %93
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
