; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_map_slot_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_map_slot_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_slot_info = type { i64, i32, %struct.buffer_head**, %struct.TYPE_6__*, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Slot map needs %u buffers for %llu bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Reading slot map block %u at %llu\0A\00", align 1
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_slot_info*)* @ocfs2_map_slot_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_map_slot_buffers(%struct.ocfs2_super* %0, %struct.ocfs2_slot_info* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_slot_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_slot_info* %1, %struct.ocfs2_slot_info** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %12 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @ocfs2_slot_map_physical_size(%struct.ocfs2_super* %11, %struct.TYPE_6__* %14, i64* %8)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @ocfs2_blocks_for_bytes(i32 %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @UINT_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %19
  br label %151

40:                                               ; preds = %19
  %41 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %42 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %55 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %67

56:                                               ; preds = %40
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %66 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %56, %45
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %72 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %70, %74
  %76 = load i64, i64* %7, align 8
  %77 = icmp ugt i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %81 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %84)
  %86 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %87 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.buffer_head** @kzalloc(i32 %90, i32 %91)
  %93 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %94 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %93, i32 0, i32 2
  store %struct.buffer_head** %92, %struct.buffer_head*** %94, align 8
  %95 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %96 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %95, i32 0, i32 2
  %97 = load %struct.buffer_head**, %struct.buffer_head*** %96, align 8
  %98 = icmp ne %struct.buffer_head** %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %67
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %151

104:                                              ; preds = %67
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %147, %104
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %109 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  br i1 %111, label %112, label %150

112:                                              ; preds = %105
  %113 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %114 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ocfs2_extent_map_get_blocks(%struct.TYPE_6__* %115, i32 %116, i64* %6, i32* null, i32* null)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %151

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %124, i64 %125)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %127 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %128 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %127, i32 0, i32 3
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 @INODE_CACHE(%struct.TYPE_6__* %129)
  %131 = load i64, i64* %6, align 8
  %132 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %133 = call i32 @ocfs2_read_blocks(i32 %130, i64 %131, i32 1, %struct.buffer_head** %10, i32 %132, i32* null)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @mlog_errno(i32 %137)
  br label %151

139:                                              ; preds = %123
  %140 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %141 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %142 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %141, i32 0, i32 2
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 %145
  store %struct.buffer_head* %140, %struct.buffer_head** %146, align 8
  br label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %105

150:                                              ; preds = %105
  br label %151

151:                                              ; preds = %150, %136, %120, %99, %39, %18
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @ocfs2_slot_map_physical_size(%struct.ocfs2_super*, %struct.TYPE_6__*, i64*) #1

declare dso_local i64 @ocfs2_blocks_for_bytes(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

declare dso_local %struct.buffer_head** @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.TYPE_6__*, i32, i64*, i32*, i32*) #1

declare dso_local i32 @ocfs2_read_blocks(i32, i64, i32, %struct.buffer_head**, i32, i32*) #1

declare dso_local i32 @INODE_CACHE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
