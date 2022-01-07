; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_check_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_check_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fsg_dev = type { i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.lun*, %struct.lun* }
%struct.lun = type { i64, i64, i64, i64 }

@check_command.dirletter = internal constant [4 x i8] c"uoin", align 1
@mod_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@USB_SC_RBC = common dso_local global i64 0, align 8
@DATA_DIR_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c", H%c=%u\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"SCSI command: %s;  Dc=%d, D%c=%u;  Hc=%d%s\0A\00", align 1
@DATA_DIR_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s is buggy! Expected length %d but we got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"using LUN %d from CBW, not LUN %d from CDB\0A\00", align 1
@SC_REQUEST_SENSE = common dso_local global i32 0, align 4
@SS_NO_SENSE = common dso_local global i64 0, align 8
@SC_INQUIRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unsupported LUN %d\0A\00", align 1
@SS_INVALID_FIELD_IN_CDB = common dso_local global i64 0, align 8
@SS_MEDIUM_NOT_PRESENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, i32, i32, i32, i32, i8*)* @check_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_command(%struct.fsg_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsg_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [20 x i8], align 16
  %17 = alloca %struct.lun*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %19 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %15, align 4
  %24 = call i64 (...) @protocol_is_scsi()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %40

27:                                               ; preds = %6
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mod_data, i32 0, i32 0), align 8
  %29 = load i64, i64* @USB_SC_RBC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %33 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 12, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %31
  br label %39

38:                                               ; preds = %27
  store i32 12, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %26
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %41, align 16
  %42 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %43 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DATA_DIR_UNKNOWN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %49 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %50 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* @check_command.dirletter, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %57 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %55, i32 %58)
  br label %60

60:                                               ; preds = %47, %40
  %61 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* @check_command.dirletter, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %69 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %72 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %75 = call i32 @VDBG(%struct.fsg_dev* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %63, i8 signext %67, i32 %70, i32 %73, i8* %74)
  %76 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %77 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %60
  %81 = load i32, i32* @DATA_DIR_NONE, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %60
  %83 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %84 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DATA_DIR_UNKNOWN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %92 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %94 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %97 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  br label %115

98:                                               ; preds = %82
  %99 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %100 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %103 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %108 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %111 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %113 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %112, i32 0, i32 5
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %106, %98
  br label %115

115:                                              ; preds = %114, %88
  %116 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %117 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %120 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  %121 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %122 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %121, i32 0, i32 6
  store i32 %118, i32* %122, align 4
  %123 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %124 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %115
  %130 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %131 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %136 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %135, i32 0, i32 5
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %351

139:                                              ; preds = %129, %115
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %142 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %168

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %148 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp sle i32 %146, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %156 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (%struct.fsg_dev*, i8*, ...) @DBG(%struct.fsg_dev* %152, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %153, i32 %154, i32 %157)
  %159 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %160 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %9, align 4
  br label %167

