; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_fw.c_carlusb_fw_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_fw.c_carlusb_fw_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32, i32, i32, i8*, i8*, i32, i8*, i32 }
%struct.carl9170fw_otus_desc = type { i32, i32, i32, i32, i32 }

@OTUS_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_OTUS_DESC_CUR_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No valid USB descriptor found.\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@CARL9170FW_DUMMY_FEATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid Firmware Descriptor.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CARL9170FW_USB_INIT_FIRMWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Firmware does not know how to initialize USB core.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CARL9170FW_USB_DOWN_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Enabled tx stream mode.\0A\00", align 1
@CARL9170FW_USB_UP_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Enabled rx stream mode.\0A\00", align 1
@CARL9170FW_USB_RESP_EP2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Firmware sends traps over EP2.\0A\00", align 1
@CARL9170FW_MINIBOOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carlusb_fw_check(%struct.carlu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.carl9170fw_otus_desc*, align 8
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  %5 = load %struct.carlu*, %struct.carlu** %3, align 8
  %6 = getelementptr inbounds %struct.carlu, %struct.carlu* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = load i64, i64* @OTUS_MAGIC, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* @CARL9170FW_OTUS_DESC_CUR_VER, align 4
  %11 = call %struct.carl9170fw_otus_desc* @carlfw_find_desc(i32 %7, i32* %9, i32 20, i32 %10)
  store %struct.carl9170fw_otus_desc* %11, %struct.carl9170fw_otus_desc** %4, align 8
  %12 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %13 = icmp ne %struct.carl9170fw_otus_desc* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %20 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CARL9170FW_DUMMY_FEATURE, align 4
  %23 = call i64 @carl9170fw_supports(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %105

29:                                               ; preds = %18
  %30 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %31 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CARL9170FW_USB_INIT_FIRMWARE, align 4
  %34 = call i64 @carl9170fw_supports(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = call i32 @err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %105

40:                                               ; preds = %29
  %41 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %42 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CARL9170FW_USB_DOWN_STREAM, align 4
  %45 = call i64 @carl9170fw_supports(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.carlu*, %struct.carlu** %3, align 8
  %50 = getelementptr inbounds %struct.carlu, %struct.carlu* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.carlu*, %struct.carlu** %3, align 8
  %52 = getelementptr inbounds %struct.carlu, %struct.carlu* %51, i32 0, i32 1
  store i32 4, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %55 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CARL9170FW_USB_UP_STREAM, align 4
  %58 = call i64 @carl9170fw_supports(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.carlu*, %struct.carlu** %3, align 8
  %63 = getelementptr inbounds %struct.carlu, %struct.carlu* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %66 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CARL9170FW_USB_RESP_EP2, align 4
  %69 = call i64 @carl9170fw_supports(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64
  %74 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %75 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = load %struct.carlu*, %struct.carlu** %3, align 8
  %79 = getelementptr inbounds %struct.carlu, %struct.carlu* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %81 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.carlu*, %struct.carlu** %3, align 8
  %84 = getelementptr inbounds %struct.carlu, %struct.carlu* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %86 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = load %struct.carlu*, %struct.carlu** %3, align 8
  %90 = getelementptr inbounds %struct.carlu, %struct.carlu* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %92 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CARL9170FW_MINIBOOT, align 4
  %95 = call i64 @carl9170fw_supports(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %73
  %98 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %4, align 8
  %99 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = load %struct.carlu*, %struct.carlu** %3, align 8
  %103 = getelementptr inbounds %struct.carlu, %struct.carlu* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %73
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %36, %25, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.carl9170fw_otus_desc* @carlfw_find_desc(i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i64 @carl9170fw_supports(i32, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
