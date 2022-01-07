; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_update_edge_lengths.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_update_edge_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32, i32 }
%struct.ocfs2_extent_block = type { i64, %struct.ocfs2_extent_list }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*)* @ocfs2_update_edge_lengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_update_edge_lengths(%struct.TYPE_9__* %0, %struct.ocfs2_extent_tree* %1, i32 %2, %struct.ocfs2_path* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca %struct.ocfs2_extent_block*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @ocfs2_extend_trans(%struct.TYPE_9__* %16, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %134

29:                                               ; preds = %4
  %30 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %35 = call i32 @ocfs2_journal_access_path(i32 %32, %struct.TYPE_9__* %33, %struct.ocfs2_path* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %134

41:                                               ; preds = %29
  %42 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %43 = call %struct.TYPE_10__* @path_leaf_bh(%struct.ocfs2_path* %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %46, %struct.ocfs2_extent_block** %14, align 8
  %47 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %53, i32 0, i32 1
  store %struct.ocfs2_extent_list* %54, %struct.ocfs2_extent_list** %13, align 8
  %55 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %56 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %63 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %67, i32 0, i32 0
  %69 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %69, i64 %71
  store %struct.ocfs2_extent_rec* %72, %struct.ocfs2_extent_rec** %12, align 8
  %73 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %79 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %80 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %78, %struct.ocfs2_extent_rec* %79)
  %81 = add nsw i64 %77, %80
  store i64 %81, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %130, %41
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %85 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %82
  %89 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %90 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %95, align 8
  store %struct.ocfs2_extent_list* %96, %struct.ocfs2_extent_list** %13, align 8
  %97 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %98 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %103 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %102, i32 0, i32 0
  %104 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %104, i64 %106
  store %struct.ocfs2_extent_rec* %107, %struct.ocfs2_extent_rec** %12, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @cpu_to_le32(i64 %108)
  %110 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %111 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %112, i32 0, i32 1
  %114 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = sub nsw i32 0, %117
  %119 = call i32 @le32_add_cpu(i32* %113, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %122 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %120, i32 %128)
  br label %130

130:                                              ; preds = %88
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %82

133:                                              ; preds = %82
  br label %134

134:                                              ; preds = %133, %38, %26
  %135 = load i32, i32* %11, align 4
  ret i32 %135
}

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, %struct.TYPE_9__*, %struct.ocfs2_path*) #1

declare dso_local %struct.TYPE_10__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
