; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_modedb.c_fb_videomode_to_modelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_modedb.c_fb_videomode_to_modelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_videomode_to_modelist(%struct.fb_videomode* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_videomode* %0, %struct.fb_videomode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load %struct.list_head*, %struct.list_head** %6, align 8
  %9 = call i32 @INIT_LIST_HEAD(%struct.list_head* %8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %24, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %15, i64 %17
  %19 = load %struct.list_head*, %struct.list_head** %6, align 8
  %20 = call i64 @fb_add_videomode(%struct.fb_videomode* %18, %struct.list_head* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %10

27:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i64 @fb_add_videomode(%struct.fb_videomode*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
