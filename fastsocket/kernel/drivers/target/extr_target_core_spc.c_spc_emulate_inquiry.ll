; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8, i32 (%struct.se_cmd*, i8*)* }
%struct.se_cmd = type { i8*, i32, %struct.TYPE_8__*, %struct.se_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.se_device* }
%struct.se_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8 (%struct.se_device*)* }

@SE_INQUIRY_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"INQUIRY with EVPD==0 but PAGE CODE=%02x\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@evpd_handlers = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown VPD Code: 0x%02x\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @spc_emulate_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_inquiry(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 3
  %13 = load %struct.se_device*, %struct.se_device** %12, align 8
  store %struct.se_device* %13, %struct.se_device** %3, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %19, align 8
  store %struct.se_portal_group* %20, %struct.se_portal_group** %4, align 8
  %21 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* @SE_INQUIRY_BUF, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load i32, i32* @SE_INQUIRY_BUF, align 4
  %29 = call i32 @memset(i8* %27, i32 0, i32 %28)
  %30 = load %struct.se_device*, %struct.se_device** %3, align 8
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %32 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.se_device*, %struct.se_device** %33, align 8
  %35 = icmp eq %struct.se_device* %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 63, i8* %37, align 16
  br label %47

38:                                               ; preds = %1
  %39 = load %struct.se_device*, %struct.se_device** %3, align 8
  %40 = getelementptr inbounds %struct.se_device, %struct.se_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i8 (%struct.se_device*)*, i8 (%struct.se_device*)** %42, align 8
  %44 = load %struct.se_device*, %struct.se_device** %3, align 8
  %45 = call zeroext i8 %43(%struct.se_device* %44)
  %46 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %45, i8* %46, align 16
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8 zeroext %62)
  %64 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %64, i32* %9, align 4
  br label %110

65:                                               ; preds = %54
  %66 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %67 = call i32 @spc_emulate_inquiry_std(%struct.se_cmd* %66, i8* %27)
  store i32 %67, i32* %9, align 4
  br label %110

68:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @evpd_handlers, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** @evpd_handlers, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 8
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %78, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %74
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %90, i8* %91, align 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @evpd_handlers, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32 (%struct.se_cmd*, i8*)*, i32 (%struct.se_cmd*, i8*)** %96, align 8
  %98 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %99 = call i32 %97(%struct.se_cmd* %98, i8* %27)
  store i32 %99, i32* %9, align 4
  br label %110

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %69

104:                                              ; preds = %69
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %107)
  %109 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %104, %87, %65, %59
  %111 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %112 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %111)
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* @u32, align 4
  %118 = trunc i64 %25 to i32
  %119 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %120 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @min_t(i32 %117, i32 %118, i32 %121)
  %123 = call i32 @memcpy(i8* %116, i8* %27, i32 %122)
  %124 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %125 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %124)
  br label %126

126:                                              ; preds = %115, %110
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %131 = load i32, i32* @GOOD, align 4
  %132 = call i32 @target_complete_cmd(%struct.se_cmd* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %9, align 4
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i8 zeroext) #2

declare dso_local i32 @spc_emulate_inquiry_std(%struct.se_cmd*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #2

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @min_t(i32, i32, i32) #2

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
