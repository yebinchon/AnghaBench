; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_policy_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_policy_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.xfrm_policy*, i32)* @__xfrm_policy_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @__xfrm_policy_unlink(%struct.xfrm_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %8 = call %struct.net* @xp_net(%struct.xfrm_policy* %7)
  store %struct.net* %8, %struct.net** %6, align 8
  %9 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %10 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %9, i32 0, i32 2
  %11 = call i64 @hlist_unhashed(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %16 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %15, i32 0, i32 2
  %17 = call i32 @hlist_del(i32* %16)
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 1
  %20 = call i32 @hlist_del(i32* %19)
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %22 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  store %struct.xfrm_policy* %34, %struct.xfrm_policy** %3, align 8
  br label %35

35:                                               ; preds = %14, %13
  %36 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  ret %struct.xfrm_policy* %36
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
