; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c___mac_fw_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c___mac_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.fw_hdr = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s fw '%s': failed to parse firmware file: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s fw '%s': uploaded\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s fw '%s': failed to upload (%d), power cycle device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*, i8*, i8*)* @__mac_fw_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mac_fw_upload(%struct.i1480* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.i1480*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.fw_hdr*, align 8
  store %struct.i1480* %0, %struct.i1480** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.i1480*, %struct.i1480** %4, align 8
  %12 = getelementptr inbounds %struct.i1480, %struct.i1480* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @request_firmware(%struct.firmware** %8, i8* %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.i1480*, %struct.i1480** %4, align 8
  %20 = load %struct.firmware*, %struct.firmware** %8, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.firmware*, %struct.firmware** %8, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fw_hdrs_load(%struct.i1480* %19, %struct.fw_hdr** %9, i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.i1480*, %struct.i1480** %4, align 8
  %31 = getelementptr inbounds %struct.i1480, %struct.i1480* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34, i32 %35)
  br label %72

37:                                               ; preds = %18
  %38 = load %struct.i1480*, %struct.i1480** %4, align 8
  %39 = call i32 @mac_fw_upload_enable(%struct.i1480* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.i1480*, %struct.i1480** %4, align 8
  %45 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @mac_fw_hdrs_push(%struct.i1480* %44, %struct.fw_hdr* %45, i8* %46, i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.i1480*, %struct.i1480** %4, align 8
  %50 = call i32 @mac_fw_upload_disable(%struct.i1480* %49)
  br label %51

51:                                               ; preds = %43, %42
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.i1480*, %struct.i1480** %4, align 8
  %56 = getelementptr inbounds %struct.i1480, %struct.i1480* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @dev_info(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  br label %69

61:                                               ; preds = %51
  %62 = load %struct.i1480*, %struct.i1480** %4, align 8
  %63 = getelementptr inbounds %struct.i1480, %struct.i1480* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %71 = call i32 @fw_hdrs_free(%struct.fw_hdr* %70)
  br label %72

72:                                               ; preds = %69, %29
  %73 = load %struct.firmware*, %struct.firmware** %8, align 8
  %74 = call i32 @release_firmware(%struct.firmware* %73)
  br label %75

75:                                               ; preds = %72, %17
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @fw_hdrs_load(%struct.i1480*, %struct.fw_hdr**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @mac_fw_upload_enable(%struct.i1480*) #1

declare dso_local i32 @mac_fw_hdrs_push(%struct.i1480*, %struct.fw_hdr*, i8*, i8*) #1

declare dso_local i32 @mac_fw_upload_disable(%struct.i1480*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*) #1

declare dso_local i32 @fw_hdrs_free(%struct.fw_hdr*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
