; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_send_check_condition_and_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_send_check_condition_and_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*)* }

@SCF_SENT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCF_EMULATED_TASK_SENSE = common dso_local global i32 0, align 4
@SPC_ADD_SENSE_LEN_OFFSET = common dso_local global i64 0, align 8
@NOT_READY = common dso_local global i8 0, align 1
@SPC_SENSE_KEY_OFFSET = common dso_local global i64 0, align 8
@SPC_ASC_KEY_OFFSET = common dso_local global i64 0, align 8
@SPC_ASCQ_KEY_OFFSET = common dso_local global i64 0, align 8
@ILLEGAL_REQUEST = common dso_local global i8 0, align 1
@ABORTED_COMMAND = common dso_local global i8 0, align 1
@DATA_PROTECT = common dso_local global i8 0, align 1
@UNIT_ATTENTION = common dso_local global i8 0, align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@TRANSPORT_SENSE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %15 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 5
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SCF_SENT_CHECK_CONDITION, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %26, i32 0, i32 5
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  store i32 0, i32* %4, align 4
  br label %326

30:                                               ; preds = %3
  %31 = load i32, i32* @SCF_SENT_CHECK_CONDITION, align 4
  %32 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 5
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %318

46:                                               ; preds = %42, %30
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @SCF_EMULATED_TASK_SENSE, align 4
  %51 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %298 [
    i32 136, label %57
    i32 137, label %73
    i32 129, label %86
    i32 134, label %86
    i32 130, label %99
    i32 144, label %112
    i32 141, label %128
    i32 140, label %144
    i32 139, label %157
    i32 135, label %170
    i32 131, label %183
    i32 133, label %199
    i32 132, label %215
    i32 128, label %231
    i32 145, label %244
    i32 142, label %257
    i32 143, label %277
    i32 138, label %297
  ]

57:                                               ; preds = %55
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 112, i8* %59, align 1
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 10, i8* %62, align 1
  %63 = load i8, i8* @NOT_READY, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 %63, i8* %66, align 1
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 0, i8* %72, align 1
  br label %311

73:                                               ; preds = %55
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 112, i8* %75, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 10, i8* %78, align 1
  %79 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 %79, i8* %82, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8 37, i8* %85, align 1
  br label %311

86:                                               ; preds = %55, %55
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 112, i8* %88, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 10, i8* %91, align 1
  %92 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8 %92, i8* %95, align 1
  %96 = load i8*, i8** %8, align 8
  %97 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 32, i8* %98, align 1
  br label %311

99:                                               ; preds = %55
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 112, i8* %101, align 1
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 10, i8* %104, align 1
  %105 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 %105, i8* %108, align 1
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 36, i8* %111, align 1
  br label %311

112:                                              ; preds = %55
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 112, i8* %114, align 1
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 10, i8* %117, align 1
  %118 = load i8, i8* @ABORTED_COMMAND, align 1
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 %118, i8* %121, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8 41, i8* %124, align 1
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8 3, i8* %127, align 1
  br label %311

128:                                              ; preds = %55
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  store i8 112, i8* %130, align 1
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 10, i8* %133, align 1
  %134 = load i8, i8* @ABORTED_COMMAND, align 1
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 %134, i8* %137, align 1
  %138 = load i8*, i8** %8, align 8
  %139 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 12, i8* %140, align 1
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8 13, i8* %143, align 1
  br label %311

144:                                              ; preds = %55
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 112, i8* %146, align 1
  %147 = load i8*, i8** %8, align 8
  %148 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8 10, i8* %149, align 1
  %150 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %151 = load i8*, i8** %8, align 8
  %152 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8 %150, i8* %153, align 1
  %154 = load i8*, i8** %8, align 8
  %155 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8 36, i8* %156, align 1
  br label %311

157:                                              ; preds = %55
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 112, i8* %159, align 1
  %160 = load i8*, i8** %8, align 8
  %161 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8 10, i8* %162, align 1
  %163 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %164 = load i8*, i8** %8, align 8
  %165 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8 %163, i8* %166, align 1
  %167 = load i8*, i8** %8, align 8
  %168 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8 38, i8* %169, align 1
  br label %311

170:                                              ; preds = %55
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 112, i8* %172, align 1
  %173 = load i8*, i8** %8, align 8
  %174 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8 10, i8* %175, align 1
  %176 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 %176, i8* %179, align 1
  %180 = load i8*, i8** %8, align 8
  %181 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8 26, i8* %182, align 1
  br label %311

183:                                              ; preds = %55
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  store i8 112, i8* %185, align 1
  %186 = load i8*, i8** %8, align 8
  %187 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8 10, i8* %188, align 1
  %189 = load i8, i8* @ABORTED_COMMAND, align 1
  %190 = load i8*, i8** %8, align 8
  %191 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8 %189, i8* %192, align 1
  %193 = load i8*, i8** %8, align 8
  %194 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8 12, i8* %195, align 1
  %196 = load i8*, i8** %8, align 8
  %197 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8 12, i8* %198, align 1
  br label %311

