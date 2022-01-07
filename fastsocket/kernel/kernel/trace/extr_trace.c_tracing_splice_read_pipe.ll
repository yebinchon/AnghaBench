; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_splice_read_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_splice_read_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracer = type { i32 (%struct.trace_iterator.0*, %struct.file.1*, i32*, %struct.pipe_inode_info*, i64, i32)* }
%struct.trace_iterator.0 = type opaque
%struct.file.1 = type opaque
%struct.pipe_inode_info = type opaque
%struct.file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32, %struct.TYPE_3__, i32, %struct.tracer* }
%struct.TYPE_3__ = type { i32 }
%struct.pipe_inode_info.2 = type { i32 }
%struct.splice_pipe_desc = type { i32, i32, i32, i32*, %struct.partial_page*, %struct.page** }
%struct.partial_page = type { i32, i64 }
%struct.page = type { i32 }

@PIPE_BUFFERS = common dso_local global i32 0, align 4
@tracing_spd_release_pipe = common dso_local global i32 0, align 4
@tracing_pipe_buf_ops = common dso_local global i32 0, align 4
@tracing_splice_read_pipe.old_tracer = internal global %struct.tracer* null, align 8
@trace_types_lock = common dso_local global i32 0, align 4
@current_trace = common dso_local global %struct.tracer* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.pipe_inode_info.2*, i64, i32)* @tracing_splice_read_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_splice_read_pipe(%struct.file* %0, i32* %1, %struct.pipe_inode_info.2* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info.2*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.trace_iterator*, align 8
  %16 = alloca %struct.splice_pipe_desc, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info.2* %2, %struct.pipe_inode_info.2** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @PIPE_BUFFERS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.page*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @PIPE_BUFFERS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.partial_page, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %29, align 8
  store %struct.trace_iterator* %30, %struct.trace_iterator** %15, align 8
  %31 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %35 = load i32, i32* @tracing_spd_release_pipe, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  store i32* @tracing_pipe_buf_ops, i32** %36, align 8
  %37 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 4
  store %struct.partial_page* %27, %struct.partial_page** %37, align 8
  %38 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 5
  store %struct.page** %24, %struct.page*** %38, align 8
  %39 = call i32 @mutex_lock(i32* @trace_types_lock)
  %40 = load %struct.tracer*, %struct.tracer** @tracing_splice_read_pipe.old_tracer, align 8
  %41 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %42 = icmp ne %struct.tracer* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %5
  %44 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %45 = icmp ne %struct.tracer* %44, null
  br label %46

46:                                               ; preds = %43, %5
  %47 = phi i1 [ false, %5 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  store %struct.tracer* %52, %struct.tracer** @tracing_splice_read_pipe.old_tracer, align 8
  %53 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %54 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %53, i32 0, i32 3
  %55 = load %struct.tracer*, %struct.tracer** %54, align 8
  %56 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %57 = bitcast %struct.tracer* %55 to i8*
  %58 = bitcast %struct.tracer* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  br label %59

59:                                               ; preds = %51, %46
  %60 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %61 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %62 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %65 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %64, i32 0, i32 3
  %66 = load %struct.tracer*, %struct.tracer** %65, align 8
  %67 = getelementptr inbounds %struct.tracer, %struct.tracer* %66, i32 0, i32 0
  %68 = load i32 (%struct.trace_iterator.0*, %struct.file.1*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.trace_iterator.0*, %struct.file.1*, i32*, %struct.pipe_inode_info*, i64, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.trace_iterator.0*, %struct.file.1*, i32*, %struct.pipe_inode_info*, i64, i32)* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %59
  %71 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %72 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %71, i32 0, i32 3
  %73 = load %struct.tracer*, %struct.tracer** %72, align 8
  %74 = getelementptr inbounds %struct.tracer, %struct.tracer* %73, i32 0, i32 0
  %75 = load i32 (%struct.trace_iterator.0*, %struct.file.1*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.trace_iterator.0*, %struct.file.1*, i32*, %struct.pipe_inode_info*, i64, i32)** %74, align 8
  %76 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %77 = bitcast %struct.trace_iterator* %76 to %struct.trace_iterator.0*
  %78 = load %struct.file*, %struct.file** %7, align 8
  %79 = bitcast %struct.file* %78 to %struct.file.1*
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.pipe_inode_info.2*, %struct.pipe_inode_info.2** %9, align 8
  %82 = bitcast %struct.pipe_inode_info.2* %81 to %struct.pipe_inode_info*
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 %75(%struct.trace_iterator.0* %77, %struct.file.1* %79, i32* %80, %struct.pipe_inode_info* %82, i64 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  br label %184

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = call i32 @tracing_wait_pipe(%struct.file* %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %184

96:                                               ; preds = %90
  %97 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %98 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %103 = call i32 @find_next_entry_inc(%struct.trace_iterator* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @EFAULT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %17, align 4
  br label %184

108:                                              ; preds = %101, %96
  %109 = call i32 (...) @trace_event_read_lock()
  store i32 0, i32* %19, align 4
  %110 = load i64, i64* %10, align 8
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %172, %108
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* @PIPE_BUFFERS, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i64, i64* %18, align 8
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i1 [ false, %111 ], [ %117, %115 ]
  br i1 %119, label %120, label %175

120:                                              ; preds = %118
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.page* @alloc_page(i32 %121)
  %123 = load i32, i32* %19, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %124
  store %struct.page* %122, %struct.page** %125, align 8
  %126 = load i32, i32* %19, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %127
  %129 = load %struct.page*, %struct.page** %128, align 8
  %130 = icmp ne %struct.page* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %175

132:                                              ; preds = %120
  %133 = load i64, i64* %18, align 8
  %134 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %135 = call i64 @tracing_fill_pipe_page(i64 %133, %struct.trace_iterator* %134)
  store i64 %135, i64* %18, align 8
  %136 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %137 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %136, i32 0, i32 1
  %138 = load i32, i32* %19, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %139
  %141 = load %struct.page*, %struct.page** %140, align 8
  %142 = call i32 @page_address(%struct.page* %141)
  %143 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %144 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @trace_seq_to_buffer(%struct.TYPE_3__* %137, i32 %142, i32 %146)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %132
  %151 = load i32, i32* %19, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %152
  %154 = load %struct.page*, %struct.page** %153, align 8
  %155 = call i32 @__free_page(%struct.page* %154)
  br label %175

156:                                              ; preds = %132
  %157 = load i32, i32* %19, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %27, i64 %158
  %160 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %162 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %19, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %27, i64 %166
  %168 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 16
  %169 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %170 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %169, i32 0, i32 1
  %171 = call i32 @trace_seq_init(%struct.TYPE_3__* %170)
  br label %172

172:                                              ; preds = %156
  %173 = load i32, i32* %19, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %19, align 4
  br label %111

175:                                              ; preds = %150, %131, %118
  %176 = call i32 (...) @trace_event_read_unlock()
  %177 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %178 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load i32, i32* %19, align 4
  %181 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  store i32 %180, i32* %181, align 8
  %182 = load %struct.pipe_inode_info.2*, %struct.pipe_inode_info.2** %9, align 8
  %183 = call i32 @splice_to_pipe(%struct.pipe_inode_info.2* %182, %struct.splice_pipe_desc* %16)
  store i32 %183, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %189

184:                                              ; preds = %105, %95, %88
  %185 = load %struct.trace_iterator*, %struct.trace_iterator** %15, align 8
  %186 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %17, align 4
  store i32 %188, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %189

189:                                              ; preds = %184, %175
  %190 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @unlikely(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @tracing_wait_pipe(%struct.file*) #2

declare dso_local i32 @find_next_entry_inc(%struct.trace_iterator*) #2

declare dso_local i32 @trace_event_read_lock(...) #2

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i64 @tracing_fill_pipe_page(i64, %struct.trace_iterator*) #2

declare dso_local i32 @trace_seq_to_buffer(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @page_address(%struct.page*) #2

declare dso_local i32 @__free_page(%struct.page*) #2

declare dso_local i32 @trace_seq_init(%struct.TYPE_3__*) #2

declare dso_local i32 @trace_event_read_unlock(...) #2

declare dso_local i32 @splice_to_pipe(%struct.pipe_inode_info.2*, %struct.splice_pipe_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
