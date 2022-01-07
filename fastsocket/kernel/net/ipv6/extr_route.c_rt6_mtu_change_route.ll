; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_mtu_change_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_mtu_change_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.rt6_mtu_change_arg = type { i64, i64 }
%struct.inet6_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.net = type { i32 }

@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, i8*)* @rt6_mtu_change_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_mtu_change_route(%struct.rt6_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt6_mtu_change_arg*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rt6_mtu_change_arg*
  store %struct.rt6_mtu_change_arg* %10, %struct.rt6_mtu_change_arg** %6, align 8
  %11 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %12 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.net* @dev_net(i64 %13)
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %16 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.inet6_dev* @__in6_dev_get(i64 %17)
  store %struct.inet6_dev* %18, %struct.inet6_dev** %7, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %20 = icmp eq %struct.inet6_dev* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

22:                                               ; preds = %2
  %23 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %24 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %27 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %22
  %31 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %32 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* @RTAX_MTU, align 4
  %35 = call i32 @dst_metric_locked(%struct.TYPE_7__* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %92, label %37

37:                                               ; preds = %30
  %38 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %39 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i64 @dst_mtu(%struct.TYPE_7__* %40)
  %42 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %43 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %65, label %46

46:                                               ; preds = %37
  %47 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %48 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i64 @dst_mtu(%struct.TYPE_7__* %49)
  %51 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %52 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %46
  %56 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %57 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i64 @dst_mtu(%struct.TYPE_7__* %58)
  %60 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %61 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %55, %37
  %66 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %67 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %70 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* @RTAX_MTU, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %68, i64* %77, align 8
  %78 = load %struct.net*, %struct.net** %8, align 8
  %79 = load %struct.rt6_mtu_change_arg*, %struct.rt6_mtu_change_arg** %6, align 8
  %80 = getelementptr inbounds %struct.rt6_mtu_change_arg, %struct.rt6_mtu_change_arg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @ipv6_advmss(%struct.net* %78, i64 %81)
  %83 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %84 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @RTAX_ADVMSS, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %82, i64* %91, align 8
  br label %92

92:                                               ; preds = %65, %55, %46, %30, %22
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.net* @dev_net(i64) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i64) #1

declare dso_local i32 @dst_metric_locked(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_7__*) #1

declare dso_local i64 @ipv6_advmss(%struct.net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
