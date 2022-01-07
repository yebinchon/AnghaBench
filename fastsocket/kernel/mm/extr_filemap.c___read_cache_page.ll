; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___read_cache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___read_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@__GFP_COLD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.address_space*, i32, i32 (i8*, %struct.page*)*, i8*, i32)* @__read_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__read_cache_page(%struct.address_space* %0, i32 %1, i32 (i8*, %struct.page*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.page*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, %struct.page*)* %2, i32 (i8*, %struct.page*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %47, %5
  %15 = load %struct.address_space*, %struct.address_space** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.page* @find_get_page(%struct.address_space* %15, i32 %16)
  store %struct.page* %17, %struct.page** %12, align 8
  %18 = load %struct.page*, %struct.page** %12, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @__GFP_COLD, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.page* @__page_cache_alloc(i32 %23)
  store %struct.page* %24, %struct.page** %12, align 8
  %25 = load %struct.page*, %struct.page** %12, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.page* @ERR_PTR(i32 %29)
  store %struct.page* %30, %struct.page** %6, align 8
  br label %66

31:                                               ; preds = %20
  %32 = load %struct.page*, %struct.page** %12, align 8
  %33 = load %struct.address_space*, %struct.address_space** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @add_to_page_cache_lru(%struct.page* %32, %struct.address_space* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = call i32 @page_cache_release(%struct.page* %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @EEXIST, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %14

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.page* @ERR_PTR(i32 %49)
  store %struct.page* %50, %struct.page** %6, align 8
  br label %66

51:                                               ; preds = %31
  %52 = load i32 (i8*, %struct.page*)*, i32 (i8*, %struct.page*)** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = call i32 %52(i8* %53, %struct.page* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = call i32 @page_cache_release(%struct.page* %59)
  %61 = load i32, i32* %13, align 4
  %62 = call %struct.page* @ERR_PTR(i32 %61)
  store %struct.page* %62, %struct.page** %12, align 8
  br label %63

63:                                               ; preds = %58, %51
  br label %64

64:                                               ; preds = %63, %14
  %65 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %65, %struct.page** %6, align 8
  br label %66

66:                                               ; preds = %64, %48, %27
  %67 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %67
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
