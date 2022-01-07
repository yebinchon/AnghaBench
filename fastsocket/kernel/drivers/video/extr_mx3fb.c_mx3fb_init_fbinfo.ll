; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_mx3fb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_mx3fb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, i32, %struct.fb_ops*, %struct.TYPE_2__, %struct.mx3fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.mx3fb_info = type { i32, i32, i64, i32 }
%struct.device = type { i32 }
%struct.fb_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_info* (%struct.device*, %struct.fb_ops*)* @mx3fb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_info* @mx3fb_init_fbinfo(%struct.device* %0, %struct.fb_ops* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fb_ops*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.mx3fb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fb_ops* %1, %struct.fb_ops** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.fb_info* @framebuffer_alloc(i32 24, %struct.device* %9)
  store %struct.fb_info* %10, %struct.fb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = icmp ne %struct.fb_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.fb_info* null, %struct.fb_info** %3, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 5
  %17 = load %struct.mx3fb_info*, %struct.mx3fb_info** %16, align 8
  store %struct.mx3fb_info* %17, %struct.mx3fb_info** %7, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = load %struct.mx3fb_info*, %struct.mx3fb_info** %7, align 8
  %21 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mx3fb_info*, %struct.mx3fb_info** %7, align 8
  %23 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.fb_ops*, %struct.fb_ops** %5, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 3
  store %struct.fb_ops* %28, %struct.fb_ops** %30, align 8
  %31 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mx3fb_info*, %struct.mx3fb_info** %7, align 8
  %35 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mx3fb_info*, %struct.mx3fb_info** %7, align 8
  %40 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %39, i32 0, i32 0
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = call i32 @fb_alloc_cmap(i32* %43, i32 16, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %14
  %48 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %49 = call i32 @framebuffer_release(%struct.fb_info* %48)
  store %struct.fb_info* null, %struct.fb_info** %3, align 8
  br label %52

50:                                               ; preds = %14
  %51 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  store %struct.fb_info* %51, %struct.fb_info** %3, align 8
  br label %52

52:                                               ; preds = %50, %47, %13
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  ret %struct.fb_info* %53
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
