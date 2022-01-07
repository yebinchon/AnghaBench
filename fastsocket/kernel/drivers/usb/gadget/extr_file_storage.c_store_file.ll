; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_store_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_store_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lun = type { i32, i64 }
%struct.fsg_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"eject attempt prevented\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SS_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4
@SS_NOT_READY_TO_READY_TRANSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_file(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lun*, align 8
  %11 = alloca %struct.fsg_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.lun* @dev_to_lun(%struct.device* %13)
  store %struct.lun* %14, %struct.lun** %10, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.fsg_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.fsg_dev* %16, %struct.fsg_dev** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.lun*, %struct.lun** %10, align 8
  %18 = getelementptr inbounds %struct.lun, %struct.lun* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.lun*, %struct.lun** %10, align 8
  %23 = call i64 @backing_file_is_open(%struct.lun* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.lun*, %struct.lun** %10, align 8
  %27 = call i32 @LDBG(%struct.lun* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %93

30:                                               ; preds = %21, %4
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %41, %33, %30
  %47 = load %struct.fsg_dev*, %struct.fsg_dev** %11, align 8
  %48 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %47, i32 0, i32 0
  %49 = call i32 @down_write(i32* %48)
  %50 = load %struct.lun*, %struct.lun** %10, align 8
  %51 = call i64 @backing_file_is_open(%struct.lun* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.lun*, %struct.lun** %10, align 8
  %55 = call i32 @close_backing_file(%struct.lun* %54)
  %56 = load i32, i32* @SS_MEDIUM_NOT_PRESENT, align 4
  %57 = load %struct.lun*, %struct.lun** %10, align 8
  %58 = getelementptr inbounds %struct.lun, %struct.lun* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i64, i64* %9, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.lun*, %struct.lun** %10, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @open_backing_file(%struct.lun* %69, i8* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @SS_NOT_READY_TO_READY_TRANSITION, align 4
  %76 = load %struct.lun*, %struct.lun** %10, align 8
  %77 = getelementptr inbounds %struct.lun, %struct.lun* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %62, %59
  %80 = load %struct.fsg_dev*, %struct.fsg_dev** %11, align 8
  %81 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %80, i32 0, i32 0
  %82 = call i32 @up_write(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i64 [ %87, %85 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %25
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.lun* @dev_to_lun(%struct.device*) #1

declare dso_local %struct.fsg_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @backing_file_is_open(%struct.lun*) #1

declare dso_local i32 @LDBG(%struct.lun*, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @close_backing_file(%struct.lun*) #1

declare dso_local i32 @open_backing_file(%struct.lun*, i8*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
