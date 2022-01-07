; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_check_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_check_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)* }
%struct.fb_blit_caps = type { i32, i32, i32, i64 }
%struct.fb_var_screeninfo = type { i32 }
%struct.fb_event = type { %struct.fb_blit_caps*, %struct.fb_info* }

@FB_ACTIVATE_ALL = common dso_local global i32 0, align 4
@FB_EVENT_GET_REQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*, i32)* @fb_check_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_check_caps(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1, i32 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_event, align 8
  %8 = alloca %struct.fb_blit_caps, align 8
  %9 = alloca %struct.fb_blit_caps, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 @memset(%struct.fb_blit_caps* %8, i32 0, i32 24)
  %12 = call i32 @memset(%struct.fb_blit_caps* %9, i32 0, i32 24)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FB_ACTIVATE_ALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %7, i32 0, i32 1
  store %struct.fb_info* %20, %struct.fb_info** %21, align 8
  %22 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %7, i32 0, i32 0
  store %struct.fb_blit_caps* %8, %struct.fb_blit_caps** %22, align 8
  %23 = load i32, i32* @FB_EVENT_GET_REQ, align 4
  %24 = call i32 @fb_notifier_call_chain(i32 %23, %struct.fb_event* %7)
  %25 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, i32 (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)** %28, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %32 = call i32 %29(%struct.fb_info* %30, %struct.fb_blit_caps* %9, %struct.fb_var_screeninfo* %31)
  %33 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %34, %36
  %38 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %44, %46
  %48 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %9, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %42, %3
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.fb_blit_caps*, i32, i32) #1

declare dso_local i32 @fb_notifier_call_chain(i32, %struct.fb_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
