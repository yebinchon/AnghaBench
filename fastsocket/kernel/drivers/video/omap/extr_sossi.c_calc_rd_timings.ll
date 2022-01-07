; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_calc_rd_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_calc_rd_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extif_timings = type { i32, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extif_timings*)* @calc_rd_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_rd_timings(%struct.extif_timings* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.extif_timings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.extif_timings* %0, %struct.extif_timings** %3, align 8
  %11 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %12 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %15 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @ps_to_sossi_ticks(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %95

22:                                               ; preds = %1
  %23 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %24 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ps_to_sossi_ticks(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 16
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %95

41:                                               ; preds = %34
  %42 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %43 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ps_to_sossi_ticks(i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 3, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 64
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %95

64:                                               ; preds = %60
  %65 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %66 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @ps_to_sossi_ticks(i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %64
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -1, i32* %2, align 4
  br label %95

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %86 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %92 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %90, i32* %94, align 4
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %82, %81, %63, %40, %21
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ps_to_sossi_ticks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
