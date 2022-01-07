; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_dvt.c_i810_get_watermark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_dvt.c_i810_get_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.i810fb_par = type { i32, %struct.mode_registers }
%struct.mode_registers = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i810_get_watermark(%struct.fb_var_screeninfo* %0, %struct.i810fb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.i810fb_par*, align 8
  %5 = alloca %struct.mode_registers*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.i810fb_par* %1, %struct.i810fb_par** %4, align 8
  %7 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %8 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %7, i32 0, i32 1
  store %struct.mode_registers* %8, %struct.mode_registers** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %10 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 100
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 8, label %17
    i32 16, label %21
    i32 24, label %25
    i32 32, label %25
  ]

17:                                               ; preds = %13
  %18 = load %struct.mode_registers*, %struct.mode_registers** %5, align 8
  %19 = getelementptr inbounds %struct.mode_registers, %struct.mode_registers* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.mode_registers*, %struct.mode_registers** %5, align 8
  %23 = getelementptr inbounds %struct.mode_registers, %struct.mode_registers* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %13, %13
  %26 = load %struct.mode_registers*, %struct.mode_registers** %5, align 8
  %27 = getelementptr inbounds %struct.mode_registers, %struct.mode_registers* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %13, %21, %17
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 8, label %34
    i32 16, label %38
    i32 24, label %42
    i32 32, label %42
  ]

34:                                               ; preds = %30
  %35 = load %struct.mode_registers*, %struct.mode_registers** %5, align 8
  %36 = getelementptr inbounds %struct.mode_registers, %struct.mode_registers* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.mode_registers*, %struct.mode_registers** %5, align 8
  %40 = getelementptr inbounds %struct.mode_registers, %struct.mode_registers* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %46

42:                                               ; preds = %30, %30
  %43 = load %struct.mode_registers*, %struct.mode_registers** %5, align 8
  %44 = getelementptr inbounds %struct.mode_registers, %struct.mode_registers* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %30, %38, %34
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
