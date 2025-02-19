; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_add_cursor_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_add_cursor_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i64 }
%struct.fbcon_ops = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@fb_flashcursor = common dso_local global i64 0, align 8
@FBCON_FLAGS_CURSOR_TIMER = common dso_local global i32 0, align 4
@fbcon_cursor_noblink = common dso_local global i32 0, align 4
@cursor_timer_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @fbcon_add_cursor_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_add_cursor_timer(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbcon_ops*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  store %struct.fbcon_ops* %6, %struct.fbcon_ops** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @fb_flashcursor, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %12, %1
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FBCON_FLAGS_CURSOR_TIMER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @fbcon_cursor_noblink, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %26
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = load i64, i64* @fb_flashcursor, align 8
  %39 = call i32 @INIT_WORK(%struct.TYPE_5__* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %42 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %41, i32 0, i32 1
  %43 = call i32 @init_timer(%struct.TYPE_4__* %42)
  %44 = load i32, i32* @cursor_timer_handler, align 4
  %45 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %46 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 %49, 5
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %54 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %57 = ptrtoint %struct.fb_info* %56 to i64
  %58 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %59 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %62 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %61, i32 0, i32 1
  %63 = call i32 @add_timer(%struct.TYPE_4__* %62)
  %64 = load i32, i32* @FBCON_FLAGS_CURSOR_TIMER, align 4
  %65 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %66 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %40, %26, %19, %12
  ret void
}

declare dso_local i32 @INIT_WORK(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
