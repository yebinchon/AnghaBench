; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_accel.c_viafb_show_hw_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_accel.c_viafb_show_hw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.viafb_par* }
%struct.viafb_par = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@VIA_REG_CURSOR_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_show_hw_cursor(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.viafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.viafb_par*, %struct.viafb_par** %9, align 8
  store %struct.viafb_par* %10, %struct.viafb_par** %5, align 8
  %11 = load %struct.viafb_par*, %struct.viafb_par** %5, align 8
  %12 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.viafb_par*, %struct.viafb_par** %5, align 8
  %15 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VIA_REG_CURSOR_MODE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %29 [
    i32 130, label %23
    i32 131, label %26
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %2, %26, %23
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %35 [
    i32 128, label %31
    i32 129, label %34
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, -2147483648
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %29, %34
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 2147483647
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.viafb_par*, %struct.viafb_par** %5, align 8
  %41 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VIA_REG_CURSOR_MODE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %39, i64 %46)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
