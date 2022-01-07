; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"initiating firmware image upload procedure.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Miniboot firmware size:%d\0A\00", align 1
@LIBUSB_ERROR_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"==>firmware upload failed (%d)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"uploaded %d bytes to start address 0x%04x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to boot firmware (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlu*, i32)* @carlusb_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlusb_upload_firmware(%struct.carlu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carlu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 2097152, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.carlu*, %struct.carlu** %4, align 8
  %13 = getelementptr inbounds %struct.carlu, %struct.carlu* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @carlfw_get_fw(i32 %14, i64* %7)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @IS_ERR_OR_NULL(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load %struct.carlu*, %struct.carlu** %4, align 8
  %24 = getelementptr inbounds %struct.carlu, %struct.carlu* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.carlu*, %struct.carlu** %4, align 8
  %29 = getelementptr inbounds %struct.carlu, %struct.carlu* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load %struct.carlu*, %struct.carlu** %4, align 8
  %33 = getelementptr inbounds %struct.carlu, %struct.carlu* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load %struct.carlu*, %struct.carlu** %4, align 8
  %38 = getelementptr inbounds %struct.carlu, %struct.carlu* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr i8, i8* %40, i64 %39
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %27, %22
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = icmp ugt i64 %47, 4096
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %52

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i64 [ 4096, %49 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct.carlu*, %struct.carlu** %4, align 8
  %56 = getelementptr inbounds %struct.carlu, %struct.carlu* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @libusb_control_transfer(i32* %57, i32 64, i32 48, i32 %59, i32 0, i8* %60, i32 %61, i32 1000)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @LIBUSB_ERROR_TIMEOUT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %123

75:                                               ; preds = %66, %52
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr i8, i8* %80, i64 %81
  store i8* %82, i8** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  br label %43

90:                                               ; preds = %43
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load %struct.carlu*, %struct.carlu** %4, align 8
  %95 = getelementptr inbounds %struct.carlu, %struct.carlu* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @libusb_control_transfer(i32* %96, i32 64, i32 49, i32 0, i32 0, i8* null, i32 0, i32 5000)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %123

105:                                              ; preds = %93
  %106 = call i32 @SDL_Delay(i32 100)
  %107 = load %struct.carlu*, %struct.carlu** %4, align 8
  %108 = getelementptr inbounds %struct.carlu, %struct.carlu* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @libusb_release_interface(i32* %109, i32 0)
  %111 = load %struct.carlu*, %struct.carlu** %4, align 8
  %112 = getelementptr inbounds %struct.carlu, %struct.carlu* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @libusb_close(i32* %113)
  %115 = load %struct.carlu*, %struct.carlu** %4, align 8
  %116 = getelementptr inbounds %struct.carlu, %struct.carlu* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  %117 = load %struct.carlu*, %struct.carlu** %4, align 8
  %118 = getelementptr inbounds %struct.carlu, %struct.carlu* %117, i32 0, i32 0
  %119 = call i32 @list_del(i32* %118)
  %120 = load %struct.carlu*, %struct.carlu** %4, align 8
  %121 = call i32 @carlusb_get_dev(%struct.carlu* %120, i32 0)
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %105, %90
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %100, %70, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i8* @carlfw_get_fw(i32, i64*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @libusb_control_transfer(i32*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @SDL_Delay(i32) #1

declare dso_local i32 @libusb_release_interface(i32*, i32) #1

declare dso_local i32 @libusb_close(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @carlusb_get_dev(%struct.carlu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