162:                                              ; preds = %145
  %163 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %164 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %163, i32 0, i32 5
  store i32 1, i32* %164, align 8
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %7, align 4
  br label %351

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %139
  %169 = call i64 (...) @transport_is_bbb()
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %173 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %179 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %180 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (%struct.fsg_dev*, i8*, ...) @DBG(%struct.fsg_dev* %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %177, %171
  br label %189

185:                                              ; preds = %168
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %188 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %184
  %190 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %191 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %229

194:                                              ; preds = %189
  %195 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %196 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %199 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %194
  %203 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %204 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %203, i32 0, i32 12
  %205 = load %struct.lun*, %struct.lun** %204, align 8
  %206 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %207 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.lun, %struct.lun* %205, i64 %209
  store %struct.lun* %210, %struct.lun** %17, align 8
  %211 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %212 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %211, i32 0, i32 11
  store %struct.lun* %210, %struct.lun** %212, align 8
  %213 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %214 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @SC_REQUEST_SENSE, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %202
  %221 = load i64, i64* @SS_NO_SENSE, align 8
  %222 = load %struct.lun*, %struct.lun** %17, align 8
  %223 = getelementptr inbounds %struct.lun, %struct.lun* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.lun*, %struct.lun** %17, align 8
  %225 = getelementptr inbounds %struct.lun, %struct.lun* %224, i32 0, i32 3
  store i64 0, i64* %225, align 8
  %226 = load %struct.lun*, %struct.lun** %17, align 8
  %227 = getelementptr inbounds %struct.lun, %struct.lun* %226, i32 0, i32 2
  store i64 0, i64* %227, align 8
  br label %228

228:                                              ; preds = %220, %202
  br label %258

229:                                              ; preds = %194, %189
  store %struct.lun* null, %struct.lun** %17, align 8
  %230 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %231 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %230, i32 0, i32 11
  store %struct.lun* null, %struct.lun** %231, align 8
  %232 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %233 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %232, i32 0, i32 10
  store i64 0, i64* %233, align 8
  %234 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %235 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @SC_INQUIRY, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %229
  %242 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %243 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @SC_REQUEST_SENSE, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %241
  %250 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %251 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %252 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (%struct.fsg_dev*, i8*, ...) @DBG(%struct.fsg_dev* %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %7, align 4
  br label %351

257:                                              ; preds = %241, %229
  br label %258

258:                                              ; preds = %257, %228
  %259 = load %struct.lun*, %struct.lun** %17, align 8
  %260 = icmp ne %struct.lun* %259, null
  br i1 %260, label %261, label %294

261:                                              ; preds = %258
  %262 = load %struct.lun*, %struct.lun** %17, align 8
  %263 = getelementptr inbounds %struct.lun, %struct.lun* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @SS_NO_SENSE, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %294

267:                                              ; preds = %261
  %268 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %269 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @SC_INQUIRY, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %294

275:                                              ; preds = %267
  %276 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %277 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @SC_REQUEST_SENSE, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %275
  %284 = load %struct.lun*, %struct.lun** %17, align 8
  %285 = getelementptr inbounds %struct.lun, %struct.lun* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.lun*, %struct.lun** %17, align 8
  %288 = getelementptr inbounds %struct.lun, %struct.lun* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  %289 = load i64, i64* @SS_NO_SENSE, align 8
  %290 = load %struct.lun*, %struct.lun** %17, align 8
  %291 = getelementptr inbounds %struct.lun, %struct.lun* %290, i32 0, i32 1
  store i64 %289, i64* %291, align 8
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %7, align 4
  br label %351

294:                                              ; preds = %275, %267, %261, %258
  %295 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %296 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 31
  store i32 %300, i32* %298, align 4
  store i32 1, i32* %14, align 4
  br label %301

301:                                              ; preds = %331, %294
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %9, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %334

305:                                              ; preds = %301
  %306 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %307 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %305
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* %14, align 4
  %317 = shl i32 1, %316
  %318 = and i32 %315, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %330, label %320

320:                                              ; preds = %314
  %321 = load %struct.lun*, %struct.lun** %17, align 8
  %322 = icmp ne %struct.lun* %321, null
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i64, i64* @SS_INVALID_FIELD_IN_CDB, align 8
  %325 = load %struct.lun*, %struct.lun** %17, align 8
  %326 = getelementptr inbounds %struct.lun, %struct.lun* %325, i32 0, i32 0
  store i64 %324, i64* %326, align 8
  br label %327

327:                                              ; preds = %323, %320
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %7, align 4
  br label %351

330:                                              ; preds = %314, %305
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %14, align 4
  br label %301

334:                                              ; preds = %301
  %335 = load %struct.lun*, %struct.lun** %17, align 8
  %336 = icmp ne %struct.lun* %335, null
  br i1 %336, label %337, label %350

337:                                              ; preds = %334
  %338 = load %struct.lun*, %struct.lun** %17, align 8
  %339 = call i32 @backing_file_is_open(%struct.lun* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %350, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* %12, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %341
  %345 = load i64, i64* @SS_MEDIUM_NOT_PRESENT, align 8
  %346 = load %struct.lun*, %struct.lun** %17, align 8
  %347 = getelementptr inbounds %struct.lun, %struct.lun* %346, i32 0, i32 0
  store i64 %345, i64* %347, align 8
  %348 = load i32, i32* @EINVAL, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %7, align 4
  br label %351

350:                                              ; preds = %341, %337, %334
  store i32 0, i32* %7, align 4
  br label %351

351:                                              ; preds = %350, %344, %327, %283, %249, %162, %134
  %352 = load i32, i32* %7, align 4
  ret i32 %352
}

declare dso_local i64 @protocol_is_scsi(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*, i8*, i32, i8 signext, i32, i32, i8*) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*, ...) #1

declare dso_local i64 @transport_is_bbb(...) #1

declare dso_local i32 @backing_file_is_open(%struct.lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
