; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_link_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_link_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, i32, i64, %struct.pipe_buffer*, i32 }
%struct.pipe_buffer = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PIPE_BUFFERS = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_GIFT = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_inode_info*, i64, i32)* @link_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_pipe(%struct.pipe_inode_info* %0, %struct.pipe_inode_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipe_buffer*, align 8
  %10 = alloca %struct.pipe_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_inode_info* %1, %struct.pipe_inode_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %15 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %16 = call i32 @pipe_double_lock(%struct.pipe_inode_info* %14, %struct.pipe_inode_info* %15)
  br label %17

17:                                               ; preds = %121, %4
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @SIGPIPE, align 4
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @send_sig(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EPIPE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %22
  br label %124

32:                                               ; preds = %17
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PIPE_BUFFERS, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  br label %124

45:                                               ; preds = %38
  %46 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %47 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %46, i32 0, i32 5
  %48 = load %struct.pipe_buffer*, %struct.pipe_buffer** %47, align 8
  %49 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %50 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @PIPE_BUFFERS, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %48, i64 %57
  store %struct.pipe_buffer* %58, %struct.pipe_buffer** %9, align 8
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %60 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %63 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* @PIPE_BUFFERS, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %72, align 8
  %74 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %75 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %76 = call i32 %73(%struct.pipe_inode_info* %74, %struct.pipe_buffer* %75)
  %77 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %78 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %77, i32 0, i32 5
  %79 = load %struct.pipe_buffer*, %struct.pipe_buffer** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %79, i64 %81
  store %struct.pipe_buffer* %82, %struct.pipe_buffer** %10, align 8
  %83 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %84 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %85 = bitcast %struct.pipe_buffer* %83 to i8*
  %86 = bitcast %struct.pipe_buffer* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 24, i1 false)
  %87 = load i32, i32* @PIPE_BUF_FLAG_GIFT, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %90 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %94 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %45
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %101 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %45
  %103 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %104 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %108 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = load %struct.pipe_buffer*, %struct.pipe_buffer** %10, align 8
  %115 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %102
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %17, label %124

124:                                              ; preds = %121, %44, %31
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %124
  %128 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %129 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @SPLICE_F_NONBLOCK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @EAGAIN, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137, %132, %127, %124
  %141 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %142 = call i32 @pipe_unlock(%struct.pipe_inode_info* %141)
  %143 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %144 = call i32 @pipe_unlock(%struct.pipe_inode_info* %143)
  %145 = load i32, i32* %11, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %140
  %148 = call i32 (...) @smp_mb()
  %149 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %150 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %149, i32 0, i32 3
  %151 = call i64 @waitqueue_active(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %155 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %154, i32 0, i32 3
  %156 = call i32 @wake_up_interruptible(i32* %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %159 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %158, i32 0, i32 2
  %160 = load i32, i32* @SIGIO, align 4
  %161 = load i32, i32* @POLL_IN, align 4
  %162 = call i32 @kill_fasync(i32* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %140
  %164 = load i32, i32* %11, align 4
  ret i32 %164
}

declare dso_local i32 @pipe_double_lock(%struct.pipe_inode_info*, %struct.pipe_inode_info*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
