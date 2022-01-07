; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_insert_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_insert_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i64, i64, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_insert_type = type { i64, i64, i8*, i32 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.ocfs2_path = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SPLIT_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONTIG_LEFT = common dso_local global i64 0, align 8
@CONTIG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.buffer_head**, %struct.ocfs2_extent_rec*, i32*, %struct.ocfs2_insert_type*)* @ocfs2_figure_insert_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_figure_insert_type(%struct.ocfs2_extent_tree* %0, %struct.buffer_head** %1, %struct.ocfs2_extent_rec* %2, i32* %3, %struct.ocfs2_insert_type* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_insert_type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_block*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  %15 = alloca %struct.ocfs2_path*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %8, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ocfs2_insert_type* %4, %struct.ocfs2_insert_type** %11, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  %17 = load i32, i32* @SPLIT_NONE, align 4
  %18 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %19 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %20, i32 0, i32 1
  %22 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %21, align 8
  store %struct.ocfs2_extent_list* %22, %struct.ocfs2_extent_list** %14, align 8
  %23 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @le16_to_cpu(i64 %25)
  %27 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %5
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %38 = call i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %37)
  %39 = call i32 @ocfs2_read_extent_block(i32 %36, i64 %38, %struct.buffer_head** %16)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @mlog_exit(i32 %43)
  br label %141

45:                                               ; preds = %33
  %46 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %49, %struct.ocfs2_extent_block** %13, align 8
  %50 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %51 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %50, i32 0, i32 0
  store %struct.ocfs2_extent_list* %51, %struct.ocfs2_extent_list** %14, align 8
  br label %52

52:                                               ; preds = %45, %5
  %53 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @le16_to_cpu(i64 %55)
  %57 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @le16_to_cpu(i64 %59)
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %67 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %52
  %71 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %72 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %73 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %74 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %75 = call i32 @ocfs2_figure_contig_type(%struct.ocfs2_extent_tree* %71, %struct.ocfs2_insert_type* %72, %struct.ocfs2_extent_list* %73, %struct.ocfs2_extent_rec* %74)
  %76 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %77 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %78 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %79 = call i32 @ocfs2_figure_appending_type(%struct.ocfs2_insert_type* %76, %struct.ocfs2_extent_list* %77, %struct.ocfs2_extent_rec* %78)
  store i32 0, i32* %6, align 4
  br label %154

80:                                               ; preds = %52
  %81 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %82 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %81)
  store %struct.ocfs2_path* %82, %struct.ocfs2_path** %15, align 8
  %83 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %84 = icmp ne %struct.ocfs2_path* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %141

90:                                               ; preds = %80
  %91 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %95 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %96 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = call i32 @ocfs2_find_path(i32 %93, %struct.ocfs2_path* %94, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %141

105:                                              ; preds = %90
  %106 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %107 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %106)
  store %struct.ocfs2_extent_list* %107, %struct.ocfs2_extent_list** %14, align 8
  %108 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %109 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %112 = call i32 @ocfs2_figure_contig_type(%struct.ocfs2_extent_tree* %108, %struct.ocfs2_insert_type* %109, %struct.ocfs2_extent_list* %110, %struct.ocfs2_extent_rec* %111)
  %113 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %114 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CONTIG_LEFT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %105
  %119 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %120 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i64, i64* @CONTIG_NONE, align 8
  %125 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %126 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %118, %105
  %128 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %129 = call i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %128)
  %130 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %131 = call %struct.TYPE_2__* @path_leaf_bh(%struct.ocfs2_path* %130)
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %129, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %11, align 8
  %137 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %138 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %139 = call i32 @ocfs2_figure_appending_type(%struct.ocfs2_insert_type* %136, %struct.ocfs2_extent_list* %137, %struct.ocfs2_extent_rec* %138)
  br label %140

140:                                              ; preds = %135, %127
  br label %141

141:                                              ; preds = %140, %102, %85, %42
  %142 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %143 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %142)
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %148 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %147, %struct.buffer_head** %148, align 8
  br label %152

149:                                              ; preds = %141
  %150 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %151 = call i32 @brelse(%struct.buffer_head* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %70
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i64, %struct.buffer_head**) #1

declare dso_local i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_exit(i32) #1

declare dso_local i32 @ocfs2_figure_contig_type(%struct.ocfs2_extent_tree*, %struct.ocfs2_insert_type*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_figure_appending_type(%struct.ocfs2_insert_type*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local %struct.TYPE_2__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
