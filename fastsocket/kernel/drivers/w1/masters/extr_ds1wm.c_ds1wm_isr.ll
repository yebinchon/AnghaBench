; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i64, i8*, i64, i64 }

@DS1WM_INT = common dso_local global i32 0, align 4
@DS1WM_INT_PDR = common dso_local global i32 0, align 4
@DS1WM_INT_PD = common dso_local global i32 0, align 4
@DS1WM_INT_TSRE = common dso_local global i32 0, align 4
@DS1WM_INT_RBF = common dso_local global i32 0, align 4
@DS1WM_DATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds1wm_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ds1wm_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ds1wm_data*
  store %struct.ds1wm_data* %8, %struct.ds1wm_data** %5, align 8
  %9 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %10 = load i32, i32* @DS1WM_INT, align 4
  %11 = call i8* @ds1wm_read_register(%struct.ds1wm_data* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DS1WM_INT_PDR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %20 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DS1WM_INT_PD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %27 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %32 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @complete(i64 %33)
  br label %35

35:                                               ; preds = %30, %25, %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DS1WM_INT_TSRE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %42 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %47 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @complete(i64 %48)
  br label %50

50:                                               ; preds = %45, %40, %35
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DS1WM_INT_RBF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %57 = load i32, i32* @DS1WM_DATA, align 4
  %58 = call i8* @ds1wm_read_register(%struct.ds1wm_data* %56, i32 %57)
  %59 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %60 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %62 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.ds1wm_data*, %struct.ds1wm_data** %5, align 8
  %67 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @complete(i64 %68)
  br label %70

70:                                               ; preds = %65, %55
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local i8* @ds1wm_read_register(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @complete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
