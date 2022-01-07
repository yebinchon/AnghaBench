; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_execute_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64*, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (%struct.se_device*)*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iblock_dev = type { i32 }

@TCM_INVALID_CDB_FIELD = common dso_local global i64 0, align 8
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"UNMAP parameter list length %u too small\0A\00", align 1
@TCM_PARAMETER_LIST_LENGTH_ERROR = common dso_local global i64 0, align 8
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"UNMAP parameter list length %u too small, ignoring bd_dl %u\0A\00", align 1
@TCM_INVALID_PARAMETER_LIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"UNMAP: Sub: %s Using dl: %u bd_dl: %u size: %u ptr: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"UNMAP: Using lba: %llu and range: %u\0A\00", align 1
@TCM_ADDRESS_OUT_OF_RANGE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"blkdev_issue_discard() failed: %d\0A\00", align 1
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*)* @iblock_execute_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iblock_execute_unmap(%struct.se_cmd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.iblock_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 2
  %17 = load %struct.se_device*, %struct.se_device** %16, align 8
  store %struct.se_device* %17, %struct.se_device** %4, align 8
  %18 = load %struct.se_device*, %struct.se_device** %4, align 8
  %19 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %18)
  store %struct.iblock_dev* %19, %struct.iblock_dev** %5, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %11, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @TCM_INVALID_CDB_FIELD, align 8
  store i64 %27, i64* %2, align 8
  br label %169

28:                                               ; preds = %1
  %29 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %35 = load i32, i32* @SAM_STAT_GOOD, align 4
  %36 = call i32 @target_complete_cmd(%struct.se_cmd* %34, i32 %35)
  store i64 0, i64* %2, align 8
  br label %169

37:                                               ; preds = %28
  %38 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 8
  store i64 %47, i64* %2, align 8
  br label %169

48:                                               ; preds = %37
  %49 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %50 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %49)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %54, i64* %2, align 8
  br label %169

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = call i32 @get_unaligned_be16(i8* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = call i32 @get_unaligned_be16(i8* %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %63 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 8
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %55
  %70 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  br label %77

75:                                               ; preds = %55
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 %78, 16
  %80 = load %struct.se_device*, %struct.se_device** %4, align 8
  %81 = getelementptr inbounds %struct.se_device, %struct.se_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i64, i64* @TCM_INVALID_PARAMETER_LIST, align 8
  store i64 %86, i64* %11, align 8
  br label %158

87:                                               ; preds = %77
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  store i8* %89, i8** %7, align 8
  %90 = load %struct.se_device*, %struct.se_device** %4, align 8
  %91 = getelementptr inbounds %struct.se_device, %struct.se_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %95, i32 %96, i32 %97, i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %152, %87
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %102, 16
  br i1 %103, label %104, label %157

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = call i64 @get_unaligned_be64(i8* %106)
  store i64 %107, i64* %8, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  %110 = call i32 @get_unaligned_be32(i8* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i64, i64* %8, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.se_device*, %struct.se_device** %4, align 8
  %116 = getelementptr inbounds %struct.se_device, %struct.se_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %114, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i64, i64* @TCM_INVALID_PARAMETER_LIST, align 8
  store i64 %121, i64* %11, align 8
  br label %158

122:                                              ; preds = %104
  %123 = load i64, i64* %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load %struct.se_device*, %struct.se_device** %4, align 8
  %128 = getelementptr inbounds %struct.se_device, %struct.se_device* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %130, align 8
  %132 = load %struct.se_device*, %struct.se_device** %4, align 8
  %133 = call i64 %131(%struct.se_device* %132)
  %134 = add nsw i64 %133, 1
  %135 = icmp sgt i64 %126, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %122
  %137 = load i64, i64* @TCM_ADDRESS_OUT_OF_RANGE, align 8
  store i64 %137, i64* %11, align 8
  br label %158

138:                                              ; preds = %122
  %139 = load %struct.iblock_dev*, %struct.iblock_dev** %5, align 8
  %140 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i32 @blkdev_issue_discard(i32 %141, i64 %142, i32 %143, i32 %144, i32 0)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %151, i64* %11, align 8
  br label %158

152:                                              ; preds = %138
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 16
  store i8* %154, i8** %7, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sub nsw i32 %155, 16
  store i32 %156, i32* %9, align 4
  br label %101

157:                                              ; preds = %101
  br label %158

158:                                              ; preds = %157, %148, %136, %120, %85
  %159 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %160 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %159)
  %161 = load i64, i64* %11, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %165 = load i32, i32* @GOOD, align 4
  %166 = call i32 @target_complete_cmd(%struct.se_cmd* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i64, i64* %11, align 8
  store i64 %168, i64* %2, align 8
  br label %169

169:                                              ; preds = %167, %53, %42, %33, %26
  %170 = load i64, i64* %2, align 8
  ret i64 %170
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, ...) #1

declare dso_local i64 @get_unaligned_be64(i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @blkdev_issue_discard(i32, i64, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
