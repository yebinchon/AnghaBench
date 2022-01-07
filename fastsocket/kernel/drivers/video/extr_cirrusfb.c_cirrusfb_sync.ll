; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i32 }

@CL_GR31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @cirrusfb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.cirrusfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  store %struct.cirrusfb_info* %6, %struct.cirrusfb_info** %3, align 8
  %7 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %8 = call i32 @is_laguna(%struct.cirrusfb_info* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %19, %10
  %12 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %13 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CL_GR31, align 4
  %16 = call i32 @vga_rgfx(i32 %14, i32 %15)
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 (...) @cpu_relax()
  br label %11

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local i32 @is_laguna(%struct.cirrusfb_info*) #1

declare dso_local i32 @vga_rgfx(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
