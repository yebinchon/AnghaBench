; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_databuf_lo_scan_elements.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_databuf_lo_scan_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_log_descriptor = type { i32, i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_sbd = type { i32, i32 }
%struct.buffer_head = type { i64, i32 }

@GFS2_LOG_DESC_JDATA = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32)* @databuf_lo_scan_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @databuf_lo_scan_elements(%struct.gfs2_jdesc* %0, i32 %1, %struct.gfs2_log_descriptor* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_jdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_log_descriptor*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.gfs2_glock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.gfs2_log_descriptor* %2, %struct.gfs2_log_descriptor** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %23 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.gfs2_inode* @GFS2_I(i32 %24)
  store %struct.gfs2_inode* %25, %struct.gfs2_inode** %12, align 8
  %26 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.gfs2_sbd* @GFS2_SB(i32 %28)
  store %struct.gfs2_sbd* %29, %struct.gfs2_sbd** %13, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load %struct.gfs2_glock*, %struct.gfs2_glock** %31, align 8
  store %struct.gfs2_glock* %32, %struct.gfs2_glock** %14, align 8
  %33 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %34 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %5
  %40 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %41 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = load i32, i32* @GFS2_LOG_DESC_JDATA, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %5
  store i32 0, i32* %6, align 4
  br label %122

47:                                               ; preds = %39
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %49 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %48, i32* %8)
  br label %50

50:                                               ; preds = %115, %47
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %50
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* %54, align 4
  %57 = call i64 @be64_to_cpu(i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %10, align 8
  %60 = load i32, i32* %58, align 4
  %61 = call i64 @be64_to_cpu(i32 %60)
  store i64 %61, i64* %19, align 8
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %63 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %67 = load i64, i64* %18, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @gfs2_revoke_check(%struct.gfs2_sbd* %66, i64 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %115

72:                                               ; preds = %53
  %73 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %73, i32 %74, %struct.buffer_head** %16)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %20, align 4
  store i32 %79, i32* %6, align 4
  br label %122

80:                                               ; preds = %72
  %81 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %82 = load i64, i64* %18, align 8
  %83 = call %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock* %81, i64 %82)
  store %struct.buffer_head* %83, %struct.buffer_head** %17, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memcpy(i64 %86, i64 %89, i32 %92)
  %94 = load i64, i64* %19, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %80
  %97 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %21, align 8
  %101 = load i32, i32* @GFS2_MAGIC, align 4
  %102 = call i32 @cpu_to_be32(i32 %101)
  %103 = load i32*, i32** %21, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %96, %80
  %105 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %106 = call i32 @mark_buffer_dirty(%struct.buffer_head* %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %108 = call i32 @brelse(%struct.buffer_head* %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %110 = call i32 @brelse(%struct.buffer_head* %109)
  %111 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %112 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %104, %71
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %117 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %116, i32* %8)
  %118 = load i32, i32* %15, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %15, align 4
  br label %50

120:                                              ; preds = %50
  %121 = load i32, i32* %20, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %78, %46
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @gfs2_revoke_check(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
