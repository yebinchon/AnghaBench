; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_transfer_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_transfer_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_dx_leaf = type { %struct.ocfs2_dx_entry_list }
%struct.ocfs2_dx_entry_list = type { %struct.ocfs2_dx_entry*, i32 }
%struct.ocfs2_dx_entry = type { i32 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i32*, %struct.ocfs2_dx_leaf*, %struct.buffer_head**, %struct.buffer_head**, i32)* @ocfs2_dx_dir_transfer_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_dir_transfer_leaf(%struct.inode* %0, i64 %1, i32* %2, %struct.ocfs2_dx_leaf* %3, %struct.buffer_head** %4, %struct.buffer_head** %5, i32 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_dx_leaf*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca %struct.buffer_head**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.ocfs2_dx_leaf*, align 8
  %20 = alloca %struct.ocfs2_dx_leaf*, align 8
  %21 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %22 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %23 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %24 = alloca %struct.ocfs2_dx_entry*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.ocfs2_dx_leaf* %3, %struct.ocfs2_dx_leaf** %11, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %25, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %26, %struct.ocfs2_dx_entry_list** %23, align 8
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %127, %7
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %130

31:                                               ; preds = %27
  %32 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %32, i64 %34
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %39, %struct.ocfs2_dx_leaf** %19, align 8
  %40 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %40, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %41, %struct.ocfs2_dx_entry_list** %21, align 8
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %42, i64 %44
  %46 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %49, %struct.ocfs2_dx_leaf** %20, align 8
  %50 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %20, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %50, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %51, %struct.ocfs2_dx_entry_list** %22, align 8
  %52 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %21, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %57 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(%struct.ocfs2_dx_leaf* %56, %struct.ocfs2_dx_leaf* %57, i32 %62)
  %64 = call i32 @cpu_to_le16(i32 0)
  %65 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %23, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %23, align 8
  %68 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %67, i32 0, i32 0
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(%struct.ocfs2_dx_entry** %68, i32 0, i32 %72)
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %101, %31
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %21, align 8
  %80 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %79, i32 0, i32 0
  %81 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %81, i64 %83
  store %struct.ocfs2_dx_entry* %84, %struct.ocfs2_dx_entry** %24, align 8
  %85 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %24, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %20, align 8
  %94 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %24, align 8
  %95 = call i32 @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf* %93, %struct.ocfs2_dx_entry* %94)
  br label %100

96:                                               ; preds = %78
  %97 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %98 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %24, align 8
  %99 = call i32 @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf* %97, %struct.ocfs2_dx_entry* %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %74

104:                                              ; preds = %74
  %105 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %106 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(%struct.ocfs2_dx_leaf* %105, %struct.ocfs2_dx_leaf* %106, i32 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %114, i64 %116
  %118 = load %struct.buffer_head*, %struct.buffer_head** %117, align 8
  %119 = call i32 @ocfs2_journal_dirty(i32* %113, %struct.buffer_head* %118)
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %121, i64 %123
  %125 = load %struct.buffer_head*, %struct.buffer_head** %124, align 8
  %126 = call i32 @ocfs2_journal_dirty(i32* %120, %struct.buffer_head* %125)
  br label %127

127:                                              ; preds = %104
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %27

130:                                              ; preds = %27
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dx_entry**, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_entry*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
