; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c___max1363_find_mode_in_ci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c___max1363_find_mode_in_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1363_mode = type { i32 }
%struct.max1363_chip_info = type { i32, i64* }

@max1363_mode_table = common dso_local global %struct.max1363_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max1363_mode* (%struct.max1363_chip_info*, i8*)* @__max1363_find_mode_in_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max1363_mode* @__max1363_find_mode_in_ci(%struct.max1363_chip_info* %0, i8* %1) #0 {
  %3 = alloca %struct.max1363_mode*, align 8
  %4 = alloca %struct.max1363_chip_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.max1363_chip_info* %0, %struct.max1363_chip_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.max1363_chip_info*, %struct.max1363_chip_info** %4, align 8
  %10 = getelementptr inbounds %struct.max1363_chip_info, %struct.max1363_chip_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = load %struct.max1363_mode*, %struct.max1363_mode** @max1363_mode_table, align 8
  %15 = load %struct.max1363_chip_info*, %struct.max1363_chip_info** %4, align 8
  %16 = getelementptr inbounds %struct.max1363_chip_info, %struct.max1363_chip_info* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.max1363_mode, %struct.max1363_mode* %14, i64 %21
  %23 = getelementptr inbounds %struct.max1363_mode, %struct.max1363_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %13
  %29 = load %struct.max1363_mode*, %struct.max1363_mode** @max1363_mode_table, align 8
  %30 = load %struct.max1363_chip_info*, %struct.max1363_chip_info** %4, align 8
  %31 = getelementptr inbounds %struct.max1363_chip_info, %struct.max1363_chip_info* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.max1363_mode, %struct.max1363_mode* %29, i64 %36
  store %struct.max1363_mode* %37, %struct.max1363_mode** %3, align 8
  br label %43

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %7

42:                                               ; preds = %7
  store %struct.max1363_mode* null, %struct.max1363_mode** %3, align 8
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.max1363_mode*, %struct.max1363_mode** %3, align 8
  ret %struct.max1363_mode* %44
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
