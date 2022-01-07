; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_phy.c_i1480_phy_fw_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_phy.c_i1480_phy_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i64, i32 }
%struct.firmware = type { i8*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"PHY: can't get status: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error, PHY not ready: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PHY fw '%s': uploaded\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"PHY fw '%s': failed to upload (%d), power cycle device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480_phy_fw_upload(%struct.i1480* %0) #0 {
  %2 = alloca %struct.i1480*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.i1480* %0, %struct.i1480** %2, align 8
  store i64 480, i64* %7, align 8
  %10 = load %struct.i1480*, %struct.i1480** %2, align 8
  %11 = getelementptr inbounds %struct.i1480, %struct.i1480* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.i1480*, %struct.i1480** %2, align 8
  %14 = getelementptr inbounds %struct.i1480, %struct.i1480* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @request_firmware(%struct.firmware** %4, i64 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %100

20:                                               ; preds = %1
  %21 = load %struct.firmware*, %struct.firmware** %4, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.firmware*, %struct.firmware** %4, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %49, %20
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = call i64 @min(i64 480, i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.i1480*, %struct.i1480** %2, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @i1480_mpi_write(%struct.i1480* %41, i8* %42, i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %85

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 480
  store i8* %51, i8** %5, align 8
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.i1480*, %struct.i1480** %2, align 8
  %54 = call i32 @i1480_mpi_read(%struct.i1480* %53, i64* %9, i32 6, i32 1)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.i1480*, %struct.i1480** %2, align 8
  %59 = getelementptr inbounds %struct.i1480, %struct.i1480* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %84

64:                                               ; preds = %52
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  %70 = load %struct.i1480*, %struct.i1480** %2, align 8
  %71 = getelementptr inbounds %struct.i1480, %struct.i1480* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @dev_info(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %83

75:                                               ; preds = %64
  %76 = load %struct.i1480*, %struct.i1480** %2, align 8
  %77 = getelementptr inbounds %struct.i1480, %struct.i1480* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.i1480*, %struct.i1480** %2, align 8
  %80 = getelementptr inbounds %struct.i1480, %struct.i1480* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %75, %67
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.firmware*, %struct.firmware** %4, align 8
  %87 = call i32 @release_firmware(%struct.firmware* %86)
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.i1480*, %struct.i1480** %2, align 8
  %92 = getelementptr inbounds %struct.i1480, %struct.i1480* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.i1480*, %struct.i1480** %2, align 8
  %95 = getelementptr inbounds %struct.i1480, %struct.i1480* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %85
  br label %100

100:                                              ; preds = %99, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @request_firmware(%struct.firmware**, i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @i1480_mpi_write(%struct.i1480*, i8*, i64) #1

declare dso_local i32 @i1480_mpi_read(%struct.i1480*, i64*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
