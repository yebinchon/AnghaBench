; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_fb_registered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_fb_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@info_idx = common dso_local global i32 0, align 4
@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@con2fb_map_boot = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @fbcon_fb_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_fb_registered(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = call i32 @fbcon_select_primary(%struct.fb_info* %9)
  %11 = load i32, i32* @info_idx, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load i32, i32* @first_fb_vc, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %30, %13
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @last_fb_vc, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32*, i32** @con2fb_map_boot, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* @info_idx, align 4
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %15

33:                                               ; preds = %27, %15
  %34 = load i32, i32* @info_idx, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @fbcon_takeover(i32 1)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33
  br label %62

39:                                               ; preds = %1
  %40 = load i32, i32* @first_fb_vc, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %58, %39
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @last_fb_vc, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32*, i32** @con2fb_map_boot, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @set_con2fb_map(i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %41

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @fbcon_select_primary(%struct.fb_info*) #1

declare dso_local i32 @fbcon_takeover(i32) #1

declare dso_local i32 @set_con2fb_map(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
