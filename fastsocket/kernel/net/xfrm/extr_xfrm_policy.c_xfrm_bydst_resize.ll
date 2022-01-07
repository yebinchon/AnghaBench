; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_bydst_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_bydst_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }

@xfrm_policy_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32)* @xfrm_bydst_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_bydst_resize(%struct.net* %0, i32 %1) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @xfrm_new_hash_mask(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.hlist_head*, %struct.hlist_head** %34, align 8
  store %struct.hlist_head* %35, %struct.hlist_head** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.hlist_head* @xfrm_hash_alloc(i32 %36)
  store %struct.hlist_head* %37, %struct.hlist_head** %9, align 8
  %38 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %39 = icmp ne %struct.hlist_head* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %85

41:                                               ; preds = %2
  %42 = call i32 @write_lock_bh(i32* @xfrm_policy_lock)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %55, %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %48, i64 %50
  %52 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @xfrm_dst_hash_transfer(%struct.hlist_head* %51, %struct.hlist_head* %52, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %10, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %60 = load %struct.net*, %struct.net** %3, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store %struct.hlist_head* %59, %struct.hlist_head** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.net*, %struct.net** %3, align 8
  %70 = getelementptr inbounds %struct.net, %struct.net* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %68, i32* %76, align 8
  %77 = call i32 @write_unlock_bh(i32* @xfrm_policy_lock)
  %78 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 @xfrm_hash_free(%struct.hlist_head* %78, i32 %83)
  br label %85

85:                                               ; preds = %58, %40
  ret void
}

declare dso_local i32 @xfrm_new_hash_mask(i32) #1

declare dso_local %struct.hlist_head* @xfrm_hash_alloc(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @xfrm_dst_hash_transfer(%struct.hlist_head*, %struct.hlist_head*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_hash_free(%struct.hlist_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
