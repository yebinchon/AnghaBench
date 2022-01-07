; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_rt_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_rt_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32* }
%struct.rt6_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RTF_MODIFIED = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@RTAX_FEATURE_ALLFRAG = common dso_local global i32 0, align 4
@RTAX_FEATURES = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@NETEVENT_PMTU_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, i32)* @ip6_rt_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_rt_update_pmtu(%struct.dst_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt6_info*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %7 = bitcast %struct.dst_entry* %6 to %struct.rt6_info*
  store %struct.rt6_info* %7, %struct.rt6_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %10 = call i32 @dst_mtu(%struct.dst_entry* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load i32, i32* @RTF_MODIFIED, align 4
  %20 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %21 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IPV6_MIN_MTU, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load i32, i32* @IPV6_MIN_MTU, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @RTAX_FEATURE_ALLFRAG, align 4
  %30 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @RTAX_FEATURES, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %29
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %27, %18
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @RTAX_MTU, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* @NETEVENT_PMTU_UPDATE, align 4
  %49 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %50 = call i32 @call_netevent_notifiers(i32 %48, %struct.dst_entry* %49)
  br label %51

51:                                               ; preds = %39, %12, %2
  ret void
}

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @call_netevent_notifiers(i32, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
