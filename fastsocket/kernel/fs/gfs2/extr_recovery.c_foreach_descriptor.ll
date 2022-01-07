; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_foreach_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_foreach_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_log_descriptor = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_log_header_host = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFS2_METATYPE_LH = common dso_local global i64 0, align 8
@GFS2_METATYPE_LD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, i32, i32)* @foreach_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_descriptor(%struct.gfs2_jdesc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_jdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_log_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.gfs2_log_header_host, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gfs2_sbd* @GFS2_SB(i32 %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 8, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, 3
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = zext i32 %26 to i64
  %28 = and i64 %27, -4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %134, %74, %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %137

34:                                               ; preds = %30
  %35 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %35, i32 %36, %struct.buffer_head** %11)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %138

42:                                               ; preds = %34
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %45 = call i64 @gfs2_meta_check(%struct.gfs2_sbd* %43, %struct.buffer_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %138

52:                                               ; preds = %42
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.gfs2_log_descriptor*
  store %struct.gfs2_log_descriptor* %56, %struct.gfs2_log_descriptor** %12, align 8
  %57 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %12, align 8
  %58 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  store i64 %60, i64* %14, align 8
  %61 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %12, align 8
  %62 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be32_to_cpu(i32 %64)
  %66 = load i64, i64* @GFS2_METATYPE_LH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %52
  %69 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @get_log_header(%struct.gfs2_jdesc* %69, i32 %70, %struct.gfs2_log_header_host* %17)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %76 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %75, i32* %7)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  br label %30

79:                                               ; preds = %68
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %84 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GFS2_I(i32 %85)
  %87 = call i32 @gfs2_consist_inode(i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %82, %79
  %91 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %138

94:                                               ; preds = %52
  %95 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %97 = load i32, i32* @GFS2_METATYPE_LD, align 4
  %98 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %95, %struct.buffer_head* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %138

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %15, align 8
  %114 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %12, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @lops_scan_elements(%struct.gfs2_jdesc* %114, i32 %115, %struct.gfs2_log_descriptor* %116, i32* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %106
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %5, align 4
  br label %138

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %131, %126
  %128 = load i64, i64* %14, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %14, align 8
  %130 = icmp ne i64 %128, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %133 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %132, i32* %7)
  br label %127

134:                                              ; preds = %127
  %135 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  br label %30

137:                                              ; preds = %30
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %122, %100, %90, %47, %40
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_meta_check(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @get_log_header(%struct.gfs2_jdesc*, i32, %struct.gfs2_log_header_host*) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd*, i32*) #1

declare dso_local i32 @gfs2_consist_inode(i32) #1

declare dso_local i32 @GFS2_I(i32) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @lops_scan_elements(%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
