; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32 }
%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 }
%struct.vc_data = type { i64 }

@fb_display = common dso_local global %struct.display* null, align 8
@con2fb_map = common dso_local global i32* null, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@FBCON_FLAGS_INIT = common dso_local global i32 0, align 4
@fb_con = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @fbcon_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_deinit(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.display*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fbcon_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %7 = load %struct.display*, %struct.display** @fb_display, align 8
  %8 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %7, i64 %10
  store %struct.display* %11, %struct.display** %3, align 8
  %12 = load %struct.display*, %struct.display** %3, align 8
  %13 = call i32 @fbcon_free_font(%struct.display* %12)
  %14 = load i32*, i32** @con2fb_map, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %53

23:                                               ; preds = %1
  %24 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %24, i64 %26
  %28 = load %struct.fb_info*, %struct.fb_info** %27, align 8
  store %struct.fb_info* %28, %struct.fb_info** %4, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = icmp ne %struct.fb_info* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %53

32:                                               ; preds = %23
  %33 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = load %struct.fbcon_ops*, %struct.fbcon_ops** %34, align 8
  store %struct.fbcon_ops* %35, %struct.fbcon_ops** %5, align 8
  %36 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %37 = icmp ne %struct.fbcon_ops* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %53

39:                                               ; preds = %32
  %40 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %41 = call i64 @CON_IS_VISIBLE(%struct.vc_data* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %45 = call i32 @fbcon_del_cursor_timer(%struct.fb_info* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* @FBCON_FLAGS_INIT, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %50 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %38, %31, %22
  %54 = call i32 @con_is_bound(i32* @fb_con)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 (...) @fbcon_exit()
  br label %58

58:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @fbcon_free_font(%struct.display*) #1

declare dso_local i64 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @fbcon_del_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @con_is_bound(i32*) #1

declare dso_local i32 @fbcon_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
