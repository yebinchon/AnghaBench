; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)* }
%struct.vc_data = type { i64, i32, i32, i64 }
%struct.fb_info.0 = type opaque

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@CM_ERASE = common dso_local global i32 0, align 4
@CM_SOFTBACK = common dso_local global i32 0, align 4
@softback_lines = common dso_local global i32 0, align 4
@CURSOR_DRAW_DELAY = common dso_local global i32 0, align 4
@vbl_cursor_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @fbcon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %10 = load i64*, i64** @con2fb_map, align 8
  %11 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %9, i64 %15
  %17 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  store %struct.fb_info* %17, %struct.fb_info** %5, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %19, align 8
  store %struct.fbcon_ops* %20, %struct.fbcon_ops** %6, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @scr_readw(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = call i64 @fbcon_is_inactive(%struct.vc_data* %26, %struct.fb_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %2
  br label %92

36:                                               ; preds = %30
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 16
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = call i32 @fbcon_del_cursor_timer(%struct.fb_info* %43)
  br label %48

45:                                               ; preds = %36
  %46 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %47 = call i32 @fbcon_add_cursor_timer(%struct.fb_info* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @CM_ERASE, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 1
  %54 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %55 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @CM_SOFTBACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* @CM_SOFTBACK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @softback_lines, align 4
  store i32 %65, i32* %7, align 4
  br label %73

66:                                               ; preds = %48
  %67 = load i32, i32* @softback_lines, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = call i32 @fbcon_set_origin(%struct.vc_data* %70)
  br label %72

72:                                               ; preds = %69, %66
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %75 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %74, i32 0, i32 1
  %76 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %75, align 8
  %77 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = bitcast %struct.fb_info* %78 to %struct.fb_info.0*
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %83 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @get_color(%struct.vc_data* %82, %struct.fb_info* %83, i32 %84, i32 1)
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @get_color(%struct.vc_data* %86, %struct.fb_info* %87, i32 %88, i32 0)
  %90 = call i32 %76(%struct.vc_data* %77, %struct.fb_info.0* %79, i32 %80, i32 %81, i32 %85, i32 %89)
  %91 = load i32, i32* @CURSOR_DRAW_DELAY, align 4
  store i32 %91, i32* @vbl_cursor_cnt, align 4
  br label %92

92:                                               ; preds = %73, %35
  ret void
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @fbcon_del_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @fbcon_add_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @fbcon_set_origin(%struct.vc_data*) #1

declare dso_local i32 @get_color(%struct.vc_data*, %struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
