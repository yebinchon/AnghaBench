; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_user.c_alloc_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_user.c_alloc_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i32, i32, i32, i32, i32 }
%struct.user_namespace = type { i32 }
%struct.hlist_head = type { i32 }

@uidhash_lock = common dso_local global i32 0, align 4
@uid_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.user_struct* @alloc_uid(%struct.user_namespace* %0, i32 %1) #0 {
  %3 = alloca %struct.user_struct*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.user_struct*, align 8
  %8 = alloca %struct.user_struct*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.hlist_head* @uidhashentry(%struct.user_namespace* %9, i32 %10)
  store %struct.hlist_head* %11, %struct.hlist_head** %6, align 8
  %12 = call i32 (...) @uids_mutex_lock()
  %13 = call i32 @spin_lock_irq(i32* @uidhash_lock)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %16 = call %struct.user_struct* @uid_hash_find(i32 %14, %struct.hlist_head* %15)
  store %struct.user_struct* %16, %struct.user_struct** %7, align 8
  %17 = call i32 @spin_unlock_irq(i32* @uidhash_lock)
  %18 = load %struct.user_struct*, %struct.user_struct** %7, align 8
  %19 = icmp ne %struct.user_struct* %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @uid_cachep, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.user_struct* @kmem_cache_zalloc(i32 %21, i32 %22)
  store %struct.user_struct* %23, %struct.user_struct** %8, align 8
  %24 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %25 = icmp ne %struct.user_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %87

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %30 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %32 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %31, i32 0, i32 3
  %33 = call i32 @atomic_set(i32* %32, i32 1)
  %34 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %35 = call i64 @sched_create_user(%struct.user_struct* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %83

38:                                               ; preds = %27
  %39 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %40 = call i32 @get_user_ns(%struct.user_namespace* %39)
  %41 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %42 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %44 = call i64 @uids_user_create(%struct.user_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %76

47:                                               ; preds = %38
  %48 = call i32 @spin_lock_irq(i32* @uidhash_lock)
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %51 = call %struct.user_struct* @uid_hash_find(i32 %49, %struct.hlist_head* %50)
  store %struct.user_struct* %51, %struct.user_struct** %7, align 8
  %52 = load %struct.user_struct*, %struct.user_struct** %7, align 8
  %53 = icmp ne %struct.user_struct* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %56 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @key_put(i32 %57)
  %59 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %60 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @key_put(i32 %61)
  %63 = load i32, i32* @uid_cachep, align 4
  %64 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %65 = call i32 @kmem_cache_free(i32 %63, %struct.user_struct* %64)
  br label %71

66:                                               ; preds = %47
  %67 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %68 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %69 = call i32 @uid_hash_insert(%struct.user_struct* %67, %struct.hlist_head* %68)
  %70 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  store %struct.user_struct* %70, %struct.user_struct** %7, align 8
  br label %71

71:                                               ; preds = %66, %54
  %72 = call i32 @spin_unlock_irq(i32* @uidhash_lock)
  br label %73

73:                                               ; preds = %71, %2
  %74 = call i32 (...) @uids_mutex_unlock()
  %75 = load %struct.user_struct*, %struct.user_struct** %7, align 8
  store %struct.user_struct* %75, %struct.user_struct** %3, align 8
  br label %89

76:                                               ; preds = %46
  %77 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %78 = call i32 @sched_destroy_user(%struct.user_struct* %77)
  %79 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %80 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @put_user_ns(i32 %81)
  br label %83

83:                                               ; preds = %76, %37
  %84 = load i32, i32* @uid_cachep, align 4
  %85 = load %struct.user_struct*, %struct.user_struct** %8, align 8
  %86 = call i32 @kmem_cache_free(i32 %84, %struct.user_struct* %85)
  br label %87

87:                                               ; preds = %83, %26
  %88 = call i32 (...) @uids_mutex_unlock()
  store %struct.user_struct* null, %struct.user_struct** %3, align 8
  br label %89

89:                                               ; preds = %87, %73
  %90 = load %struct.user_struct*, %struct.user_struct** %3, align 8
  ret %struct.user_struct* %90
}

declare dso_local %struct.hlist_head* @uidhashentry(%struct.user_namespace*, i32) #1

declare dso_local i32 @uids_mutex_lock(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.user_struct* @uid_hash_find(i32, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.user_struct* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @sched_create_user(%struct.user_struct*) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

declare dso_local i64 @uids_user_create(%struct.user_struct*) #1

declare dso_local i32 @key_put(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.user_struct*) #1

declare dso_local i32 @uid_hash_insert(%struct.user_struct*, %struct.hlist_head*) #1

declare dso_local i32 @uids_mutex_unlock(...) #1

declare dso_local i32 @sched_destroy_user(%struct.user_struct*) #1

declare dso_local i32 @put_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
