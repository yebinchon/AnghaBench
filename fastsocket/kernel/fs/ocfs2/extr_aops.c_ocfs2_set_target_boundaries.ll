; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_set_target_boundaries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_set_target_boundaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32, i32, %struct.ocfs2_write_cluster_desc*, i64 }
%struct.ocfs2_write_cluster_desc = type { i32, i64 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_write_ctxt*, i32, i32, i32)* @ocfs2_set_target_boundaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_set_target_boundaries(%struct.ocfs2_super* %0, %struct.ocfs2_write_ctxt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_write_ctxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_write_cluster_desc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_write_ctxt* %1, %struct.ocfs2_write_ctxt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %20, %21
  %23 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %79

28:                                               ; preds = %5
  %29 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %35 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %34, i32 0, i32 3
  %36 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %35, align 8
  %37 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %36, i64 0
  store %struct.ocfs2_write_cluster_desc* %37, %struct.ocfs2_write_cluster_desc** %11, align 8
  %38 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %11, align 8
  %39 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %44 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %11, align 8
  %45 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %47, i32 0, i32 0
  %49 = call i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super* %43, i32 %46, i32* %48, i32* null)
  br label %50

50:                                               ; preds = %42, %33
  %51 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %52 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %51, i32 0, i32 3
  %53 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %52, align 8
  %54 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %55 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %53, i64 %58
  store %struct.ocfs2_write_cluster_desc* %59, %struct.ocfs2_write_cluster_desc** %11, align 8
  %60 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %11, align 8
  %61 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %66 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %11, align 8
  %67 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %70 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %69, i32 0, i32 1
  %71 = call i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super* %65, i32 %68, i32* null, i32* %70)
  br label %72

72:                                               ; preds = %64, %50
  br label %79

73:                                               ; preds = %28
  %74 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %75 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %77 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %7, align 8
  %78 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %27, %73, %72
  ret void
}

declare dso_local i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
