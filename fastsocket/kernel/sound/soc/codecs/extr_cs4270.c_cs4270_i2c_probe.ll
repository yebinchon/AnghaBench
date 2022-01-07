; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i8*, i32, i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)*, i32, i32, %struct.i2c_client*, %struct.cs4270_private*, %struct.TYPE_3__*, i32, i32*, i32, i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.cs4270_private = type { i32, %struct.snd_soc_codec }
%struct.TYPE_3__ = type { i32* }
%struct.i2c_device_id = type { i32 }

@cs4270_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"ignoring CS4270 at addr %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"only one per board allowed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CS4270_CHIPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to read i2c at addr %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"device at addr %X is not a CS4270\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"found device at i2c address %X\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"hardware revision %X\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"could not allocate codec\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"CS4270\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@cs4270_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CS4270_NUMREGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to fill register cache\0A\00", align 1
@CS4270_MUTE = common dso_local global i32 0, align 4
@CS4270_MUTE_AUTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"i2c write failed\0A\00", align 1
@CS4270_TRANS = common dso_local global i32 0, align 4
@CS4270_TRANS_SOFT = common dso_local global i32 0, align 4
@CS4270_TRANS_ZERO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"failed to register DAIe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs4270_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.cs4270_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @cs4270_codec, align 8
  %11 = icmp ne %struct.snd_soc_codec* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %183

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @CS4270_CHIPID, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %183

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 240
  %41 = icmp ne i32 %40, 192
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %183

51:                                               ; preds = %38
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 15
  %62 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.cs4270_private* @kzalloc(i32 104, i32 %63)
  store %struct.cs4270_private* %64, %struct.cs4270_private** %7, align 8
  %65 = load %struct.cs4270_private*, %struct.cs4270_private** %7, align 8
  %66 = icmp ne %struct.cs4270_private* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %51
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %183

73:                                               ; preds = %51
  %74 = load %struct.cs4270_private*, %struct.cs4270_private** %7, align 8
  %75 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %74, i32 0, i32 1
  store %struct.snd_soc_codec* %75, %struct.snd_soc_codec** %6, align 8
  %76 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %77 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %76, i32 0, i32 13
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %80 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %79, i32 0, i32 12
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %83 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %82, i32 0, i32 11
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 1
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %88 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %87, i32 0, i32 10
  store i32* %86, i32** %88, align 8
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %90 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %90, align 8
  %91 = load i32, i32* @THIS_MODULE, align 4
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %93 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %95 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %94, i32 0, i32 8
  store %struct.TYPE_3__* @cs4270_dai, %struct.TYPE_3__** %95, align 8
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %97 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %96, i32 0, i32 1
  store i32 1, i32* %97, align 8
  %98 = load %struct.cs4270_private*, %struct.cs4270_private** %7, align 8
  %99 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %100 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %99, i32 0, i32 7
  store %struct.cs4270_private* %98, %struct.cs4270_private** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %103 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %102, i32 0, i32 6
  store %struct.i2c_client* %101, %struct.i2c_client** %103, align 8
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %105 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %104, i32 0, i32 2
  store i32 (%struct.snd_soc_codec*, i32)* @cs4270_read_reg_cache, i32 (%struct.snd_soc_codec*, i32)** %105, align 8
  %106 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %107 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %106, i32 0, i32 3
  store i32 (%struct.snd_soc_codec*, i32, i32)* @cs4270_i2c_write, i32 (%struct.snd_soc_codec*, i32, i32)** %107, align 8
  %108 = load %struct.cs4270_private*, %struct.cs4270_private** %7, align 8
  %109 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %112 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @CS4270_NUMREGS, align 4
  %114 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %115 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %117 = call i32 @cs4270_fill_cache(%struct.snd_soc_codec* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %73
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 1
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %179

124:                                              ; preds = %73
  %125 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %126 = load i32, i32* @CS4270_MUTE, align 4
  %127 = call i32 @cs4270_read_reg_cache(%struct.snd_soc_codec* %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* @CS4270_MUTE_AUTO, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %133 = load i32, i32* @CS4270_MUTE, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @cs4270_i2c_write(%struct.snd_soc_codec* %132, i32 %133, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %124
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %183

143:                                              ; preds = %124
  %144 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %145 = load i32, i32* @CS4270_TRANS, align 4
  %146 = call i32 @cs4270_read_reg_cache(%struct.snd_soc_codec* %144, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @CS4270_TRANS_SOFT, align 4
  %148 = load i32, i32* @CS4270_TRANS_ZERO, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %154 = load i32, i32* @CS4270_TRANS, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @cs4270_i2c_write(%struct.snd_soc_codec* %153, i32 %154, i32 %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %143
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 1
  %162 = call i32 (i32*, i8*, ...) @dev_err(i32* %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %183

164:                                              ; preds = %143
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 1
  store i32* %166, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cs4270_dai, i32 0, i32 0), align 8
  %167 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  store %struct.snd_soc_codec* %167, %struct.snd_soc_codec** @cs4270_codec, align 8
  %168 = call i32 @snd_soc_register_dai(%struct.TYPE_3__* @cs4270_dai)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %179

175:                                              ; preds = %164
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = load %struct.cs4270_private*, %struct.cs4270_private** %7, align 8
  %178 = call i32 @i2c_set_clientdata(%struct.i2c_client* %176, %struct.cs4270_private* %177)
  store i32 0, i32* %3, align 4
  br label %183

179:                                              ; preds = %171, %120
  %180 = load %struct.cs4270_private*, %struct.cs4270_private** %7, align 8
  %181 = call i32 @kfree(%struct.cs4270_private* %180)
  store %struct.snd_soc_codec* null, %struct.snd_soc_codec** @cs4270_codec, align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cs4270_dai, i32 0, i32 0), align 8
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %179, %175, %159, %138, %67, %42, %30, %12
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.cs4270_private* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cs4270_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @cs4270_i2c_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @cs4270_fill_cache(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cs4270_private*) #1

declare dso_local i32 @kfree(%struct.cs4270_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
