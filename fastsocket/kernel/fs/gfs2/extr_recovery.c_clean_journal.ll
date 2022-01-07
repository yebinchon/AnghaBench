; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_clean_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_clean_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_log_header_host = type { i32, i64 }
%struct.gfs2_inode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.gfs2_log_header = type { i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.buffer_head = type { i32, %struct.gfs2_log_header*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_METATYPE_LH = common dso_local global i32 0, align 4
@GFS2_FORMAT_LH = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_UNMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, %struct.gfs2_log_header_host*)* @clean_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_journal(%struct.gfs2_jdesc* %0, %struct.gfs2_log_header_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_jdesc*, align 8
  %5 = alloca %struct.gfs2_log_header_host*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_log_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head, align 8
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %4, align 8
  store %struct.gfs2_log_header_host* %1, %struct.gfs2_log_header_host** %5, align 8
  %14 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.gfs2_inode* @GFS2_I(i32 %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %6, align 8
  %18 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %19 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gfs2_sbd* @GFS2_SB(i32 %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %7, align 8
  %22 = bitcast %struct.buffer_head* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %27 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %26, i32* %8)
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @gfs2_block_map(%struct.TYPE_6__* %35, i32 %36, %struct.buffer_head* %13, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %3, align 4
  br label %141

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %48 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %141

51:                                               ; preds = %42
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.buffer_head* @sb_getblk(i32 %54, i32 %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %11, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = call i32 @lock_buffer(%struct.buffer_head* %58)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 1
  %62 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %61, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memset(%struct.gfs2_log_header* %62, i32 0, i32 %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = call i32 @set_buffer_uptodate(%struct.buffer_head* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %70 = call i32 @clear_buffer_dirty(%struct.buffer_head* %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = call i32 @unlock_buffer(%struct.buffer_head* %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 1
  %75 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %74, align 8
  store %struct.gfs2_log_header* %75, %struct.gfs2_log_header** %9, align 8
  %76 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %77 = call i32 @memset(%struct.gfs2_log_header* %76, i32 0, i32 72)
  %78 = load i32, i32* @GFS2_MAGIC, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %81 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @GFS2_METATYPE_LH, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %86 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i8* %84, i8** %87, align 8
  %88 = call i8* @cpu_to_be64(i64 0)
  %89 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %90 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load i32, i32* @GFS2_FORMAT_LH, align 4
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %95 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_be32(i32 %101)
  %103 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %104 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  %106 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %107 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  %110 = call i8* @cpu_to_be64(i64 %109)
  %111 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %112 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @GFS2_LOG_HEAD_UNMOUNT, align 4
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %116 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i8* @cpu_to_be32(i32 %117)
  %119 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %120 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %122 = bitcast %struct.gfs2_log_header* %121 to i8*
  %123 = call i32 @gfs2_disk_hash(i8* %122, i32 72)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i8* @cpu_to_be32(i32 %124)
  %126 = load %struct.gfs2_log_header*, %struct.gfs2_log_header** %9, align 8
  %127 = getelementptr inbounds %struct.gfs2_log_header, %struct.gfs2_log_header* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %129 = call i32 @set_buffer_dirty(%struct.buffer_head* %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %131 = call i64 @sync_dirty_buffer(%struct.buffer_head* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %51
  %134 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %136 = call i32 @gfs2_io_error_bh(%struct.gfs2_sbd* %134, %struct.buffer_head* %135)
  br label %137

137:                                              ; preds = %133, %51
  %138 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %139 = call i32 @brelse(%struct.buffer_head* %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %46, %40
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd*, i32*) #1

declare dso_local i32 @gfs2_block_map(%struct.TYPE_6__*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(%struct.gfs2_log_header*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @gfs2_disk_hash(i8*, i32) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_io_error_bh(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
