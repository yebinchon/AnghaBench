; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_find_per_slot_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_find_per_slot_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_per_slot_free_list = type { i32, i32, %struct.ocfs2_per_slot_free_list*, i32* }
%struct.ocfs2_cached_dealloc_ctxt = type { %struct.ocfs2_per_slot_free_list* }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_per_slot_free_list* (i32, i32, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_find_per_slot_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_per_slot_free_list* @ocfs2_find_per_slot_free_list(i32 %0, i32 %1, %struct.ocfs2_cached_dealloc_ctxt* %2) #0 {
  %4 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %8 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %2, %struct.ocfs2_cached_dealloc_ctxt** %7, align 8
  %9 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %7, align 8
  %10 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %9, i32 0, i32 0
  %11 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %10, align 8
  store %struct.ocfs2_per_slot_free_list* %11, %struct.ocfs2_per_slot_free_list** %8, align 8
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %14 = icmp ne %struct.ocfs2_per_slot_free_list* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %17 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  store %struct.ocfs2_per_slot_free_list* %28, %struct.ocfs2_per_slot_free_list** %4, align 8
  br label %57

29:                                               ; preds = %21, %15
  %30 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %31 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %30, i32 0, i32 2
  %32 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %31, align 8
  store %struct.ocfs2_per_slot_free_list* %32, %struct.ocfs2_per_slot_free_list** %8, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call %struct.ocfs2_per_slot_free_list* @kmalloc(i32 24, i32 %34)
  store %struct.ocfs2_per_slot_free_list* %35, %struct.ocfs2_per_slot_free_list** %8, align 8
  %36 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %37 = icmp ne %struct.ocfs2_per_slot_free_list* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %41 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %46 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %47, i32 0, i32 0
  %49 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %48, align 8
  %50 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %50, i32 0, i32 2
  store %struct.ocfs2_per_slot_free_list* %49, %struct.ocfs2_per_slot_free_list** %51, align 8
  %52 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %53 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %53, i32 0, i32 0
  store %struct.ocfs2_per_slot_free_list* %52, %struct.ocfs2_per_slot_free_list** %54, align 8
  br label %55

55:                                               ; preds = %38, %33
  %56 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  store %struct.ocfs2_per_slot_free_list* %56, %struct.ocfs2_per_slot_free_list** %4, align 8
  br label %57

57:                                               ; preds = %55, %27
  %58 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %4, align 8
  ret %struct.ocfs2_per_slot_free_list* %58
}

declare dso_local %struct.ocfs2_per_slot_free_list* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
