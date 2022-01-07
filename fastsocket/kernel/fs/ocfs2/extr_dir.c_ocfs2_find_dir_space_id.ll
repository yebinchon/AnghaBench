; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_dir_space_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_dir_space_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.ocfs2_dir_entry = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i8*, i32, %struct.buffer_head**, i32*)* @ocfs2_find_dir_space_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_dir_space_id(%struct.inode* %0, %struct.buffer_head* %1, i8* %2, i32 %3, %struct.buffer_head** %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_dir_entry*, align 8
  %17 = alloca %struct.ocfs2_dir_entry*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %14, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %15, align 8
  store %struct.ocfs2_dir_entry* null, %struct.ocfs2_dir_entry** %17, align 8
  store i64 0, i64* %20, align 8
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %23, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load %struct.super_block*, %struct.super_block** %14, align 8
  %41 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @i_size_read(%struct.inode* %42)
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %23, align 4
  br label %54

45:                                               ; preds = %6
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.super_block*, %struct.super_block** %47, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @i_size_read(%struct.inode* %51)
  %53 = sub i32 %50, %52
  store i32 %53, i32* %23, align 4
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %56 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @i_size_read(%struct.inode* %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8* %64, i8** %19, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @OCFS2_DIR_REC_LEN(i32 %65)
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %103, %54
  %68 = load i8*, i8** %18, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %67
  %72 = load i8*, i8** %18, align 8
  %73 = bitcast i8* %72 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %73, %struct.ocfs2_dir_entry** %16, align 8
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = load i64, i64* %20, align 8
  %78 = call i32 @ocfs2_check_dir_entry(%struct.inode* %74, %struct.ocfs2_dir_entry* %75, %struct.buffer_head* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %140

83:                                               ; preds = %71
  %84 = load i32, i32* %10, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %87 = call i64 @ocfs2_match(i32 %84, i8* %85, %struct.ocfs2_dir_entry* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EEXIST, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %140

92:                                               ; preds = %83
  %93 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %94 = load i32, i32* %21, align 4
  %95 = call i64 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %98, %struct.buffer_head** %99, align 8
  %100 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %100, align 8
  %102 = call i32 @get_bh(%struct.buffer_head* %101)
  store i32 0, i32* %13, align 4
  br label %140

103:                                              ; preds = %92
  %104 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  store %struct.ocfs2_dir_entry* %104, %struct.ocfs2_dir_entry** %17, align 8
  %105 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %106 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = load i8*, i8** %18, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %18, align 8
  %112 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %16, align 8
  %113 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %20, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %20, align 8
  br label %67

119:                                              ; preds = %67
  %120 = load i32*, i32** %12, align 8
  store i32 1, i32* %120, align 4
  %121 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %122 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = load i32, i32* %23, align 4
  %126 = add i32 %124, %125
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @OCFS2_DIR_REC_LEN(i32 %131)
  %133 = add i32 %128, %132
  %134 = icmp ult i32 %127, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i32*, i32** %12, align 8
  store i32 2, i32* %136, align 4
  br label %137

137:                                              ; preds = %135, %119
  %138 = load i32, i32* @ENOSPC, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %137, %97, %89, %80
  %141 = load i32, i32* %13, align 4
  ret i32 %141
}

declare dso_local i64 @ocfs2_new_dir_wants_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i64 @ocfs2_match(i32, i8*, %struct.ocfs2_dir_entry*) #1

declare dso_local i64 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
