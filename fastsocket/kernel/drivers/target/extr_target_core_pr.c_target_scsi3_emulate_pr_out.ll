; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi3_emulate_pr_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi3_emulate_pr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Received PERSISTENT_RESERVE CDB while legacy SPC-2 reservation is held, returning RESERVATION_CONFLICT\0A\00", align 1
@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"SPC-PR: Received PR OUT parameter list length too small: %u\0A\00", align 1
@TCM_INVALID_PARAMETER_LIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"SPC-PR: Received PR OUT illegal parameter list length: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Unknown PERSISTENT_RESERVE_OUT service action: 0x%02x\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_scsi3_emulate_pr_out(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %30, i32* %2, align 4
  br label %213

31:                                               ; preds = %1
  %32 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %37, i32* %2, align 4
  br label %213

38:                                               ; preds = %31
  %39 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 24
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %48, i32* %2, align 4
  br label %213

49:                                               ; preds = %38
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 31
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 240
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 15
  store i32 %64, i32* %10, align 4
  %65 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %66 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %65)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %70, i32* %2, align 4
  br label %213

71:                                               ; preds = %49
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = call i32 @core_scsi3_extract_reservation_key(i8* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = call i32 @core_scsi3_extract_reservation_key(i8* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 130
  br i1 %79, label %80, label %96

80:                                               ; preds = %71
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 20
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 8
  store i32 %85, i32* %12, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 20
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 4
  store i32 %90, i32* %13, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 20
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %107

96:                                               ; preds = %71
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 17
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 17
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 2
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %96, %80
  %108 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %109 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %108)
  store i8* null, i8** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 31
  %118 = icmp ne i32 %117, 132
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %120, i32* %2, align 4
  br label %213

121:                                              ; preds = %112, %107
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 31
  %130 = icmp ne i32 %129, 130
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %133 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 24
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %138 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %141, i32* %2, align 4
  br label %213

142:                                              ; preds = %131, %124, %121
  %143 = load i32, i32* %8, align 4
  switch i32 %143, label %196 [
    i32 132, label %144
    i32 128, label %152
    i32 129, label %158
    i32 135, label %164
    i32 134, label %168
    i32 133, label %175
    i32 131, label %182
    i32 130, label %189
  ]

144:                                              ; preds = %142
  %145 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @core_scsi3_emulate_pro_register(%struct.se_cmd* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 0)
  store i32 %151, i32* %15, align 4
  br label %204

152:                                              ; preds = %142
  %153 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @core_scsi3_emulate_pro_reserve(%struct.se_cmd* %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %15, align 4
  br label %204

158:                                              ; preds = %142
  %159 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @core_scsi3_emulate_pro_release(%struct.se_cmd* %159, i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %15, align 4
  br label %204

164:                                              ; preds = %142
  %165 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @core_scsi3_emulate_pro_clear(%struct.se_cmd* %165, i32 %166)
  store i32 %167, i32* %15, align 4
  br label %204

168:                                              ; preds = %142
  %169 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @core_scsi3_emulate_pro_preempt(%struct.se_cmd* %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 0)
  store i32 %174, i32* %15, align 4
  br label %204

175:                                              ; preds = %142
  %176 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @core_scsi3_emulate_pro_preempt(%struct.se_cmd* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 1)
  store i32 %181, i32* %15, align 4
  br label %204

182:                                              ; preds = %142
  %183 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @core_scsi3_emulate_pro_register(%struct.se_cmd* %183, i32 0, i32 %184, i32 %185, i32 %186, i32 %187, i32 1)
  store i32 %188, i32* %15, align 4
  br label %204

189:                                              ; preds = %142
  %190 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @core_scsi3_emulate_pro_register_and_move(%struct.se_cmd* %190, i32 %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %15, align 4
  br label %204

196:                                              ; preds = %142
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 31
  %202 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %203, i32* %2, align 4
  br label %213

204:                                              ; preds = %189, %182, %175, %168, %164, %158, %152, %144
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %209 = load i32, i32* @GOOD, align 4
  %210 = call i32 @target_complete_cmd(%struct.se_cmd* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %204
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %196, %136, %119, %69, %43, %36, %28
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @core_scsi3_extract_reservation_key(i8*) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @core_scsi3_emulate_pro_register(%struct.se_cmd*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @core_scsi3_emulate_pro_reserve(%struct.se_cmd*, i32, i32, i32) #1

declare dso_local i32 @core_scsi3_emulate_pro_release(%struct.se_cmd*, i32, i32, i32) #1

declare dso_local i32 @core_scsi3_emulate_pro_clear(%struct.se_cmd*, i32) #1

declare dso_local i32 @core_scsi3_emulate_pro_preempt(%struct.se_cmd*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @core_scsi3_emulate_pro_register_and_move(%struct.se_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
