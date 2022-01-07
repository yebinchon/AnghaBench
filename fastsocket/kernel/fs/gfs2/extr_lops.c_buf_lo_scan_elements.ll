; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_buf_lo_scan_elements.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_buf_lo_scan_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_log_descriptor = type { i32, i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_sbd = type { i32, i32 }
%struct.buffer_head = type { i32, i32 }

@GFS2_LOG_DESC_METADATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32)* @buf_lo_scan_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_lo_scan_elements(%struct.gfs2_jdesc* %0, i32 %1, %struct.gfs2_log_descriptor* %2, i32* %3, i32 %4) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.gfs2_log_descriptor* %2, %struct.gfs2_log_descriptor** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %21 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.gfs2_inode* @GFS2_I(i32 %22)
  store %struct.gfs2_inode* %23, %struct.gfs2_inode** %12, align 8
  %24 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %25 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.gfs2_sbd* @GFS2_SB(i32 %26)
  store %struct.gfs2_sbd* %27, %struct.gfs2_sbd** %13, align 8
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load %struct.gfs2_glock*, %struct.gfs2_glock** %29, align 8
  store %struct.gfs2_glock* %30, %struct.gfs2_glock** %14, align 8
  %31 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %32 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %44, label %37

37:                                               ; preds = %5
  %38 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %39 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = load i32, i32* @GFS2_LOG_DESC_METADATA, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %5
  store i32 0, i32* %6, align 4
  br label %118

45:                                               ; preds = %37
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %47 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %46, i32* %8)
  br label %48

48:                                               ; preds = %111, %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %48
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* %52, align 4
  %55 = call i32 @be64_to_cpu(i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @gfs2_revoke_check(%struct.gfs2_sbd* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %111

66:                                               ; preds = %51
  %67 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %67, i32 %68, %struct.buffer_head** %16)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %19, align 4
  store i32 %73, i32* %6, align 4
  br label %118

74:                                               ; preds = %66
  %75 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %76 = load i32, i32* %18, align 4
  %77 = call %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock* %75, i32 %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %17, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32 %80, i32 %83, i32 %86)
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %90 = call i64 @gfs2_meta_check(%struct.gfs2_sbd* %88, %struct.buffer_head* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %19, align 4
  br label %98

95:                                               ; preds = %74
  %96 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %97 = call i32 @mark_buffer_dirty(%struct.buffer_head* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %116

106:                                              ; preds = %98
  %107 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %108 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %65
  %112 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %113 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %112, i32* %8)
  %114 = load i32, i32* %15, align 4
  %115 = add i32 %114, -1
  store i32 %115, i32* %15, align 4
  br label %48

116:                                              ; preds = %105, %48
  %117 = load i32, i32* %19, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %72, %44
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @gfs2_revoke_check(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @gfs2_meta_check(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
