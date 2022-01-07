; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_get_frame_type_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_get_frame_type_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007_buffer = type { i32, i32* }

@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_BFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007_buffer*, i32)* @get_frame_type_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frame_type_flag(%struct.go7007_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.go7007_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.go7007_buffer* %0, %struct.go7007_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @page_address(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %52 [
    i32 131, label %14
    i32 128, label %16
    i32 130, label %34
    i32 129, label %34
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 3
  switch i32 %26, label %33 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %31
  ]

27:                                               ; preds = %16
  %28 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %16
  %30 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %16
  %32 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %53

34:                                               ; preds = %2, %2
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 3
  %44 = and i32 %43, 7
  switch i32 %44, label %51 [
    i32 1, label %45
    i32 2, label %47
    i32 3, label %49
  ]

45:                                               ; preds = %34
  %46 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %49, %47, %45, %33, %31, %29, %27, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
