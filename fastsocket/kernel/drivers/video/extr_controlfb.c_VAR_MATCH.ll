; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_VAR_MATCH.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_VAR_MATCH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }

@bits_per_pixel = common dso_local global i32 0, align 4
@xres = common dso_local global i32 0, align 4
@yres = common dso_local global i32 0, align 4
@xres_virtual = common dso_local global i32 0, align 4
@yres_virtual = common dso_local global i32 0, align 4
@red = common dso_local global i32 0, align 4
@green = common dso_local global i32 0, align 4
@blue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*)* @VAR_MATCH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VAR_MATCH(%struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %5 = load i32, i32* @bits_per_pixel, align 4
  %6 = call i32 @DIRTY(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @xres, align 4
  %10 = call i32 @DIRTY(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @yres, align 4
  %14 = call i32 @DIRTY(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @xres_virtual, align 4
  %18 = call i32 @DIRTY(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @yres_virtual, align 4
  %22 = call i32 @DIRTY(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @red, align 4
  %26 = call i32 @DIRTY_CMAP(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @green, align 4
  %30 = call i32 @DIRTY_CMAP(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @blue, align 4
  %34 = call i32 @DIRTY_CMAP(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %28, %24, %20, %16, %12, %8, %2
  %38 = phi i1 [ false, %28 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ false, %12 ], [ false, %8 ], [ false, %2 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @DIRTY(i32) #1

declare dso_local i32 @DIRTY_CMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
