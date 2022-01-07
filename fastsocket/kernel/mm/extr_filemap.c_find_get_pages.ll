; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_get_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_get_pages(%struct.address_space* %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.page** %3, %struct.page*** %8, align 8
  %13 = call i32 (...) @rcu_read_lock()
  br label %14

14:                                               ; preds = %53, %4
  %15 = load %struct.address_space*, %struct.address_space** %5, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load %struct.page**, %struct.page*** %8, align 8
  %18 = bitcast %struct.page** %17 to i8***
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @radix_tree_gang_lookup_slot(i32* %16, i8*** %18, i32* null, i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %91, %14
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %79, %64, %26
  %28 = load %struct.page**, %struct.page*** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page*, %struct.page** %28, i64 %30
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = bitcast %struct.page* %32 to i8**
  %34 = call i8* @radix_tree_deref_slot(i8** %33)
  %35 = bitcast i8* %34 to %struct.page*
  store %struct.page* %35, %struct.page** %12, align 8
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = icmp ne %struct.page* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %91

43:                                               ; preds = %27
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = bitcast %struct.page* %44 to i8*
  %46 = call i64 @radix_tree_exception(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = bitcast %struct.page* %49 to i8*
  %51 = call i64 @radix_tree_deref_retry(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @WARN_ON(i32 %56)
  br label %14

58:                                               ; preds = %48
  br label %91

59:                                               ; preds = %43
  %60 = load %struct.page*, %struct.page** %12, align 8
  %61 = bitcast %struct.page* %60 to i8*
  %62 = call i32 @page_cache_get_speculative(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %27

65:                                               ; preds = %59
  %66 = load %struct.page*, %struct.page** %12, align 8
  %67 = load %struct.page**, %struct.page*** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.page*, %struct.page** %67, i64 %69
  %71 = load %struct.page*, %struct.page** %70, align 8
  %72 = bitcast %struct.page* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = bitcast i8* %73 to %struct.page*
  %75 = icmp ne %struct.page* %66, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = bitcast %struct.page* %80 to i8*
  %82 = call i32 @page_cache_release(i8* %81)
  br label %27

83:                                               ; preds = %65
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = load %struct.page**, %struct.page*** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.page*, %struct.page** %85, i64 %87
  store %struct.page* %84, %struct.page** %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %83, %58, %42
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %22

94:                                               ; preds = %22
  %95 = call i32 (...) @rcu_read_unlock()
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @radix_tree_gang_lookup_slot(i32*, i8***, i32*, i32, i32) #1

declare dso_local i8* @radix_tree_deref_slot(i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @radix_tree_exception(i8*) #1

declare dso_local i64 @radix_tree_deref_retry(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @page_cache_get_speculative(i8*) #1

declare dso_local i32 @page_cache_release(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
