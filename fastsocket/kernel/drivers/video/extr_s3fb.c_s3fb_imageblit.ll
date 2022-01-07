; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3fb.c_s3fb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3fb.c_s3fb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_image = type { i32, i32, i32 }

@FB_TYPE_INTERLEAVED_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @s3fb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3fb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %12 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %17 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %23 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FB_TYPE_INTERLEAVED_PLANES, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %37 = call i32 @s3fb_iplan_imageblit(%struct.fb_info* %35, %struct.fb_image* %36)
  br label %42

38:                                               ; preds = %27
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %41 = call i32 @s3fb_cfb4_imageblit(%struct.fb_info* %39, %struct.fb_image* %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %47

43:                                               ; preds = %21, %15, %10, %2
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %46 = call i32 @cfb_imageblit(%struct.fb_info* %44, %struct.fb_image* %45)
  br label %47

47:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @s3fb_iplan_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @s3fb_cfb4_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
