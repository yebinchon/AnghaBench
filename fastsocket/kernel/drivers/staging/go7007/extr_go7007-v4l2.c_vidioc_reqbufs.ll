; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i64, i64, i32, i32, i32, %struct.go7007* }
%struct.go7007 = type { i32, i32, i64 }
%struct.go7007_file = type { i32, i32, %struct.v4l2_requestbuffers*, %struct.go7007* }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUF_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.go7007_file*, align 8
  %9 = alloca %struct.go7007*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.go7007_file*
  store %struct.go7007_file* %14, %struct.go7007_file** %8, align 8
  %15 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %16 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %15, i32 0, i32 3
  %17 = load %struct.go7007*, %struct.go7007** %16, align 8
  store %struct.go7007* %17, %struct.go7007** %9, align 8
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.go7007*, %struct.go7007** %9, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %206

26:                                               ; preds = %3
  %27 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %206

41:                                               ; preds = %32
  %42 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %43 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %63, %41
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %48 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %53 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %52, i32 0, i32 2
  %54 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %54, i64 %56
  %58 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %201

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %45

66:                                               ; preds = %45
  %67 = load %struct.go7007*, %struct.go7007** %9, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 1
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.go7007*, %struct.go7007** %9, align 8
  %71 = getelementptr inbounds %struct.go7007, %struct.go7007* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %76 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.go7007*, %struct.go7007** %9, align 8
  %81 = getelementptr inbounds %struct.go7007, %struct.go7007* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %201

83:                                               ; preds = %74, %66
  %84 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %85 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %90 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %89, i32 0, i32 2
  %91 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %90, align 8
  %92 = call i32 @kfree(%struct.v4l2_requestbuffers* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  %96 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ugt i32 %99, 0
  br i1 %100, label %101, label %177

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 2, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp ugt i32 %106, 32
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 32, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call %struct.v4l2_requestbuffers* @kmalloc(i32 %113, i32 %114)
  %116 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %117 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %116, i32 0, i32 2
  store %struct.v4l2_requestbuffers* %115, %struct.v4l2_requestbuffers** %117, align 8
  %118 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %119 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %118, i32 0, i32 2
  %120 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %119, align 8
  %121 = icmp ne %struct.v4l2_requestbuffers* %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %109
  %123 = load %struct.go7007*, %struct.go7007** %9, align 8
  %124 = getelementptr inbounds %struct.go7007, %struct.go7007* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  br label %201

126:                                              ; preds = %109
  %127 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %128 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %127, i32 0, i32 2
  %129 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memset(%struct.v4l2_requestbuffers* %129, i32 0, i32 %133)
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %171, %126
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %135
  %140 = load %struct.go7007*, %struct.go7007** %9, align 8
  %141 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %142 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %141, i32 0, i32 2
  %143 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %143, i64 %145
  %147 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %146, i32 0, i32 6
  store %struct.go7007* %140, %struct.go7007** %147, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %150 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %149, i32 0, i32 2
  %151 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %151, i64 %153
  %155 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %154, i32 0, i32 4
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* @BUF_STATE_IDLE, align 4
  %157 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %158 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %157, i32 0, i32 2
  %159 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %159, i64 %161
  %163 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %162, i32 0, i32 5
  store i32 %156, i32* %163, align 8
  %164 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %165 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %164, i32 0, i32 2
  %166 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %166, i64 %168
  %170 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %139
  %172 = load i32, i32* %12, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %135

174:                                              ; preds = %135
  %175 = load %struct.go7007*, %struct.go7007** %9, align 8
  %176 = getelementptr inbounds %struct.go7007, %struct.go7007* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  br label %180

177:                                              ; preds = %93
  %178 = load %struct.go7007*, %struct.go7007** %9, align 8
  %179 = getelementptr inbounds %struct.go7007, %struct.go7007* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %183 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.go7007*, %struct.go7007** %9, align 8
  %185 = getelementptr inbounds %struct.go7007, %struct.go7007* %184, i32 0, i32 1
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %188 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %187, i32 0, i32 1
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %191 = call i32 @memset(%struct.v4l2_requestbuffers* %190, i32 0, i32 48)
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %194 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %196 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %197 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %199 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %200 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  store i32 0, i32* %4, align 4
  br label %206

201:                                              ; preds = %122, %79, %61
  %202 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %203 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %202, i32 0, i32 1
  %204 = call i32 @mutex_unlock(i32* %203)
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %201, %180, %38, %24
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.v4l2_requestbuffers*) #1

declare dso_local %struct.v4l2_requestbuffers* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.v4l2_requestbuffers*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
