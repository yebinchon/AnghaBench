; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_run_deallocs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_run_deallocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32*, %struct.ocfs2_per_slot_free_list* }
%struct.ocfs2_per_slot_free_list = type { %struct.ocfs2_per_slot_free_list*, i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Free items: (type %u, slot %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %0, %struct.ocfs2_cached_dealloc_ctxt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %1, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %10 = icmp ne %struct.ocfs2_cached_dealloc_ctxt* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %56, %12
  %14 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %14, i32 0, i32 1
  %16 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %15, align 8
  %17 = icmp ne %struct.ocfs2_per_slot_free_list* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %13
  %19 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %19, i32 0, i32 1
  %21 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %20, align 8
  store %struct.ocfs2_per_slot_free_list* %21, %struct.ocfs2_per_slot_free_list** %8, align 8
  %22 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %28 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %31 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %35 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %39 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ocfs2_free_cached_blocks(%struct.ocfs2_super* %34, i32 %37, i32 %40, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %50

50:                                               ; preds = %47, %26
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %57, i32 0, i32 0
  %59 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %58, align 8
  %60 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %61 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %60, i32 0, i32 1
  store %struct.ocfs2_per_slot_free_list* %59, %struct.ocfs2_per_slot_free_list** %61, align 8
  %62 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %8, align 8
  %63 = call i32 @kfree(%struct.ocfs2_per_slot_free_list* %62)
  br label %13

64:                                               ; preds = %13
  %65 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %66 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %71 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %72 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ocfs2_free_cached_clusters(%struct.ocfs2_super* %70, i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %87 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %85, %64
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @ocfs2_free_cached_blocks(%struct.ocfs2_super*, i32, i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_per_slot_free_list*) #1

declare dso_local i32 @ocfs2_free_cached_clusters(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
