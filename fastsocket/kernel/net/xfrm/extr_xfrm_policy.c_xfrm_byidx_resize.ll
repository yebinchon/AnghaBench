; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_byidx_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_byidx_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }

@xfrm_policy_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32)* @xfrm_byidx_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_byidx_resize(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hlist_head*, align 8
  %9 = alloca %struct.hlist_head*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xfrm_new_hash_mask(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.hlist_head*, %struct.hlist_head** %24, align 8
  store %struct.hlist_head* %25, %struct.hlist_head** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.hlist_head* @xfrm_hash_alloc(i32 %26)
  store %struct.hlist_head* %27, %struct.hlist_head** %9, align 8
  %28 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %29 = icmp ne %struct.hlist_head* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %65

31:                                               ; preds = %2
  %32 = call i32 @write_lock_bh(i32* @xfrm_policy_lock)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %45, %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %38, i64 %40
  %42 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @xfrm_idx_hash_transfer(%struct.hlist_head* %41, %struct.hlist_head* %42, i32 %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %50 = load %struct.net*, %struct.net** %3, align 8
  %51 = getelementptr inbounds %struct.net, %struct.net* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.hlist_head* %49, %struct.hlist_head** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.net*, %struct.net** %3, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = call i32 @write_unlock_bh(i32* @xfrm_policy_lock)
  %58 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @xfrm_hash_free(%struct.hlist_head* %58, i32 %63)
  br label %65

65:                                               ; preds = %48, %30
  ret void
}

declare dso_local i32 @xfrm_new_hash_mask(i32) #1

declare dso_local %struct.hlist_head* @xfrm_hash_alloc(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @xfrm_idx_hash_transfer(%struct.hlist_head*, %struct.hlist_head*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_hash_free(%struct.hlist_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
