; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_splice_pipe_to_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_splice_pipe_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, i32, %struct.pipe_buffer*, i32, i32 }
%struct.pipe_buffer = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PIPE_BUFFERS = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_inode_info*, i64, i32)* @splice_pipe_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splice_pipe_to_pipe(%struct.pipe_inode_info* %0, %struct.pipe_inode_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_buffer*, align 8
  %11 = alloca %struct.pipe_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %6, align 8
  store %struct.pipe_inode_info* %1, %struct.pipe_inode_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %84, %4
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ipipe_prep(%struct.pipe_inode_info* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %228

23:                                               ; preds = %15
  %24 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @opipe_prep(%struct.pipe_inode_info* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %228

31:                                               ; preds = %23
  %32 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %33 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %34 = call i32 @pipe_double_lock(%struct.pipe_inode_info* %32, %struct.pipe_inode_info* %33)
  br label %35

35:                                               ; preds = %194, %31
  %36 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %37 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @SIGPIPE, align 4
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @send_sig(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EPIPE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %40
  br label %197

50:                                               ; preds = %35
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %52 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %57 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %197

61:                                               ; preds = %55, %50
  %62 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %63 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %68 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PIPE_BUFFERS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %197

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %197

84:                                               ; preds = %76
  %85 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %86 = call i32 @pipe_unlock(%struct.pipe_inode_info* %85)
  %87 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %88 = call i32 @pipe_unlock(%struct.pipe_inode_info* %87)
  br label %15

89:                                               ; preds = %66
  %90 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %91 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %90, i32 0, i32 4
  %92 = load %struct.pipe_buffer*, %struct.pipe_buffer** %91, align 8
  %93 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %94 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %92, i64 %96
  store %struct.pipe_buffer* %97, %struct.pipe_buffer** %10, align 8
  %98 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %99 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %102 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* @PIPE_BUFFERS, align 4
  %106 = srem i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %108 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %107, i32 0, i32 4
  %109 = load %struct.pipe_buffer*, %struct.pipe_buffer** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %109, i64 %111
  store %struct.pipe_buffer* %112, %struct.pipe_buffer** %11, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %115 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp uge i64 %113, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %89
  %119 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %120 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %121 = bitcast %struct.pipe_buffer* %119 to i8*
  %122 = bitcast %struct.pipe_buffer* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 32, i1 false)
  %123 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %124 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %123, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %124, align 8
  %125 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %126 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %130 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* @PIPE_BUFFERS, align 4
  %134 = srem i32 %132, %133
  %135 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %136 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %138 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  store i32 1, i32* %14, align 4
  br label %181

141:                                              ; preds = %89
  %142 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %143 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %145, align 8
  %147 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %148 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %149 = call i32 %146(%struct.pipe_inode_info* %147, %struct.pipe_buffer* %148)
  %150 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %151 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %152 = bitcast %struct.pipe_buffer* %150 to i8*
  %153 = bitcast %struct.pipe_buffer* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 32, i1 false)
  %154 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %157 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %162 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %164 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  %167 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %168 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %171 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %175 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %178 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub i64 %179, %176
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %141, %118
  %182 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %183 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %12, align 4
  %189 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %190 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %8, align 8
  %193 = sub i64 %192, %191
  store i64 %193, i64* %8, align 8
  br label %194

194:                                              ; preds = %181
  %195 = load i64, i64* %8, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %35, label %197

197:                                              ; preds = %194, %81, %75, %60, %49
  %198 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %199 = call i32 @pipe_unlock(%struct.pipe_inode_info* %198)
  %200 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %201 = call i32 @pipe_unlock(%struct.pipe_inode_info* %200)
  %202 = load i32, i32* %12, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %197
  %205 = call i32 (...) @smp_mb()
  %206 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %207 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %206, i32 0, i32 3
  %208 = call i64 @waitqueue_active(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %212 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %211, i32 0, i32 3
  %213 = call i32 @wake_up_interruptible(i32* %212)
  br label %214

214:                                              ; preds = %210, %204
  %215 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %216 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %215, i32 0, i32 2
  %217 = load i32, i32* @SIGIO, align 4
  %218 = load i32, i32* @POLL_IN, align 4
  %219 = call i32 @kill_fasync(i32* %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %197
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %225 = call i32 @wakeup_pipe_writers(%struct.pipe_inode_info* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32, i32* %12, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %29, %21
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @ipipe_prep(%struct.pipe_inode_info*, i32) #1

declare dso_local i32 @opipe_prep(%struct.pipe_inode_info*, i32) #1

declare dso_local i32 @pipe_double_lock(%struct.pipe_inode_info*, %struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @wakeup_pipe_writers(%struct.pipe_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
