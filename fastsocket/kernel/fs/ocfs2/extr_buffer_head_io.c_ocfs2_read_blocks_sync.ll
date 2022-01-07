; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32, i64 }

@ML_BH_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No buffers will be read!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"trying to sync read a jbd managed bh (blocknr = %llu), skipping\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"trying to sync read a dirty buffer! (blocknr = %llu), skipping\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"block %llu had the JBD bit set while I was in lock_buffer!\00", align 1
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %0, i32 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ML_BH_IO, align 4
  %16 = call i32 (i32, i8*, ...) @mlog(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %141

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %101, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %104

22:                                               ; preds = %18
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %23, i64 %25
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %28 = icmp eq %struct.buffer_head* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = call %struct.buffer_head* @sb_getblk(i32 %32, i32 %33)
  %36 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %36, i64 %38
  store %struct.buffer_head* %35, %struct.buffer_head** %39, align 8
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %40, i64 %42
  %44 = load %struct.buffer_head*, %struct.buffer_head** %43, align 8
  %45 = icmp eq %struct.buffer_head* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %141

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %53, i64 %55
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  store %struct.buffer_head* %57, %struct.buffer_head** %11, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = call i64 @buffer_jbd(%struct.buffer_head* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @ML_BH_IO, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @mlog(i32 %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  br label %101

67:                                               ; preds = %52
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = call i64 @buffer_dirty(%struct.buffer_head* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @ML_ERROR, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, ...) @mlog(i32 %72, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %101

77:                                               ; preds = %67
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = call i32 @lock_buffer(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %81 = call i64 @buffer_jbd(%struct.buffer_head* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* @ML_ERROR, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, ...) @mlog(i32 %84, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %92 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @get_bh(%struct.buffer_head* %93)
  %95 = load i32, i32* @end_buffer_read_sync, align 4
  %96 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %97 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @READ, align 4
  %99 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %100 = call i32 @submit_bh(i32 %98, %struct.buffer_head* %99)
  br label %101

101:                                              ; preds = %90, %71, %61
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %18

104:                                              ; preds = %18
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %137, %104
  %107 = load i32, i32* %10, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %106
  %110 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sub i32 %111, 1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %110, i64 %113
  %115 = load %struct.buffer_head*, %struct.buffer_head** %114, align 8
  store %struct.buffer_head* %115, %struct.buffer_head** %11, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %117 = call i64 @buffer_jbd(%struct.buffer_head* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %121 = call i32 @wait_on_buffer(%struct.buffer_head* %120)
  br label %122

122:                                              ; preds = %119, %109
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = call i32 @buffer_uptodate(%struct.buffer_head* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  %129 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %130 = call i32 @put_bh(%struct.buffer_head* %129)
  %131 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sub i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %131, i64 %134
  store %struct.buffer_head* null, %struct.buffer_head** %135, align 8
  br label %136

136:                                              ; preds = %126, %122
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %10, align 4
  br label %106

140:                                              ; preds = %106
  br label %141

141:                                              ; preds = %140, %46, %14
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
