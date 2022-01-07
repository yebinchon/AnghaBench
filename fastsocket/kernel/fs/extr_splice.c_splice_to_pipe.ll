; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_splice_to_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_splice_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, i32, i32, i64, %struct.pipe_buffer*, i32 }
%struct.pipe_buffer = type { i64, i32, i32, i32, i32, i32 }
%struct.splice_pipe_desc = type { i32, i32, i32 (%struct.splice_pipe_desc*, i32)*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PIPE_BUFFERS = common dso_local global i32 0, align 4
@SPLICE_F_GIFT = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @splice_to_pipe(%struct.pipe_inode_info* %0, %struct.splice_pipe_desc* %1) #0 {
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = alloca %struct.splice_pipe_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_buffer*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %3, align 8
  store %struct.splice_pipe_desc* %1, %struct.splice_pipe_desc** %4, align 8
  %11 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %12 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %15 = call i32 @pipe_lock(%struct.pipe_inode_info* %14)
  br label %16

16:                                               ; preds = %188, %142, %2
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @SIGPIPE, align 4
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @send_sig(i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EPIPE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %21
  br label %199

31:                                               ; preds = %16
  %32 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %33 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PIPE_BUFFERS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %144

37:                                               ; preds = %31
  %38 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %39 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  %45 = load i32, i32* @PIPE_BUFFERS, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %49 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %48, i32 0, i32 6
  %50 = load %struct.pipe_buffer*, %struct.pipe_buffer** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %50, i64 %52
  store %struct.pipe_buffer* %53, %struct.pipe_buffer** %10, align 8
  %54 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %55 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %62 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %64 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %72 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %74 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %82 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %84 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %92 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %94 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %97 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %99 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SPLICE_F_GIFT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %37
  %105 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %106 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %107 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %37
  %111 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %112 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %118 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %6, align 4
  %124 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %125 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %110
  %130 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %131 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add i32 %132, -1
  store i32 %133, i32* %131, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %199

136:                                              ; preds = %129
  %137 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %138 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @PIPE_BUFFERS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %16

143:                                              ; preds = %136
  br label %199

144:                                              ; preds = %31
  %145 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %146 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @EAGAIN, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %154, %151
  br label %199

158:                                              ; preds = %144
  %159 = load i32, i32* @current, align 4
  %160 = call i64 @signal_pending(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* @ERESTARTSYS, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %199

169:                                              ; preds = %158
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %169
  %173 = call i32 (...) @smp_mb()
  %174 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %175 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %174, i32 0, i32 3
  %176 = call i64 @waitqueue_active(i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %180 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %179, i32 0, i32 3
  %181 = call i32 @wake_up_interruptible_sync(i32* %180)
  br label %182

182:                                              ; preds = %178, %172
  %183 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %184 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %183, i32 0, i32 2
  %185 = load i32, i32* @SIGIO, align 4
  %186 = load i32, i32* @POLL_IN, align 4
  %187 = call i32 @kill_fasync(i32* %184, i32 %185, i32 %186)
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %182, %169
  %189 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %190 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %194 = call i32 @pipe_wait(%struct.pipe_inode_info* %193)
  %195 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %196 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 8
  br label %16

199:                                              ; preds = %168, %157, %143, %135, %30
  %200 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %201 = call i32 @pipe_unlock(%struct.pipe_inode_info* %200)
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = call i32 (...) @smp_mb()
  %206 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %207 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %206, i32 0, i32 3
  %208 = call i64 @waitqueue_active(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %212 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %211, i32 0, i32 3
  %213 = call i32 @wake_up_interruptible(i32* %212)
  br label %214

214:                                              ; preds = %210, %204
  %215 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %216 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %215, i32 0, i32 2
  %217 = load i32, i32* @SIGIO, align 4
  %218 = load i32, i32* @POLL_IN, align 4
  %219 = call i32 @kill_fasync(i32* %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %199
  br label %221

221:                                              ; preds = %225, %220
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %227 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %226, i32 0, i32 2
  %228 = load i32 (%struct.splice_pipe_desc*, i32)*, i32 (%struct.splice_pipe_desc*, i32)** %227, align 8
  %229 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %4, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  %232 = call i32 %228(%struct.splice_pipe_desc* %229, i32 %230)
  br label %221

233:                                              ; preds = %221
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
