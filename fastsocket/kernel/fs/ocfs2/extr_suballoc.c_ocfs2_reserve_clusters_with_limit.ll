; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_clusters_with_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_clusters_with_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ALLOC_GROUPS_FROM_GLOBAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32, i32, %struct.ocfs2_alloc_context**)* @ocfs2_reserve_clusters_with_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reserve_clusters_with_limit(%struct.ocfs2_super* %0, i32 %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context** %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_alloc_context**, align 8
  %11 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %10, align 8
  %12 = call i32 (...) @mlog_entry_void()
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ocfs2_alloc_context* @kzalloc(i32 8, i32 %13)
  %15 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  store %struct.ocfs2_alloc_context* %14, %struct.ocfs2_alloc_context** %15, align 8
  %16 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %17 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %18 = icmp ne %struct.ocfs2_alloc_context* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  br label %93

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %27 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %30, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ALLOC_GROUPS_FROM_GLOBAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %24
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @ocfs2_alloc_should_use_local(%struct.ocfs2_super* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %48 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %47, align 8
  %49 = call i32 @ocfs2_reserve_local_alloc_bits(%struct.ocfs2_super* %45, i32 %46, %struct.ocfs2_alloc_context* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @EFBIG, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOSPC, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %69

57:                                               ; preds = %44
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %93

68:                                               ; preds = %60, %57
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %39, %24
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %77 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %78 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %77, align 8
  %79 = call i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super* %76, %struct.ocfs2_alloc_context* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @ENOSPC, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %93

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %70
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %90, %65, %19
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %98 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %97, align 8
  %99 = icmp ne %struct.ocfs2_alloc_context* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %102 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %101, align 8
  %103 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %102)
  %104 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %104, align 8
  br label %105

105:                                              ; preds = %100, %96, %93
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @mlog_exit(i32 %106)
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local %struct.ocfs2_alloc_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_alloc_should_use_local(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_reserve_local_alloc_bits(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
