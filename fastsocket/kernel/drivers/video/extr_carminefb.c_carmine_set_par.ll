; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_carminefb.c_carmine_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_carminefb.c_carmine_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.carmine_fb* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.carmine_fb = type { i32, i32, i32* }

@car_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @carmine_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carmine_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.carmine_fb*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.carmine_fb*, %struct.carmine_fb** %7, align 8
  store %struct.carmine_fb* %8, %struct.carmine_fb** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = call i32 @carmine_find_mode(%struct.TYPE_4__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %19 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %21 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %24 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %16
  %28 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %29 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %32 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** @car_modes, align 8
  %34 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %35 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %40 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %42 = call i32 @carmine_init_display_param(%struct.carmine_fb* %41)
  %43 = load %struct.carmine_fb*, %struct.carmine_fb** %4, align 8
  %44 = call i32 @set_display_parameters(%struct.carmine_fb* %43)
  br label %45

45:                                               ; preds = %27, %16
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %49, %53
  %55 = sdiv i32 %54, 8
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %45, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @carmine_find_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @carmine_init_display_param(%struct.carmine_fb*) #1

declare dso_local i32 @set_display_parameters(%struct.carmine_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
