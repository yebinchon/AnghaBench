; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_adjust_rightmost_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { i32, %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.ocfs2_extent_tree*)* @ocfs2_adjust_rightmost_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_adjust_rightmost_branch(%struct.TYPE_6__* %0, %struct.ocfs2_extent_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ocfs2_extent_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_extent_list*, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %5, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %7, align 8
  %10 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %11 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %10)
  store %struct.ocfs2_path* %11, %struct.ocfs2_path** %7, align 8
  %12 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %13 = icmp ne %struct.ocfs2_path* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %23 = load i32, i32* @UINT_MAX, align 4
  %24 = call i32 @ocfs2_find_path(i32 %21, %struct.ocfs2_path* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %74

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %33 = call i64 @path_num_items(%struct.ocfs2_path* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i32 @ocfs2_extend_trans(%struct.TYPE_6__* %31, i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %74

44:                                               ; preds = %30
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %50 = call i32 @ocfs2_journal_access_path(i32 %47, %struct.TYPE_6__* %48, %struct.ocfs2_path* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %74

56:                                               ; preds = %44
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %58 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %57)
  store %struct.ocfs2_extent_list* %58, %struct.ocfs2_extent_list** %8, align 8
  %59 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %59, i32 0, i32 1
  %61 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %60, align 8
  %62 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %63 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %61, i64 %67
  store %struct.ocfs2_extent_rec* %68, %struct.ocfs2_extent_rec** %9, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %71 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %72 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %73 = call i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_6__* %69, %struct.ocfs2_extent_tree* %70, %struct.ocfs2_path* %71, %struct.ocfs2_extent_rec* %72)
  br label %74

74:                                               ; preds = %56, %53, %41, %27
  %75 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %76 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, %struct.TYPE_6__*, %struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_adjust_rightmost_records(%struct.TYPE_6__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
