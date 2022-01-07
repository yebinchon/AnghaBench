; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_replace_extent_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_replace_extent_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*)* @ocfs2_replace_extent_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replace_extent_rec(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_extent_list* %3, i32 %4, %struct.ocfs2_extent_rec* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_extent_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_extent_list* %3, %struct.ocfs2_extent_list** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ocfs2_extent_rec* %5, %struct.ocfs2_extent_rec** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %20 = call i64 @path_num_items(%struct.ocfs2_path* %19)
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @ocfs2_path_bh_journal_access(i32* %14, i32 %17, %struct.ocfs2_path* %18, i64 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %42

28:                                               ; preds = %6
  %29 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %29, i32 0, i32 0
  %31 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %31, i64 %33
  %35 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %36 = bitcast %struct.ocfs2_extent_rec* %34 to i8*
  %37 = bitcast %struct.ocfs2_extent_rec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %40 = call i32 @path_leaf_bh(%struct.ocfs2_path* %39)
  %41 = call i32 @ocfs2_journal_dirty(i32* %38, i32 %40)
  br label %42

42:                                               ; preds = %28, %25
  %43 = load i32, i32* %13, align 4
  ret i32 %43
}

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, i32, %struct.ocfs2_path*, i64) #1

declare dso_local i64 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @path_leaf_bh(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
