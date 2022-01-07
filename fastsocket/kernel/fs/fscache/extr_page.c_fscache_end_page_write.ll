; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_end_page_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_end_page_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { i32, %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32, i32, i32 }
%struct.page = type { i32 }

@FSCACHE_COOKIE_STORING_TAG = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_PENDING_TAG = common dso_local global i32 0, align 4
@fscache_n_store_radix_deletes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscache_object*, %struct.page*)* @fscache_end_page_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fscache_end_page_write(%struct.fscache_object* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store %struct.page* null, %struct.page** %6, align 8
  %7 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %8 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %11 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %10, i32 0, i32 1
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  store %struct.fscache_cookie* %12, %struct.fscache_cookie** %5, align 8
  %13 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %14 = icmp ne %struct.fscache_cookie* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %17 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %20 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %19, i32 0, i32 2
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FSCACHE_COOKIE_STORING_TAG, align 4
  %25 = call i32 @radix_tree_tag_clear(i32* %20, i32 %23, i32 %24)
  %26 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %27 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %26, i32 0, i32 2
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FSCACHE_COOKIE_PENDING_TAG, align 4
  %32 = call i32 @radix_tree_tag_get(i32* %27, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %15
  %35 = call i32 @fscache_stat(i32* @fscache_n_store_radix_deletes)
  %36 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %37 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %36, i32 0, i32 2
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.page* @radix_tree_delete(i32* %37, i32 %40)
  store %struct.page* %41, %struct.page** %6, align 8
  br label %42

42:                                               ; preds = %34, %15
  %43 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %44 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %47 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %46, i32 0, i32 0
  %48 = call i32 @wake_up_bit(i32* %47, i32 0)
  br label %49

49:                                               ; preds = %42, %2
  %50 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %51 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = call i32 @page_cache_release(%struct.page* %56)
  br label %58

58:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @radix_tree_tag_get(i32*, i32, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local %struct.page* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