199:                                              ; preds = %55
  %200 = load i8*, i8** %8, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  store i8 112, i8* %201, align 1
  %202 = load i8*, i8** %8, align 8
  %203 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8 10, i8* %204, align 1
  %205 = load i8, i8* @ABORTED_COMMAND, align 1
  %206 = load i8*, i8** %8, align 8
  %207 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8 %205, i8* %208, align 1
  %209 = load i8*, i8** %8, align 8
  %210 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8 71, i8* %211, align 1
  %212 = load i8*, i8** %8, align 8
  %213 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 5, i8* %214, align 1
  br label %311

215:                                              ; preds = %55
  %216 = load i8*, i8** %8, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  store i8 112, i8* %217, align 1
  %218 = load i8*, i8** %8, align 8
  %219 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8 10, i8* %220, align 1
  %221 = load i8, i8* @ABORTED_COMMAND, align 1
  %222 = load i8*, i8** %8, align 8
  %223 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8 %221, i8* %224, align 1
  %225 = load i8*, i8** %8, align 8
  %226 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8 17, i8* %227, align 1
  %228 = load i8*, i8** %8, align 8
  %229 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8 19, i8* %230, align 1
  br label %311

231:                                              ; preds = %55
  %232 = load i8*, i8** %8, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 0
  store i8 112, i8* %233, align 1
  %234 = load i8*, i8** %8, align 8
  %235 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8 10, i8* %236, align 1
  %237 = load i8, i8* @DATA_PROTECT, align 1
  %238 = load i8*, i8** %8, align 8
  %239 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8 %237, i8* %240, align 1
  %241 = load i8*, i8** %8, align 8
  %242 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8 39, i8* %243, align 1
  br label %311

244:                                              ; preds = %55
  %245 = load i8*, i8** %8, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 0
  store i8 112, i8* %246, align 1
  %247 = load i8*, i8** %8, align 8
  %248 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8 10, i8* %249, align 1
  %250 = load i8, i8* @ILLEGAL_REQUEST, align 1
  %251 = load i8*, i8** %8, align 8
  %252 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8 %250, i8* %253, align 1
  %254 = load i8*, i8** %8, align 8
  %255 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 33, i8* %256, align 1
  br label %311

257:                                              ; preds = %55
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  store i8 112, i8* %259, align 1
  %260 = load i8*, i8** %8, align 8
  %261 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8 10, i8* %262, align 1
  %263 = load i8, i8* @UNIT_ATTENTION, align 1
  %264 = load i8*, i8** %8, align 8
  %265 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8 %263, i8* %266, align 1
  %267 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %268 = call i32 @core_scsi3_ua_for_check_condition(%struct.se_cmd* %267, i8* %10, i8* %11)
  %269 = load i8, i8* %10, align 1
  %270 = load i8*, i8** %8, align 8
  %271 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8 %269, i8* %272, align 1
  %273 = load i8, i8* %11, align 1
  %274 = load i8*, i8** %8, align 8
  %275 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8 %273, i8* %276, align 1
  br label %311

277:                                              ; preds = %55
  %278 = load i8*, i8** %8, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  store i8 112, i8* %279, align 1
  %280 = load i8*, i8** %8, align 8
  %281 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8 10, i8* %282, align 1
  %283 = load i8, i8* @NOT_READY, align 1
  %284 = load i8*, i8** %8, align 8
  %285 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8 %283, i8* %286, align 1
  %287 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %288 = call i32 @transport_get_sense_codes(%struct.se_cmd* %287, i8* %10, i8* %11)
  %289 = load i8, i8* %10, align 1
  %290 = load i8*, i8** %8, align 8
  %291 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  store i8 %289, i8* %292, align 1
  %293 = load i8, i8* %11, align 1
  %294 = load i8*, i8** %8, align 8
  %295 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  store i8 %293, i8* %296, align 1
  br label %311

297:                                              ; preds = %55
  br label %298

298:                                              ; preds = %55, %297
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  store i8 112, i8* %300, align 1
  %301 = load i8*, i8** %8, align 8
  %302 = load i64, i64* @SPC_ADD_SENSE_LEN_OFFSET, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8 10, i8* %303, align 1
  %304 = load i8, i8* @NOT_READY, align 1
  %305 = load i8*, i8** %8, align 8
  %306 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8 %304, i8* %307, align 1
  %308 = load i8*, i8** %8, align 8
  %309 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8 8, i8* %310, align 1
  br label %311

311:                                              ; preds = %298, %277, %257, %244, %231, %215, %199, %183, %170, %157, %144, %128, %112, %99, %86, %73, %57
  %312 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %313 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %314 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %313, i32 0, i32 4
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* @TRANSPORT_SENSE_BUFFER, align 4
  %316 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %317 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %316, i32 0, i32 3
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %311, %45
  %319 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %320 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %319, i32 0, i32 2
  %321 = load %struct.TYPE_2__*, %struct.TYPE_2__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 0
  %323 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %322, align 8
  %324 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %325 = call i32 %323(%struct.se_cmd* %324)
  store i32 %325, i32* %4, align 4
  br label %326

326:                                              ; preds = %318, %25
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @core_scsi3_ua_for_check_condition(%struct.se_cmd*, i8*, i8*) #1

declare dso_local i32 @transport_get_sense_codes(%struct.se_cmd*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
