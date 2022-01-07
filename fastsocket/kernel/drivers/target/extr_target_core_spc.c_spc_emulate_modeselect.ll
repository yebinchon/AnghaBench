; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_modeselect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_modeselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i32 (%struct.se_device*, i32, i8*)* }
%struct.se_device = type { i32 }
%struct.se_cmd = type { i8*, i32, %struct.se_device* }

@MODE_SELECT_10 = common dso_local global i8 0, align 1
@SE_MODE_PAGE_BUF = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@TCM_PARAMETER_LIST_LENGTH_ERROR = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@modesense_handlers = common dso_local global %struct.TYPE_3__* null, align 8
@TCM_UNKNOWN_MODE_PAGE = common dso_local global i32 0, align 4
@TCM_INVALID_PARAMETER_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @spc_emulate_modeselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_modeselect(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 2
  %20 = load %struct.se_device*, %struct.se_device** %19, align 8
  store %struct.se_device* %20, %struct.se_device** %4, align 8
  %21 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @MODE_SELECT_10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 8, i32 4
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 16
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @SE_MODE_PAGE_BUF, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %49 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %1
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = load i32, i32* @GOOD, align 4
  %56 = call i32 @target_complete_cmd(%struct.se_cmd* %54, i32 %55)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %183

57:                                               ; preds = %1
  %58 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 2
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 4
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %183

66:                                               ; preds = %57
  %67 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %68 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %183

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %77, i32* %15, align 4
  br label %172

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 63
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %9, align 1
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 64
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %78
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  br label %104

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103, %95
  %105 = phi i32 [ %102, %95 ], [ 0, %103 ]
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %10, align 1
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %146, %104
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %110 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %149

112:                                              ; preds = %107
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* %9, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %112
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %10, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %123
  %135 = load i32, i32* @SE_MODE_PAGE_BUF, align 4
  %136 = call i32 @memset(i8* %48, i32 0, i32 %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @modesense_handlers, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32 (%struct.se_device*, i32, i8*)*, i32 (%struct.se_device*, i32, i8*)** %141, align 8
  %143 = load %struct.se_device*, %struct.se_device** %4, align 8
  %144 = call i32 %142(%struct.se_device* %143, i32 0, i8* %48)
  store i32 %144, i32* %14, align 4
  br label %151

145:                                              ; preds = %123, %112
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %107

149:                                              ; preds = %107
  %150 = load i32, i32* @TCM_UNKNOWN_MODE_PAGE, align 4
  store i32 %150, i32* %15, align 4
  br label %172

151:                                              ; preds = %134
  %152 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %153 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i32, i32* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 4
  store i32 %160, i32* %15, align 4
  br label %172

161:                                              ; preds = %151
  %162 = load i8*, i8** %11, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i32, i32* %14, align 4
  %167 = call i64 @memcmp(i8* %165, i8* %48, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %169, %161
  br label %172

172:                                              ; preds = %171, %159, %149, %76
  %173 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %174 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %173)
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %179 = load i32, i32* @GOOD, align 4
  %180 = call i32 @target_complete_cmd(%struct.se_cmd* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %172
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %183

183:                                              ; preds = %181, %71, %64, %53
  %184 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #2

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
