; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_policy_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_policy_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, %struct.hlist_head*, i32 }
%struct.hlist_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, i32)* @__xfrm_policy_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm_policy_link(%struct.xfrm_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %8 = call %struct.net* @xp_net(%struct.xfrm_policy* %7)
  store %struct.net* %8, %struct.net** %5, align 8
  %9 = load %struct.net*, %struct.net** %5, align 8
  %10 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %10, i32 0, i32 5
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.hlist_head* @policy_hash_bysel(%struct.net* %9, i32* %11, i32 %14, i32 %15)
  store %struct.hlist_head* %16, %struct.hlist_head** %6, align 8
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = call i32 @list_add(i32* %19, i32* %22)
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %24, i32 0, i32 2
  %26 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %27 = call i32 @hlist_add_head(i32* %25, %struct.hlist_head* %26)
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %28, i32 0, i32 1
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.hlist_head*, %struct.hlist_head** %32, align 8
  %34 = load %struct.net*, %struct.net** %5, align 8
  %35 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %36 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @idx_hash(%struct.net* %34, i32 %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %33, i64 %39
  %41 = call i32 @hlist_add_head(i32* %29, %struct.hlist_head* %40)
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = getelementptr inbounds %struct.net, %struct.net* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %52 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %51)
  %53 = load %struct.net*, %struct.net** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @xfrm_bydst_should_resize(%struct.net* %53, i32 %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %2
  %58 = load %struct.net*, %struct.net** %5, align 8
  %59 = getelementptr inbounds %struct.net, %struct.net* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @schedule_work(i32* %60)
  br label %62

62:                                               ; preds = %57, %2
  ret void
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local %struct.hlist_head* @policy_hash_bysel(%struct.net*, i32*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @idx_hash(%struct.net*, i32) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i64 @xfrm_bydst_should_resize(%struct.net*, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
