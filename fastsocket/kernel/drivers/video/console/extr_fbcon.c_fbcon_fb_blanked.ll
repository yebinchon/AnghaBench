; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_fb_blanked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_fb_blanked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data* }
%struct.vc_data = type { i64 }
%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i64, i32 }

@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @fbcon_fb_blanked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_fb_blanked(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fbcon_ops*, align 8
  %6 = alloca %struct.vc_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  store %struct.fbcon_ops* %9, %struct.fbcon_ops** %5, align 8
  %10 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %11 = icmp ne %struct.fbcon_ops* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %14 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %60

18:                                               ; preds = %12
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.vc_data*, %struct.vc_data** %24, align 8
  store %struct.vc_data* %25, %struct.vc_data** %6, align 8
  %26 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KD_TEXT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %18
  %32 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %33 = load i64*, i64** @con2fb_map, align 8
  %34 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %35 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %32, i64 %38
  %40 = load %struct.fb_info*, %struct.fb_info** %39, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = icmp ne %struct.fb_info* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31, %18
  br label %60

44:                                               ; preds = %31
  %45 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %46 = call i64 @CON_IS_VISIBLE(%struct.vc_data* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @do_blank_screen(i32 0)
  br label %55

53:                                               ; preds = %48
  %54 = call i32 @do_unblank_screen(i32 0)
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %59 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %43, %17
  ret void
}

declare dso_local i64 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @do_blank_screen(i32) #1

declare dso_local i32 @do_unblank_screen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
