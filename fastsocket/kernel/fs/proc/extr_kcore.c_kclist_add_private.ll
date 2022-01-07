; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_kcore.c_kclist_add_private.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_kcore.c_kclist_add_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.kcore_list = type { i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@VMALLOC_START = common dso_local global i64 0, align 8
@KCORE_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*)* @kclist_add_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kclist_add_private(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.kcore_list*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.list_head*
  store %struct.list_head* %11, %struct.list_head** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kcore_list* @kmalloc(i32 24, i32 %12)
  store %struct.kcore_list* %13, %struct.kcore_list** %9, align 8
  %14 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %15 = icmp ne %struct.kcore_list* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = call i64 @__va(i64 %22)
  %24 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %25 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %30 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %32 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @__va(i64 0)
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %102

37:                                               ; preds = %19
  %38 = load i64, i64* @ULONG_MAX, align 8
  %39 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %40 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %44 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i64, i64* @ULONG_MAX, align 8
  %49 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %50 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %48, %51
  %53 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %54 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %37
  %56 = load i64, i64* @VMALLOC_START, align 8
  %57 = call i64 @__va(i64 0)
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %61 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VMALLOC_START, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %102

66:                                               ; preds = %59
  %67 = load i64, i64* @VMALLOC_START, align 8
  %68 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %69 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %67, %70
  %72 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %73 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load i64, i64* @VMALLOC_START, align 8
  %78 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %79 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %77, %80
  %82 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %83 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %66
  br label %85

85:                                               ; preds = %84, %55
  %86 = load i32, i32* @KCORE_RAM, align 4
  %87 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %88 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %90 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %89, i32 0, i32 2
  %91 = load %struct.list_head*, %struct.list_head** %8, align 8
  %92 = call i32 @list_add_tail(i32* %90, %struct.list_head* %91)
  %93 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %94 = load %struct.list_head*, %struct.list_head** %8, align 8
  %95 = call i32 @get_sparsemem_vmemmap_info(%struct.kcore_list* %93, %struct.list_head* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %85
  %98 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %99 = getelementptr inbounds %struct.kcore_list, %struct.kcore_list* %98, i32 0, i32 2
  %100 = call i32 @list_del(i32* %99)
  br label %102

101:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %105

102:                                              ; preds = %97, %65, %36
  %103 = load %struct.kcore_list*, %struct.kcore_list** %9, align 8
  %104 = call i32 @kfree(%struct.kcore_list* %103)
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %101, %16
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.kcore_list* @kmalloc(i32, i32) #1

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @get_sparsemem_vmemmap_info(%struct.kcore_list*, %struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.kcore_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
