; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_init_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_init_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { i32 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_policy_afinfo = type { i32 (%struct.xfrm_dst.0*, %struct.dst_entry.1*, i32)* }
%struct.xfrm_dst.0 = type opaque
%struct.dst_entry.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*, %struct.dst_entry*, i32)* @xfrm_init_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_init_path(%struct.xfrm_dst* %0, %struct.dst_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_dst*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_policy_afinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %14)
  store %struct.xfrm_policy_afinfo* %15, %struct.xfrm_policy_afinfo** %8, align 8
  %16 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %17 = icmp ne %struct.xfrm_policy_afinfo* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %22, i32 0, i32 0
  %24 = load i32 (%struct.xfrm_dst.0*, %struct.dst_entry.1*, i32)*, i32 (%struct.xfrm_dst.0*, %struct.dst_entry.1*, i32)** %23, align 8
  %25 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %26 = bitcast %struct.xfrm_dst* %25 to %struct.xfrm_dst.0*
  %27 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %28 = bitcast %struct.dst_entry* %27 to %struct.dst_entry.1*
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %24(%struct.xfrm_dst.0* %26, %struct.dst_entry.1* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %32 = call i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
