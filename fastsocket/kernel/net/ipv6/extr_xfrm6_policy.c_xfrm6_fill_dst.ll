; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c_xfrm6_fill_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c_xfrm6_fill_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.flowi = type { i32 }
%struct.rt6_info = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*, %struct.net_device*, %struct.flowi*)* @xfrm6_fill_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_fill_dst(%struct.xfrm_dst* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_dst*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %9 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rt6_info*
  store %struct.rt6_info* %12, %struct.rt6_info** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.net_device* %13, %struct.net_device** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i32 @dev_hold(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @in6_dev_get(%struct.net_device* %20)
  %22 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %23 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  store i32 %21, i32* %25, align 4
  %26 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %27 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %95

35:                                               ; preds = %3
  %36 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %37 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RTF_ANYCAST, align 4
  %40 = load i32, i32* @RTF_LOCAL, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %44 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %48 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %51 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 8
  %54 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %58 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %62 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %35
  %66 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %67 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %72 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %65, %35
  %74 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %75 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %78 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 %76, i32* %80, align 4
  %81 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %82 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %85 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %89 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %92 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %73, %32
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @in6_dev_get(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
