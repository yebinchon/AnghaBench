; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_buffers_splice_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_buffers_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ftrace_buffer_info* }
%struct.ftrace_buffer_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pipe_inode_info = type { i32 }
%struct.splice_pipe_desc = type { i32, i32, %struct.partial_page*, %struct.page**, i32, i32* }
%struct.partial_page = type { i32, i64, i64 }
%struct.page = type { i32 }
%struct.buffer_ref = type { i32, i32, i32 }

@PIPE_BUFFERS = common dso_local global i32 0, align 4
@buffer_spd_release = common dso_local global i32 0, align 4
@buffer_pipe_buf_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Ftrace: previous read must page-align\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Ftrace: splice_read should page-align\0A\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @tracing_buffers_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tracing_buffers_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ftrace_buffer_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.splice_pipe_desc, align 8
  %17 = alloca %struct.buffer_ref*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.page*, align 8
  %24 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %26, align 8
  store %struct.ftrace_buffer_info* %27, %struct.ftrace_buffer_info** %12, align 8
  %28 = load i32, i32* @PIPE_BUFFERS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca %struct.partial_page, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load i32, i32* @PIPE_BUFFERS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.page*, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  store %struct.partial_page* %31, %struct.partial_page** %38, align 8
  %39 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  store %struct.page** %34, %struct.page*** %39, align 8
  %40 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 4
  %41 = load i32, i32* @buffer_spd_release, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 5
  store i32* @buffer_pipe_buf_ops, i32** %42, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %5
  %50 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %241

53:                                               ; preds = %5
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = and i64 %54, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %241

69:                                               ; preds = %60
  %70 = load i64, i64* @PAGE_MASK, align 8
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %53
  %74 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %75 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %80 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ring_buffer_entries_cpu(i32 %78, i32 %81)
  store i32 %82, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %83

83:                                               ; preds = %213, %73
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @PIPE_BUFFERS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %90, %87, %83
  %94 = phi i1 [ false, %87 ], [ false, %83 ], [ %92, %90 ]
  br i1 %94, label %95, label %220

95:                                               ; preds = %93
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.buffer_ref* @kzalloc(i32 12, i32 %96)
  store %struct.buffer_ref* %97, %struct.buffer_ref** %17, align 8
  %98 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %99 = icmp ne %struct.buffer_ref* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %220

101:                                              ; preds = %95
  %102 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %103 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  %104 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %105 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %110 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %112 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ring_buffer_alloc_read_page(i32 %113)
  %115 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %116 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %118 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %101
  %122 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %123 = call i32 @kfree(%struct.buffer_ref* %122)
  br label %220

124:                                              ; preds = %101
  %125 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %126 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %129 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %128, i32 0, i32 1
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %132 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ring_buffer_read_page(i32 %127, i32* %129, i64 %130, i32 %133, i32 1)
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %124
  %138 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %139 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %142 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ring_buffer_free_read_page(i32 %140, i32 %143)
  %145 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %146 = call i32 @kfree(%struct.buffer_ref* %145)
  br label %220

147:                                              ; preds = %124
  %148 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %149 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ring_buffer_page_len(i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %147
  %156 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %157 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = load i32, i32* %19, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i32 @memset(i32 %160, i32 0, i32 %163)
  br label %165

165:                                              ; preds = %155, %147
  %166 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %167 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.page* @virt_to_page(i32 %168)
  store %struct.page* %169, %struct.page** %23, align 8
  %170 = load %struct.page*, %struct.page** %23, align 8
  %171 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  %172 = load %struct.page**, %struct.page*** %171, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.page*, %struct.page** %172, i64 %174
  store %struct.page* %170, %struct.page** %175, align 8
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %178 = load %struct.partial_page*, %struct.partial_page** %177, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %178, i64 %180
  %182 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %181, i32 0, i32 0
  store i32 %176, i32* %182, align 8
  %183 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %184 = load %struct.partial_page*, %struct.partial_page** %183, align 8
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %184, i64 %186
  %188 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %187, i32 0, i32 2
  store i64 0, i64* %188, align 8
  %189 = load %struct.buffer_ref*, %struct.buffer_ref** %17, align 8
  %190 = ptrtoint %struct.buffer_ref* %189 to i64
  %191 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %192 = load %struct.partial_page*, %struct.partial_page** %191, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %192, i64 %194
  %196 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %195, i32 0, i32 1
  store i64 %190, i64* %196, align 8
  %197 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %200
  store i32 %203, i32* %201, align 4
  %204 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %205 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %12, align 8
  %210 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @ring_buffer_entries_cpu(i32 %208, i32 %211)
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %165
  %214 = load i32, i32* %20, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %20, align 4
  %216 = load i32, i32* @PAGE_SIZE, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* %10, align 8
  %219 = sub i64 %218, %217
  store i64 %219, i64* %10, align 8
  br label %83

220:                                              ; preds = %137, %121, %100, %93
  %221 = load i32, i32* %20, align 4
  %222 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  store i32 %221, i32* %222, align 4
  %223 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i64, i64* @EAGAIN, align 8
  %233 = sub i64 0, %232
  store i64 %233, i64* %21, align 8
  br label %235

234:                                              ; preds = %226
  store i64 0, i64* %21, align 8
  br label %235

235:                                              ; preds = %234, %231
  %236 = load i64, i64* %21, align 8
  store i64 %236, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %241

237:                                              ; preds = %220
  %238 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %239 = call i64 @splice_to_pipe(%struct.pipe_inode_info* %238, %struct.splice_pipe_desc* %16)
  store i64 %239, i64* %21, align 8
  %240 = load i64, i64* %21, align 8
  store i64 %240, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %241

241:                                              ; preds = %237, %235, %66, %49
  %242 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i64, i64* %6, align 8
  ret i64 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #2

declare dso_local i32 @ring_buffer_entries_cpu(i32, i32) #2

declare dso_local %struct.buffer_ref* @kzalloc(i32, i32) #2

declare dso_local i32 @ring_buffer_alloc_read_page(i32) #2

declare dso_local i32 @kfree(%struct.buffer_ref*) #2

declare dso_local i32 @ring_buffer_read_page(i32, i32*, i64, i32, i32) #2

declare dso_local i32 @ring_buffer_free_read_page(i32, i32) #2

declare dso_local i32 @ring_buffer_page_len(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local %struct.page* @virt_to_page(i32) #2

declare dso_local i64 @splice_to_pipe(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
