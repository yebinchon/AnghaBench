; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c___access_remote_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c___access_remote_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.mm_struct*, i64, i8*, i32, i32)* @__access_remote_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__access_remote_vm(%struct.task_struct* %0, %struct.mm_struct* %1, i64 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.page*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %14, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  %23 = call i32 @down_read(i32* %22)
  br label %24

24:                                               ; preds = %87, %6
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %99

27:                                               ; preds = %24
  store %struct.page* null, %struct.page** %19, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @get_user_pages(%struct.task_struct* %28, %struct.mm_struct* %29, i64 %30, i32 1, i32 %31, i32 1, %struct.page** %19, %struct.vm_area_struct** %13)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %99

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = and i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* %17, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %49, %36
  %54 = load %struct.page*, %struct.page** %19, align 8
  %55 = call i8* @kmap(%struct.page* %54)
  store i8* %55, i8** %18, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %60 = load %struct.page*, %struct.page** %19, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @copy_to_user_page(%struct.vm_area_struct* %59, %struct.page* %60, i64 %61, i8* %65, i8* %66, i32 %67)
  %69 = load %struct.page*, %struct.page** %19, align 8
  %70 = call i32 @set_page_dirty_lock(%struct.page* %69)
  br label %82

71:                                               ; preds = %53
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %73 = load %struct.page*, %struct.page** %19, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @copy_from_user_page(%struct.vm_area_struct* %72, %struct.page* %73, i64 %74, i8* %75, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %58
  %83 = load %struct.page*, %struct.page** %19, align 8
  %84 = call i32 @kunmap(%struct.page* %83)
  %85 = load %struct.page*, %struct.page** %19, align 8
  %86 = call i32 @page_cache_release(%struct.page* %85)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr i8, i8* %92, i64 %93
  store i8* %94, i8** %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %9, align 8
  br label %24

99:                                               ; preds = %35, %24
  %100 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %101 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %100, i32 0, i32 0
  %102 = call i32 @up_read(i32* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  ret i32 %108
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.task_struct*, %struct.mm_struct*, i64, i32, i32, i32, %struct.page**, %struct.vm_area_struct**) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @copy_to_user_page(%struct.vm_area_struct*, %struct.page*, i64, i8*, i8*, i32) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @copy_from_user_page(%struct.vm_area_struct*, %struct.page*, i64, i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
