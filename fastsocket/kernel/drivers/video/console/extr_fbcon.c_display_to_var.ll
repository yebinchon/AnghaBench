; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_display_to_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_display_to_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.display*)* @display_to_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_to_var(%struct.fb_var_screeninfo* %0, %struct.display* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.display*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.display* %1, %struct.display** %4, align 8
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %6 = load %struct.display*, %struct.display** %4, align 8
  %7 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %5, i32 %8)
  %10 = load %struct.display*, %struct.display** %4, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load %struct.display*, %struct.display** %4, align 8
  %16 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load %struct.display*, %struct.display** %4, align 8
  %21 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.display*, %struct.display** %4, align 8
  %26 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.display*, %struct.display** %4, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.display*, %struct.display** %4, align 8
  %36 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.display*, %struct.display** %4, align 8
  %41 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.display*, %struct.display** %4, align 8
  %46 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.display*, %struct.display** %4, align 8
  %51 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.display*, %struct.display** %4, align 8
  %56 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.display*, %struct.display** %4, align 8
  %61 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.display*, %struct.display** %4, align 8
  %66 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.display*, %struct.display** %4, align 8
  %71 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
