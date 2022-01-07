; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_main_usb.c_Read_config_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_main_usb.c_Read_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ZONETYPE\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"USA\00", align 1
@ZoneType_USA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"JAPAN\00", align 1
@ZoneType_Japan = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"EUROPE\00", align 1
@ZoneType_Europe = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unknown Zonetype[%s]?\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"AUTHENMODE\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ENCRYPTIONMODE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @Read_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Read_config_file(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 -1, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 -1, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = call i32* @Config_FileOperation(%struct.TYPE_6__* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %1
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 400)
  %24 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @Config_FileGetParameter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %24, i32* %25)
  %27 = load i64, i64* @TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %21
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %31 = call i64 @memcmp(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @ZoneType_USA, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %61

38:                                               ; preds = %29
  %39 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %40 = call i64 @memcmp(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @ZoneType_Japan, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %60

47:                                               ; preds = %38
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %49 = call i64 @memcmp(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @ZoneType_Europe, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %59

56:                                               ; preds = %47
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %58 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %33
  br label %62

62:                                               ; preds = %61, %21
  %63 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %64 = call i32 @memset(i32* %63, i32 0, i32 400)
  %65 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @Config_FileGetParameter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %65, i32* %66)
  %68 = load i64, i64* @TRUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %72 = call i64 @simple_strtol(i32* %71, i32* null, i32 10)
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %62
  %78 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %79 = call i32 @memset(i32* %78, i32 0, i32 400)
  %80 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @Config_FileGetParameter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %80, i32* %81)
  %83 = load i64, i64* @TRUE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %87 = call i64 @simple_strtol(i32* %86, i32* null, i32 10)
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %77
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %19
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32* @Config_FileOperation(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @Config_FileGetParameter(i8*, i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32*) #1

declare dso_local i64 @simple_strtol(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
