; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.dst_entry* }
%struct.net = type { i32 }

@xfrm_policy_sk_bundle_lock = common dso_local global i32 0, align 4
@xfrm_policy_sk_bundles = common dso_local global %struct.dst_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @__xfrm_garbage_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm_garbage_collect(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %5 = call i32 @spin_lock_bh(i32* @xfrm_policy_sk_bundle_lock)
  %6 = load %struct.dst_entry*, %struct.dst_entry** @xfrm_policy_sk_bundles, align 8
  store %struct.dst_entry* %6, %struct.dst_entry** %3, align 8
  store %struct.dst_entry* null, %struct.dst_entry** @xfrm_policy_sk_bundles, align 8
  %7 = call i32 @spin_unlock_bh(i32* @xfrm_policy_sk_bundle_lock)
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %10 = icmp ne %struct.dst_entry* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %13 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %12, i32 0, i32 0
  %14 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  store %struct.dst_entry* %14, %struct.dst_entry** %4, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %16 = call i32 @dst_free(%struct.dst_entry* %15)
  %17 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  store %struct.dst_entry* %17, %struct.dst_entry** %3, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
