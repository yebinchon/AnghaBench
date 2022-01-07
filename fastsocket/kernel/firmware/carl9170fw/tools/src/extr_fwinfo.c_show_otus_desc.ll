; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_fwinfo.c_show_otus_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_fwinfo.c_show_otus_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170fw_desc_head = type { i32 }
%struct.carlfw = type { i32 }
%struct.carl9170fw_otus_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@known_otus_features_v1 = common dso_local global i32 0, align 4
@__CARL9170FW_FEATURE_NUM = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\09Firmware upload pointer: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\09Beacon Address: %x, (reserved:%d Bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\09TX DMA chunk size:%d Bytes, TX DMA chunks:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09=> %d Bytes are reserved for the TX queues\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\09Command response buffers:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\09Max. RX stream block size:%d Bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\09Supported Firmware Interfaces: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\09Firmware API Version: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\09Supported Features: (raw:%.08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carl9170fw_desc_head*, %struct.carlfw*)* @show_otus_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_otus_desc(%struct.carl9170fw_desc_head* %0, %struct.carlfw* %1) #0 {
  %3 = alloca %struct.carl9170fw_desc_head*, align 8
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca %struct.carl9170fw_otus_desc*, align 8
  store %struct.carl9170fw_desc_head* %0, %struct.carl9170fw_desc_head** %3, align 8
  store %struct.carlfw* %1, %struct.carlfw** %4, align 8
  %6 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %3, align 8
  %7 = bitcast %struct.carl9170fw_desc_head* %6 to i8*
  %8 = bitcast i8* %7 to %struct.carl9170fw_otus_desc*
  store %struct.carl9170fw_otus_desc* %8, %struct.carl9170fw_otus_desc** %5, align 8
  %9 = load i32, i32* @known_otus_features_v1, align 4
  %10 = call i64 @ARRAY_SIZE(i32 %9)
  %11 = load i64, i64* @__CARL9170FW_FEATURE_NUM, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i32, i32* @stdout, align 4
  %16 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %17 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %22 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %26 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* @stdout, align 4
  %31 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %32 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %35 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %40 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %43 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %49 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @stdout, align 4
  %53 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %54 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @stdout, align 4
  %58 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %59 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @stdout, align 4
  %63 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %64 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @stdout, align 4
  %68 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %69 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %3, align 8
  %74 = load %struct.carl9170fw_otus_desc*, %struct.carl9170fw_otus_desc** %5, align 8
  %75 = getelementptr inbounds %struct.carl9170fw_otus_desc, %struct.carl9170fw_otus_desc* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @known_otus_features_v1, align 4
  %78 = load i32, i32* @known_otus_features_v1, align 4
  %79 = call i64 @ARRAY_SIZE(i32 %78)
  %80 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %81 = call i32 @check_feature_list(%struct.carl9170fw_desc_head* %73, i32 %76, i32 %77, i64 %79, %struct.carlfw* %80)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @check_feature_list(%struct.carl9170fw_desc_head*, i32, i32, i64, %struct.carlfw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
