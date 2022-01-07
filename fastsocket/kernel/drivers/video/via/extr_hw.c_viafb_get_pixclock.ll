; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_get_pixclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_get_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@NUM_TOTAL_RES_MAP_REFRESH = common dso_local global i32 0, align 4
@res_map_refresh_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@RES_640X480_60HZ_PIXCLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viafb_get_pixclock(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NUM_TOTAL_RES_MAP_REFRESH, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @res_map_refresh_tbl, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %14, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @res_map_refresh_tbl, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @res_map_refresh_tbl, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @res_map_refresh_tbl, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %31, %22, %13
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load i32, i32* @RES_640X480_60HZ_PIXCLOCK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
