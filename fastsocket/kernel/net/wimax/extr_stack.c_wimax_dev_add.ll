; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_stack.c_wimax_dev_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_stack.c_wimax_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"(wimax_dev %p net_dev %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot initialize debugfs: %d\0A\00", align 1
@WIMAX_ST_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"WiMAX interface %s (%s) ready\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"(wimax_dev %p net_dev %p) = 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"(wimax_dev %p net_dev %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_dev_add(%struct.wimax_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wimax_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca [32 x i8], align 16
  store %struct.wimax_dev* %0, %struct.wimax_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @d_fnstart(i32 3, %struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %14, %struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %19 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %18, i32 0, i32 1
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %21 = call i32 @wimax_rfkill_add(%struct.wimax_dev* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %72

25:                                               ; preds = %2
  %26 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %27 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %30 = call i32 @wimax_id_table_add(%struct.wimax_dev* %29)
  %31 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %32 = call i32 @wimax_debugfs_add(%struct.wimax_dev* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %64

39:                                               ; preds = %25
  %40 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %41 = load i32, i32* @WIMAX_ST_DOWN, align 4
  %42 = call i32 @__wimax_state_set(%struct.wimax_dev* %40, i32 %41)
  %43 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %44 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wimax_addr_scnprint(i8* %46, i32 32, i32 %49, i32 %52)
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %59 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %58)
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*, ...) @d_fnend(i32 3, %struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.wimax_dev* %61, %struct.net_device* %62)
  store i32 0, i32* %3, align 4
  br label %79

64:                                               ; preds = %35
  %65 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %66 = call i32 @wimax_id_table_rm(%struct.wimax_dev* %65)
  %67 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %68 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %71 = call i32 @wimax_rfkill_rm(%struct.wimax_dev* %70)
  br label %72

72:                                               ; preds = %64, %24
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*, ...) @d_fnend(i32 3, %struct.device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.wimax_dev* %74, %struct.net_device* %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %39
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*) #1

declare dso_local i32 @wimax_rfkill_add(%struct.wimax_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wimax_id_table_add(%struct.wimax_dev*) #1

declare dso_local i32 @wimax_debugfs_add(%struct.wimax_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @__wimax_state_set(%struct.wimax_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wimax_addr_scnprint(i8*, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*, ...) #1

declare dso_local i32 @wimax_id_table_rm(%struct.wimax_dev*) #1

declare dso_local i32 @wimax_rfkill_rm(%struct.wimax_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
