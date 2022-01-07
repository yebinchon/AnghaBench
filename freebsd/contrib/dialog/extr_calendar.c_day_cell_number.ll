; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_day_cell_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_day_cell_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@MAX_DAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @day_cell_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @day_cell_number(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  %4 = load %struct.tm*, %struct.tm** %2, align 8
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.tm*, %struct.tm** %2, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 6, %9
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* @MAX_DAYS, align 4
  %16 = srem i32 %14, %15
  %17 = sub nsw i32 %6, %16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.tm*, %struct.tm** %2, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @MAX_DAYS, align 4
  %23 = srem i32 %21, %22
  %24 = load %struct.tm*, %struct.tm** %2, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 6
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
