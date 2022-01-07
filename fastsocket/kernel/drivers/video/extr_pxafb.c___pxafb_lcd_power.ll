; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c___pxafb_lcd_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c___pxafb_lcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { %struct.TYPE_2__, i32 (i32, i32*)* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pxafb: LCD power o%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*, i32)* @__pxafb_lcd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pxafb_lcd_power(%struct.pxafb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pxafb_info* %0, %struct.pxafb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %11 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %10, i32 0, i32 1
  %12 = load i32 (i32, i32*)*, i32 (i32, i32*)** %11, align 8
  %13 = icmp ne i32 (i32, i32*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %16 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %15, i32 0, i32 1
  %17 = load i32 (i32, i32*)*, i32 (i32, i32*)** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %20 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 %17(i32 %18, i32* %21)
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
