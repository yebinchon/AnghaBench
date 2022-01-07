; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type opaque
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @find_get_page(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @rcu_read_lock()
  br label %8

8:                                                ; preds = %53, %43, %36, %2
  store %struct.page* null, %struct.page** %6, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = call i8** @radix_tree_lookup_slot(i32* %10, i32 %11)
  store i8** %12, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i8* @radix_tree_deref_slot(i8** %16)
  %18 = bitcast i8* %17 to %struct.page*
  store %struct.page* %18, %struct.page** %6, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = icmp ne %struct.page* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %59

26:                                               ; preds = %15
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = bitcast %struct.page* %27 to i8*
  %29 = call i64 @radix_tree_exception(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = bitcast %struct.page* %32 to i8*
  %34 = call i64 @radix_tree_deref_retry(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %8

37:                                               ; preds = %31
  br label %59

38:                                               ; preds = %26
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = bitcast %struct.page* %39 to i8*
  %41 = call i32 @page_cache_get_speculative(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %8

44:                                               ; preds = %38
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.page*
  %49 = icmp ne %struct.page* %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = bitcast %struct.page* %54 to i8*
  %56 = call i32 @page_cache_release(i8* %55)
  br label %8

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %8
  br label %59

59:                                               ; preds = %58, %37, %25
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %61
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8** @radix_tree_lookup_slot(i32*, i32) #1

declare dso_local i8* @radix_tree_deref_slot(i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @radix_tree_exception(i8*) #1

declare dso_local i64 @radix_tree_deref_retry(i8*) #1

declare dso_local i32 @page_cache_get_speculative(i8*) #1

declare dso_local i32 @page_cache_release(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
