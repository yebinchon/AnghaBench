; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_alloc_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_alloc_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.net = type { %struct.dst_ops, %struct.dst_ops }
%struct.dst_ops = type { i32 }
%struct.xfrm_policy_afinfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@xfrm_bundle_fc_ops = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_dst* (%struct.net*, i32)* @xfrm_alloc_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_dst* @xfrm_alloc_dst(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_dst*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy_afinfo*, align 8
  %7 = alloca %struct.dst_ops*, align 8
  %8 = alloca %struct.xfrm_dst*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %9)
  store %struct.xfrm_policy_afinfo* %10, %struct.xfrm_policy_afinfo** %6, align 8
  %11 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %6, align 8
  %12 = icmp ne %struct.xfrm_policy_afinfo* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.xfrm_dst* @ERR_PTR(i32 %15)
  store %struct.xfrm_dst* %16, %struct.xfrm_dst** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %22 [
    i32 129, label %19
  ]

19:                                               ; preds = %17
  %20 = load %struct.net*, %struct.net** %4, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 1
  store %struct.dst_ops* %21, %struct.dst_ops** %7, align 8
  br label %24

22:                                               ; preds = %17
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.dst_ops*, %struct.dst_ops** %7, align 8
  %26 = call %struct.xfrm_dst* @dst_alloc(%struct.dst_ops* %25)
  store %struct.xfrm_dst* %26, %struct.xfrm_dst** %8, align 8
  %27 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %6, align 8
  %28 = call i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo* %27)
  %29 = load %struct.xfrm_dst*, %struct.xfrm_dst** %8, align 8
  %30 = call i64 @likely(%struct.xfrm_dst* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.xfrm_dst*, %struct.xfrm_dst** %8, align 8
  %34 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* @xfrm_bundle_fc_ops, i32** %35, align 8
  br label %40

36:                                               ; preds = %24
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.xfrm_dst* @ERR_PTR(i32 %38)
  store %struct.xfrm_dst* %39, %struct.xfrm_dst** %8, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.xfrm_dst*, %struct.xfrm_dst** %8, align 8
  store %struct.xfrm_dst* %41, %struct.xfrm_dst** %3, align 8
  br label %42

42:                                               ; preds = %40, %13
  %43 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  ret %struct.xfrm_dst* %43
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local %struct.xfrm_dst* @ERR_PTR(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.xfrm_dst* @dst_alloc(%struct.dst_ops*) #1

declare dso_local i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo*) #1

declare dso_local i64 @likely(%struct.xfrm_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
