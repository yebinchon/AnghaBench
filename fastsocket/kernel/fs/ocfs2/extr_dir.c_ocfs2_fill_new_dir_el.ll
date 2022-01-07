; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_el.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_fill_new_dir_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fill_new_dir_el(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4, %struct.ocfs2_alloc_context* %5, %struct.buffer_head** %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_dir_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.buffer_head** %6, %struct.buffer_head*** %14, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %25 = call i32 (...) @mlog_entry_void()
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @ocfs2_dir_trailer_blk_off(%struct.TYPE_4__* %32)
  store i32 %33, i32* %16, align 4
  br label %34

34:                                               ; preds = %29, %7
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %42 = call i32 @ocfs2_do_extend_dir(%struct.TYPE_3__* %37, i32* %38, %struct.inode* %39, %struct.buffer_head* %40, %struct.ocfs2_alloc_context* %41, i32* null, %struct.buffer_head** %17)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %141

48:                                               ; preds = %34
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @INODE_CACHE(%struct.inode* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %52 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %50, %struct.buffer_head* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @INODE_CACHE(%struct.inode* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %57 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %58 = call i32 @ocfs2_journal_access_db(i32* %53, i32 %55, %struct.buffer_head* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %141

64:                                               ; preds = %48
  %65 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memset(i32 %67, i32 0, i32 %72)
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call %struct.ocfs2_dir_entry* @ocfs2_fill_initial_dirents(%struct.inode* %74, %struct.inode* %75, i32 %78, i32 %79)
  store %struct.ocfs2_dir_entry* %80, %struct.ocfs2_dir_entry** %18, align 8
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %64
  %85 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %18, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  store i32 %88, i32* %19, align 4
  %89 = call i64 @OCFS2_DIR_REC_LEN(i32 2)
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @ocfs2_init_dir_trailer(%struct.inode* %98, %struct.buffer_head* %99, i32 %100)
  br label %102

102:                                              ; preds = %84, %64
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %105 = call i32 @ocfs2_journal_dirty(i32* %103, %struct.buffer_head* %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %141

111:                                              ; preds = %102
  %112 = load %struct.inode*, %struct.inode** %11, align 8
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @i_size_write(%struct.inode* %112, i32 %117)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  store i32 2, i32* %120, align 8
  %121 = load %struct.inode*, %struct.inode** %11, align 8
  %122 = call i32 @ocfs2_inode_sector_count(%struct.inode* %121)
  %123 = load %struct.inode*, %struct.inode** %11, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.inode*, %struct.inode** %11, align 8
  %127 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %128 = call i32 @ocfs2_mark_inode_dirty(i32* %125, %struct.inode* %126, %struct.buffer_head* %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %111
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @mlog_errno(i32 %132)
  br label %141

134:                                              ; preds = %111
  store i32 0, i32* %15, align 4
  %135 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %136 = icmp ne %struct.buffer_head** %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %138, %struct.buffer_head** %139, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %131, %108, %61, %45
  %142 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @mlog_exit(i32 %144)
  %146 = load i32, i32* %15, align 4
  ret i32 %146
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_new_dir_wants_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_do_extend_dir(%struct.TYPE_3__*, i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.ocfs2_dir_entry* @ocfs2_fill_initial_dirents(%struct.inode*, %struct.inode*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_init_dir_trailer(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
