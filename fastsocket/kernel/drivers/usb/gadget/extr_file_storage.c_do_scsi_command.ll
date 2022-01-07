; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_scsi_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_scsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fsg_dev = type { i32*, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i64, i64, %struct.fsg_buffhd*, %struct.fsg_buffhd* }
%struct.TYPE_4__ = type { i32 }
%struct.fsg_buffhd = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@do_scsi_command.unknown = internal global [16 x i8] zeroinitializer, align 16
@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@DATA_DIR_TO_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"INQUIRY\00", align 1
@DATA_DIR_FROM_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"MODE SELECT(6)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"MODE SELECT(10)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MODE SENSE(6)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"MODE SENSE(10)\00", align 1
@DATA_DIR_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"PREVENT-ALLOW MEDIUM REMOVAL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"READ(6)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"READ(10)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"READ(12)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"READ CAPACITY\00", align 1
@mod_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"READ HEADER\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"READ TOC\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"READ FORMAT CAPACITIES\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"REQUEST SENSE\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"START-STOP UNIT\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"SYNCHRONIZE CACHE\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"TEST UNIT READY\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"WRITE(6)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"WRITE(10)\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"WRITE(12)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Unknown x%02x\00", align 1
@DATA_DIR_UNKNOWN = common dso_local global i64 0, align 8
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@BUF_STATE_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @do_scsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_command(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %11 = call i32 @dump_cdb(%struct.fsg_dev* %10)
  %12 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %13 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %12, i32 0, i32 9
  %14 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %13, align 8
  %15 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %16 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %15, i32 0, i32 10
  store %struct.fsg_buffhd* %14, %struct.fsg_buffhd** %16, align 8
  store %struct.fsg_buffhd* %14, %struct.fsg_buffhd** %4, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %19 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %25 = call i32 @sleep_thread(%struct.fsg_dev* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %460

30:                                               ; preds = %23
  br label %17

31:                                               ; preds = %17
  %32 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %33 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %35 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %37 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %36, i32 0, i32 5
  %38 = call i32 @down_read(i32* %37)
  %39 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %40 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %384 [
    i32 151, label %44
    i32 149, label %61
    i32 150, label %78
    i32 147, label %95
    i32 148, label %112
    i32 146, label %129
    i32 143, label %140
    i32 145, label %164
    i32 144, label %181
    i32 142, label %198
    i32 140, label %210
    i32 139, label %231
    i32 141, label %252
    i32 137, label %269
    i32 134, label %286
    i32 133, label %297
    i32 132, label %308
    i32 131, label %314
    i32 128, label %325
    i32 130, label %349
    i32 129, label %366
    i32 152, label %383
    i32 138, label %383
    i32 136, label %383
    i32 135, label %383
  ]

44:                                               ; preds = %31
  %45 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %46 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %51 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %53 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %54 = call i32 @check_command(%struct.fsg_dev* %52, i32 6, i64 %53, i32 16, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %58 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %59 = call i32 @do_inquiry(%struct.fsg_dev* %57, %struct.fsg_buffhd* %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %44
  br label %410

61:                                               ; preds = %31
  %62 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %63 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %68 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %70 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %71 = call i32 @check_command(%struct.fsg_dev* %69, i32 6, i64 %70, i32 18, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %71, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %75 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %76 = call i32 @do_mode_select(%struct.fsg_dev* %74, %struct.fsg_buffhd* %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %61
  br label %410

78:                                               ; preds = %31
  %79 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %80 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  %83 = call i32 @get_unaligned_be16(i32* %82)
  %84 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %85 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %87 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %88 = call i32 @check_command(%struct.fsg_dev* %86, i32 10, i64 %87, i32 386, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %88, i32* %6, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %92 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %93 = call i32 @do_mode_select(%struct.fsg_dev* %91, %struct.fsg_buffhd* %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %78
  br label %410

95:                                               ; preds = %31
  %96 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %97 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %102 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %104 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %105 = call i32 @check_command(%struct.fsg_dev* %103, i32 6, i64 %104, i32 22, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %105, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %109 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %110 = call i32 @do_mode_sense(%struct.fsg_dev* %108, %struct.fsg_buffhd* %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %95
  br label %410

112:                                              ; preds = %31
  %113 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %114 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = call i32 @get_unaligned_be16(i32* %116)
  %118 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %119 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %121 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %122 = call i32 @check_command(%struct.fsg_dev* %120, i32 10, i64 %121, i32 390, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %122, i32* %6, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %126 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %127 = call i32 @do_mode_sense(%struct.fsg_dev* %125, %struct.fsg_buffhd* %126)
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %112
  br label %410

129:                                              ; preds = %31
  %130 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %131 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %130, i32 0, i32 1
  store i32 0, i32* %131, align 8
  %132 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %133 = load i64, i64* @DATA_DIR_NONE, align 8
  %134 = call i32 @check_command(%struct.fsg_dev* %132, i32 6, i64 %133, i32 16, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %134, i32* %6, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %138 = call i32 @do_prevent_allow(%struct.fsg_dev* %137)
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %136, %129
  br label %410

140:                                              ; preds = %31
  %141 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %142 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %7, align 4
  br label %151

151:                                              ; preds = %149, %148
  %152 = phi i32 [ 256, %148 ], [ %150, %149 ]
  %153 = shl i32 %152, 9
  %154 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %155 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %157 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %158 = call i32 @check_command(%struct.fsg_dev* %156, i32 6, i64 %157, i32 30, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %158, i32* %6, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %162 = call i32 @do_read(%struct.fsg_dev* %161)
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %160, %151
  br label %410

164:                                              ; preds = %31
  %165 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %166 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 7
  %169 = call i32 @get_unaligned_be16(i32* %168)
  %170 = shl i32 %169, 9
  %171 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %172 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %174 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %175 = call i32 @check_command(%struct.fsg_dev* %173, i32 10, i64 %174, i32 446, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %175, i32* %6, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %179 = call i32 @do_read(%struct.fsg_dev* %178)
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %177, %164
  br label %410

181:                                              ; preds = %31
  %182 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %183 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 6
  %186 = call i32 @get_unaligned_be32(i32* %185)
  %187 = shl i32 %186, 9
  %188 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %189 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %191 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %192 = call i32 @check_command(%struct.fsg_dev* %190, i32 12, i64 %191, i32 1022, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %192, i32* %6, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %181
  %195 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %196 = call i32 @do_read(%struct.fsg_dev* %195)
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %194, %181
  br label %410

198:                                              ; preds = %31
  %199 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %200 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %199, i32 0, i32 1
  store i32 8, i32* %200, align 8
  %201 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %202 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %203 = call i32 @check_command(%struct.fsg_dev* %201, i32 10, i64 %202, i32 316, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 %203, i32* %6, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %207 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %208 = call i32 @do_read_capacity(%struct.fsg_dev* %206, %struct.fsg_buffhd* %207)
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %205, %198
  br label %410

210:                                              ; preds = %31
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mod_data, i32 0, i32 0), align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  br label %385

214:                                              ; preds = %210
  %215 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %216 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 7
  %219 = call i32 @get_unaligned_be16(i32* %218)
  %220 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %221 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %223 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %224 = call i32 @check_command(%struct.fsg_dev* %222, i32 10, i64 %223, i32 446, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %224, i32* %6, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %214
  %227 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %228 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %229 = call i32 @do_read_header(%struct.fsg_dev* %227, %struct.fsg_buffhd* %228)
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %226, %214
  br label %410

231:                                              ; preds = %31
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mod_data, i32 0, i32 0), align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  br label %385

235:                                              ; preds = %231
  %236 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %237 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 7
  %240 = call i32 @get_unaligned_be16(i32* %239)
  %241 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %242 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %244 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %245 = call i32 @check_command(%struct.fsg_dev* %243, i32 10, i64 %244, i32 450, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 %245, i32* %6, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %235
  %248 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %249 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %250 = call i32 @do_read_toc(%struct.fsg_dev* %248, %struct.fsg_buffhd* %249)
  store i32 %250, i32* %6, align 4
  br label %251

251:                                              ; preds = %247, %235
  br label %410

252:                                              ; preds = %31
  %253 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %254 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 7
  %257 = call i32 @get_unaligned_be16(i32* %256)
  %258 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %259 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %261 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %262 = call i32 @check_command(%struct.fsg_dev* %260, i32 10, i64 %261, i32 384, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i32 %262, i32* %6, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %252
  %265 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %266 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %267 = call i32 @do_read_format_capacities(%struct.fsg_dev* %265, %struct.fsg_buffhd* %266)
  store i32 %267, i32* %6, align 4
  br label %268

268:                                              ; preds = %264, %252
  br label %410

269:                                              ; preds = %31
  %270 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %271 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 4
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %276 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 8
  %277 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %278 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %279 = call i32 @check_command(%struct.fsg_dev* %277, i32 6, i64 %278, i32 16, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 %279, i32* %6, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %269
  %282 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %283 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %284 = call i32 @do_request_sense(%struct.fsg_dev* %282, %struct.fsg_buffhd* %283)
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %281, %269
  br label %410

286:                                              ; preds = %31
  %287 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %288 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %287, i32 0, i32 1
  store i32 0, i32* %288, align 8
  %289 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %290 = load i64, i64* @DATA_DIR_NONE, align 8
  %291 = call i32 @check_command(%struct.fsg_dev* %289, i32 6, i64 %290, i32 18, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32 %291, i32* %6, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %295 = call i32 @do_start_stop(%struct.fsg_dev* %294)
  store i32 %295, i32* %6, align 4
  br label %296

296:                                              ; preds = %293, %286
  br label %410

297:                                              ; preds = %31
  %298 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %299 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %298, i32 0, i32 1
  store i32 0, i32* %299, align 8
  %300 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %301 = load i64, i64* @DATA_DIR_NONE, align 8
  %302 = call i32 @check_command(%struct.fsg_dev* %300, i32 10, i64 %301, i32 444, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i32 %302, i32* %6, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %297
  %305 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %306 = call i32 @do_synchronize_cache(%struct.fsg_dev* %305)
  store i32 %306, i32* %6, align 4
  br label %307

307:                                              ; preds = %304, %297
  br label %410

308:                                              ; preds = %31
  %309 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %310 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %309, i32 0, i32 1
  store i32 0, i32* %310, align 8
  %311 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %312 = load i64, i64* @DATA_DIR_NONE, align 8
  %313 = call i32 @check_command(%struct.fsg_dev* %311, i32 6, i64 %312, i32 0, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  store i32 %313, i32* %6, align 4
  br label %410

314:                                              ; preds = %31
  %315 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %316 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %315, i32 0, i32 1
  store i32 0, i32* %316, align 8
  %317 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %318 = load i64, i64* @DATA_DIR_NONE, align 8
  %319 = call i32 @check_command(%struct.fsg_dev* %317, i32 10, i64 %318, i32 446, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i32 %319, i32* %6, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %314
  %322 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %323 = call i32 @do_verify(%struct.fsg_dev* %322)
  store i32 %323, i32* %6, align 4
  br label %324

324:                                              ; preds = %321, %314
  br label %410

325:                                              ; preds = %31
  %326 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %327 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 4
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %7, align 4
  %331 = load i32, i32* %7, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  br label %336

334:                                              ; preds = %325
  %335 = load i32, i32* %7, align 4
  br label %336

336:                                              ; preds = %334, %333
  %337 = phi i32 [ 256, %333 ], [ %335, %334 ]
  %338 = shl i32 %337, 9
  %339 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %340 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 8
  %341 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %342 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %343 = call i32 @check_command(%struct.fsg_dev* %341, i32 6, i64 %342, i32 30, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  store i32 %343, i32* %6, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %336
  %346 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %347 = call i32 @do_write(%struct.fsg_dev* %346)
  store i32 %347, i32* %6, align 4
  br label %348

348:                                              ; preds = %345, %336
  br label %410

349:                                              ; preds = %31
  %350 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %351 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 7
  %354 = call i32 @get_unaligned_be16(i32* %353)
  %355 = shl i32 %354, 9
  %356 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %357 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 8
  %358 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %359 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %360 = call i32 @check_command(%struct.fsg_dev* %358, i32 10, i64 %359, i32 446, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  store i32 %360, i32* %6, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %349
  %363 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %364 = call i32 @do_write(%struct.fsg_dev* %363)
  store i32 %364, i32* %6, align 4
  br label %365

365:                                              ; preds = %362, %349
  br label %410

366:                                              ; preds = %31
  %367 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %368 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 6
  %371 = call i32 @get_unaligned_be32(i32* %370)
  %372 = shl i32 %371, 9
  %373 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %374 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 8
  %375 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %376 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %377 = call i32 @check_command(%struct.fsg_dev* %375, i32 12, i64 %376, i32 1022, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i32 %377, i32* %6, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %366
  %380 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %381 = call i32 @do_write(%struct.fsg_dev* %380)
  store i32 %381, i32* %6, align 4
  br label %382

382:                                              ; preds = %379, %366
  br label %410

383:                                              ; preds = %31, %31, %31, %31
  br label %384

384:                                              ; preds = %31, %383
  br label %385

385:                                              ; preds = %384, %234, %213
  %386 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %387 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %386, i32 0, i32 1
  store i32 0, i32* %387, align 8
  %388 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %389 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @do_scsi_command.unknown, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %392)
  %394 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %395 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %396 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = load i64, i64* @DATA_DIR_UNKNOWN, align 8
  %399 = call i32 @check_command(%struct.fsg_dev* %394, i32 %397, i64 %398, i32 255, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @do_scsi_command.unknown, i64 0, i64 0))
  store i32 %399, i32* %6, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %385
  %402 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %403 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %404 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %403, i32 0, i32 6
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  store i32 %402, i32* %406, align 4
  %407 = load i32, i32* @EINVAL, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %6, align 4
  br label %409

409:                                              ; preds = %401, %385
  br label %410

410:                                              ; preds = %409, %382, %365, %348, %324, %308, %307, %296, %285, %268, %251, %230, %209, %197, %180, %163, %139, %128, %111, %94, %77, %60
  %411 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %412 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %411, i32 0, i32 5
  %413 = call i32 @up_read(i32* %412)
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* @EINTR, align 4
  %416 = sub nsw i32 0, %415
  %417 = icmp eq i32 %414, %416
  br i1 %417, label %422, label %418

418:                                              ; preds = %410
  %419 = load i32, i32* @current, align 4
  %420 = call i64 @signal_pending(i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %418, %410
  %423 = load i32, i32* @EINTR, align 4
  %424 = sub nsw i32 0, %423
  store i32 %424, i32* %2, align 4
  br label %460

425:                                              ; preds = %418
  %426 = load i32, i32* %6, align 4
  %427 = load i32, i32* @EINVAL, align 4
  %428 = sub nsw i32 0, %427
  %429 = icmp eq i32 %426, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store i32 0, i32* %6, align 4
  br label %431

431:                                              ; preds = %430, %425
  %432 = load i32, i32* %6, align 4
  %433 = icmp sge i32 %432, 0
  br i1 %433, label %434, label %459

434:                                              ; preds = %431
  %435 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %436 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %459

440:                                              ; preds = %434
  %441 = load i32, i32* %6, align 4
  %442 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %443 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @min(i32 %441, i32 %444)
  store i32 %445, i32* %6, align 4
  %446 = load i32, i32* %6, align 4
  %447 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %448 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %447, i32 0, i32 1
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  store i32 %446, i32* %450, align 4
  %451 = load i64, i64* @BUF_STATE_FULL, align 8
  %452 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %453 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %452, i32 0, i32 0
  store i64 %451, i64* %453, align 8
  %454 = load i32, i32* %6, align 4
  %455 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %456 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = sub nsw i32 %457, %454
  store i32 %458, i32* %456, align 8
  br label %459

459:                                              ; preds = %440, %434, %431
  store i32 0, i32* %2, align 4
  br label %460

460:                                              ; preds = %459, %422, %28
  %461 = load i32, i32* %2, align 4
  ret i32 %461
}

declare dso_local i32 @dump_cdb(%struct.fsg_dev*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @check_command(%struct.fsg_dev*, i32, i64, i32, i32, i8*) #1

declare dso_local i32 @do_inquiry(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_mode_select(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @do_mode_sense(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_prevent_allow(%struct.fsg_dev*) #1

declare dso_local i32 @do_read(%struct.fsg_dev*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @do_read_capacity(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_read_header(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_read_toc(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_read_format_capacities(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_request_sense(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_start_stop(%struct.fsg_dev*) #1

declare dso_local i32 @do_synchronize_cache(%struct.fsg_dev*) #1

declare dso_local i32 @do_verify(%struct.fsg_dev*) #1

declare dso_local i32 @do_write(%struct.fsg_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
