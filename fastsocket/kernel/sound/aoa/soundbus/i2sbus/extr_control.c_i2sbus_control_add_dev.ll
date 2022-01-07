; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_add_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2sbus_control = type { i32 }
%struct.i2sbus_dev = type { i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cell-enable\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"clock-enable\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cell-disable\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"clock-disable\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2sbus_control_add_dev(%struct.i2sbus_control* %0, %struct.i2sbus_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2sbus_control*, align 8
  %5 = alloca %struct.i2sbus_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.i2sbus_control* %0, %struct.i2sbus_control** %4, align 8
  store %struct.i2sbus_dev* %1, %struct.i2sbus_dev** %5, align 8
  %7 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %8 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i8* @pmf_find_function(%struct.device_node* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %15 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %14, i32 0, i32 6
  store i8* %13, i8** %15, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i8* @pmf_find_function(%struct.device_node* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %19 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i8* @pmf_find_function(%struct.device_node* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %23 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i8* @pmf_find_function(%struct.device_node* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %27 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i8* @pmf_find_function(%struct.device_node* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %31 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %33 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %2
  %37 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %38 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %89

41:                                               ; preds = %36
  %42 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %43 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %48 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %47, i32 0, i32 5
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %53 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %58 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %63 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %89, label %66

66:                                               ; preds = %61, %56, %51, %46, %41
  %67 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %68 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @pmf_put_function(i8* %69)
  %71 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %72 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @pmf_put_function(i8* %73)
  %75 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %76 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @pmf_put_function(i8* %77)
  %79 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %80 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @pmf_put_function(i8* %81)
  %83 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %84 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @pmf_put_function(i8* %85)
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %95

89:                                               ; preds = %61, %36, %2
  %90 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %91 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %90, i32 0, i32 1
  %92 = load %struct.i2sbus_control*, %struct.i2sbus_control** %4, align 8
  %93 = getelementptr inbounds %struct.i2sbus_control, %struct.i2sbus_control* %92, i32 0, i32 0
  %94 = call i32 @list_add(i32* %91, i32* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %66
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @pmf_find_function(%struct.device_node*, i8*) #1

declare dso_local i32 @pmf_put_function(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
