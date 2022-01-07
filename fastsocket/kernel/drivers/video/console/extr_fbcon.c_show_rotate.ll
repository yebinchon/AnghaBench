; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_show_rotate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_show_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@fbcon_has_exited = common dso_local global i64 0, align 8
@con2fb_map = common dso_local global i32* null, align 8
@fg_console = common dso_local global i64 0, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_rotate(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* @fbcon_has_exited, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = call i32 (...) @acquire_console_sem()
  %16 = load i32*, i32** @con2fb_map, align 8
  %17 = load i64, i64* @fg_console, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %23, i64 %25
  %27 = load %struct.fb_info*, %struct.fb_info** %26, align 8
  %28 = icmp eq %struct.fb_info* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %14
  br label %38

30:                                               ; preds = %22
  %31 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %31, i64 %33
  %35 = load %struct.fb_info*, %struct.fb_info** %34, align 8
  store %struct.fb_info* %35, %struct.fb_info** %8, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %37 = call i32 @fbcon_get_rotate(%struct.fb_info* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = call i32 (...) @release_console_sem()
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @fbcon_get_rotate(%struct.fb_info*) #1

declare dso_local i32 @release_console_sem(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
