; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_find_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_find_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.omapfb_device = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.omapfb_platform_data* }
%struct.omapfb_platform_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@ctrls = common dso_local global %struct.TYPE_7__** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ctrl %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ctrl %s not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @omapfb_find_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_find_ctrl(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca %struct.omapfb_platform_data*, align 8
  %5 = alloca [17 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %7 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %8 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %10, align 8
  store %struct.omapfb_platform_data* %11, %struct.omapfb_platform_data** %4, align 8
  %12 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %13 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %12, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  %14 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %15 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.omapfb_platform_data, %struct.omapfb_platform_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncpy(i8* %14, i32 %18, i32 16)
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 16
  store i8 0, i8* %20, align 16
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %26 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %29 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %28, i32 0, i32 1
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  store i32 0, i32* %2, align 4
  br label %82

30:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ctrls, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_7__** %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %38 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ctrls, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %40, i64 %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @dev_dbg(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ctrls, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %36
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ctrls, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %65 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %64, i32 0, i32 1
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  br label %70

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %31

70:                                               ; preds = %58, %31
  %71 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %72 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = icmp eq %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %77 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %80 = call i32 @dev_dbg(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  store i32 -1, i32* %2, align 4
  br label %82

81:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %75, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__**) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
