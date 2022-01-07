; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arcfb.c_arcfb_lcd_update_horiz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arcfb.c_arcfb_lcd_update_horiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arcfb_par*, i32, i32, i32, i32)* @arcfb_lcd_update_horiz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfb_lcd_update_horiz(%struct.arcfb_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.arcfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.arcfb_par* %0, %struct.arcfb_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @floor8(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = add i32 %17, %18
  %20 = sub i32 %19, 1
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @ceil64(i32 %21)
  %23 = call i32 @min(i32 %20, i32 %22)
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %27, %5
  %25 = load i32, i32* %11, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sub i32 %28, %29
  %31 = add i32 %30, 1
  %32 = load i32, i32* %11, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load %struct.arcfb_par*, %struct.arcfb_par** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @arcfb_lcd_update_vert(%struct.arcfb_par* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  %45 = sub i32 %44, 1
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ceil64(i32 %46)
  %48 = call i32 @min(i32 %45, i32 %47)
  store i32 %48, i32* %13, align 4
  br label %24

49:                                               ; preds = %24
  ret void
}

declare dso_local i32 @floor8(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ceil64(i32) #1

declare dso_local i32 @arcfb_lcd_update_vert(%struct.arcfb_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
