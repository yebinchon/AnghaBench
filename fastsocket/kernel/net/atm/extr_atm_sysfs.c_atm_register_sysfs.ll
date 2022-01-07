; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_sysfs.c_atm_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_sysfs.c_atm_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32, i32, %struct.device }
%struct.device = type { i32* }

@atm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@atm_attrs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_register_sysfs(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %8 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %9 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %8, i32 0, i32 2
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  store i32* @atm_class, i32** %11, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %14 = call i32 @dev_set_drvdata(%struct.device* %12, %struct.atm_dev* %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %17 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %20 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_set_name(%struct.device* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @device_register(%struct.device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i64*, i64** @atm_attrs, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i64*, i64** @atm_attrs, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @device_create_file(%struct.device* %38, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %30

52:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %73

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i64*, i64** @atm_attrs, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @device_remove_file(%struct.device* %59, i64 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %54

69:                                               ; preds = %54
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @device_del(%struct.device* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %52, %27
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.atm_dev*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @device_create_file(%struct.device*, i64) #1

declare dso_local i32 @device_remove_file(%struct.device*, i64) #1

declare dso_local i32 @device_del(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
