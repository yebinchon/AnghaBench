; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, i64 }
%struct.go7007_file = type { i64, i32, %struct.go7007_buffer*, %struct.go7007* }
%struct.go7007_buffer = type { i64, i32, i32, i32, i32, i32*, i64, i64, i64, i32 }
%struct.go7007 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@BUF_STATE_IDLE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@GO7007_BUF_PAGES = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@BUF_STATE_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.go7007_file*, align 8
  %9 = alloca %struct.go7007*, align 8
  %10 = alloca %struct.go7007_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.go7007_file*
  store %struct.go7007_file* %16, %struct.go7007_file** %8, align 8
  %17 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %18 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %17, i32 0, i32 3
  %19 = load %struct.go7007*, %struct.go7007** %18, align 8
  store %struct.go7007* %19, %struct.go7007** %9, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %183

35:                                               ; preds = %27
  %36 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %37 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %48 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35
  br label %178

52:                                               ; preds = %43
  %53 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %54 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %53, i32 0, i32 2
  %55 = load %struct.go7007_buffer*, %struct.go7007_buffer** %54, align 8
  %56 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %55, i64 %58
  store %struct.go7007_buffer* %59, %struct.go7007_buffer** %10, align 8
  %60 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %61 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  br label %178

65:                                               ; preds = %52
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %69 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BUF_STATE_IDLE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %178

74:                                               ; preds = %65
  %75 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %76 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PAGE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %82 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %84 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  %85 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %86 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %85, i32 0, i32 7
  store i64 0, i64* %86, align 8
  %87 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %88 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %90 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %74
  %94 = load i8*, i8** @GO7007_BUF_PAGES, align 8
  %95 = getelementptr i8, i8* %94, i64 1
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %98 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %104

99:                                               ; preds = %74
  %100 = load i8*, i8** @GO7007_BUF_PAGES, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %103 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %93
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @down_read(i32* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %117 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PAGE_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %122 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %125 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @get_user_pages(%struct.TYPE_4__* %112, %struct.TYPE_5__* %115, i32 %120, i32 %123, i32 1, i32 1, i32* %126, i32* null)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = call i32 @up_read(i32* %131)
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %135 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %152, %138
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %145 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @page_cache_release(i32 %150)
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %139

155:                                              ; preds = %139
  %156 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %157 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %156, i32 0, i32 3
  store i32 0, i32* %157, align 8
  br label %178

158:                                              ; preds = %104
  %159 = load i64, i64* @BUF_STATE_QUEUED, align 8
  %160 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %161 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.go7007*, %struct.go7007** %9, align 8
  %163 = getelementptr inbounds %struct.go7007, %struct.go7007* %162, i32 0, i32 0
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.go7007_buffer*, %struct.go7007_buffer** %10, align 8
  %167 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %166, i32 0, i32 4
  %168 = load %struct.go7007*, %struct.go7007** %9, align 8
  %169 = getelementptr inbounds %struct.go7007, %struct.go7007* %168, i32 0, i32 1
  %170 = call i32 @list_add_tail(i32* %167, i32* %169)
  %171 = load %struct.go7007*, %struct.go7007** %9, align 8
  %172 = getelementptr inbounds %struct.go7007, %struct.go7007* %171, i32 0, i32 0
  %173 = load i64, i64* %11, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  %175 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %176 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %175, i32 0, i32 1
  %177 = call i32 @mutex_unlock(i32* %176)
  store i32 0, i32* %4, align 4
  br label %183

178:                                              ; preds = %155, %73, %64, %51
  %179 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %180 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %179, i32 0, i32 1
  %181 = call i32 @mutex_unlock(i32* %180)
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %178, %158, %33
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
