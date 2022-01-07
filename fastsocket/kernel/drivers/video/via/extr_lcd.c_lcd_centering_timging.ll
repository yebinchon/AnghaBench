; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_lcd_centering_timging.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_lcd_centering_timging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_timing*, %struct.display_timing*, %struct.display_timing*)* @lcd_centering_timging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_centering_timging(%struct.display_timing* noalias sret %0, %struct.display_timing* byval(%struct.display_timing) align 8 %1, %struct.display_timing* byval(%struct.display_timing) align 8 %2) #0 {
  %4 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 11
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 11
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %11, %13
  %15 = sdiv i32 %14, 2
  %16 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 10
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  %28 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %27, %29
  %31 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 9
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 8
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  %46 = sdiv i32 %45, 2
  %47 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 7
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  %62 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 5
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %2, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 6
  store i32 %64, i32* %65, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
