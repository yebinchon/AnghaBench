; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_parse_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_parse_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i64, i8*, i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)*, i32 (%struct.comedi_device.1*, %struct.comedi_subdevice*, %struct.comedi_insn.2*, i32*)*, i32*, i32, i32 (%struct.comedi_device.3*, %struct.comedi_subdevice*, %struct.comedi_insn.4*, i32*)*, i32 (%struct.comedi_device.5*, %struct.comedi_subdevice*, %struct.comedi_insn.6*, i32*)*, i32 (%struct.comedi_device.7*, %struct.comedi_subdevice*, %struct.comedi_insn.8*, i32*)*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.comedi_insn = type opaque
%struct.comedi_device.1 = type opaque
%struct.comedi_insn.2 = type opaque
%struct.comedi_device.3 = type opaque
%struct.comedi_insn.4 = type opaque
%struct.comedi_device.5 = type opaque
%struct.comedi_insn.6 = type opaque
%struct.comedi_device.7 = type opaque
%struct.comedi_insn.8 = type opaque
%struct.TYPE_2__ = type { i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_insn.9 = type { i32, i32, i64, i32, i32* }
%struct.timeval = type { i32, i32 }

@INSN_MASK_SPECIAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d not usable subdevice\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no async\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"no inttrig\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid insn\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"subdevice %d out of range\0A\00", align 1
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"device locked\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"bad chanspec\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"bad data value(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_insn.9*, i32*, i8*)* @parse_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_insn(%struct.comedi_device* %0, %struct.comedi_insn.9* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_insn.9*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_insn.9* %1, %struct.comedi_insn.9** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @INSN_MASK_SPECIAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %134

20:                                               ; preds = %4
  %21 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %129 [
    i32 132, label %24
    i32 129, label %42
    i32 131, label %61
  ]

24:                                               ; preds = %20
  %25 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %133

32:                                               ; preds = %24
  %33 = call i32 @do_gettimeofday(%struct.timeval* %12)
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  store i32 2, i32* %10, align 4
  br label %133

42:                                               ; preds = %20
  %43 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %50, 100000
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %133

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = udiv i32 %58, 1000
  %60 = call i32 @udelay(i32 %59)
  store i32 1, i32* %10, align 4
  br label %133

61:                                               ; preds = %20
  %62 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %133

69:                                               ; preds = %61
  %70 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %133

84:                                               ; preds = %69
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 1
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %86, align 8
  %88 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i64 %90
  store %struct.comedi_subdevice* %91, %struct.comedi_subdevice** %9, align 8
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 9
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %133

100:                                              ; preds = %84
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 9
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %133

111:                                              ; preds = %100
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %113 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 9
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %115, align 8
  %117 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %119 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %120 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 %116(%struct.comedi_device* %117, %struct.comedi_subdevice* %118, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  store i32 1, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %111
  br label %133

129:                                              ; preds = %20
  %130 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %128, %107, %96, %77, %66, %55, %52, %32, %29
  br label %321

134:                                              ; preds = %4
  %135 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %136 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %144 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %10, align 4
  br label %322

149:                                              ; preds = %134
  %150 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 1
  %152 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %151, align 8
  %153 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %154 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %152, i64 %155
  store %struct.comedi_subdevice* %156, %struct.comedi_subdevice** %9, align 8
  %157 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %158 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %149
  %163 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %164 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %165)
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %322

169:                                              ; preds = %149
  %170 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %171 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %176 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = icmp ne i8* %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %182 = load i32, i32* @EACCES, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %10, align 4
  br label %322

184:                                              ; preds = %174, %169
  %185 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %186 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %187 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %186, i32 0, i32 3
  %188 = call i32 @check_chanlist(%struct.comedi_subdevice* %185, i32 1, i32* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %10, align 4
  %194 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %322

195:                                              ; preds = %184
  %196 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %197 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %196, i32 0, i32 2
  %198 = load i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)*, i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)** %197, align 8
  %199 = icmp ne i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* @EBUSY, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %322

203:                                              ; preds = %195
  %204 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %205 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %204, i32 0, i32 2
  store i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)* bitcast (i32 (%struct.comedi_device*, %struct.comedi_insn.9*, i32*, i8*)* @parse_insn to i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)*), i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)** %205, align 8
  %206 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %207 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %315 [
    i32 130, label %209
    i32 128, label %220
    i32 134, label %278
    i32 133, label %297
  ]

209:                                              ; preds = %203
  %210 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %211 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %210, i32 0, i32 3
  %212 = load i32 (%struct.comedi_device.1*, %struct.comedi_subdevice*, %struct.comedi_insn.2*, i32*)*, i32 (%struct.comedi_device.1*, %struct.comedi_subdevice*, %struct.comedi_insn.2*, i32*)** %211, align 8
  %213 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %214 = bitcast %struct.comedi_device* %213 to %struct.comedi_device.1*
  %215 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %216 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %217 = bitcast %struct.comedi_insn.9* %216 to %struct.comedi_insn.2*
  %218 = load i32*, i32** %7, align 8
  %219 = call i32 %212(%struct.comedi_device.1* %214, %struct.comedi_subdevice* %215, %struct.comedi_insn.2* %217, i32* %218)
  store i32 %219, i32* %10, align 4
  br label %318

220:                                              ; preds = %203
  %221 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %222 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %235

225:                                              ; preds = %220
  %226 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %227 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %230 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @CR_CHAN(i32 %231)
  %233 = getelementptr inbounds i32, i32* %228, i64 %232
  %234 = load i32, i32* %233, align 4
  br label %239

235:                                              ; preds = %220
  %236 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %237 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  br label %239

239:                                              ; preds = %235, %225
  %240 = phi i32 [ %234, %225 ], [ %238, %235 ]
  store i32 %240, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %241

241:                                              ; preds = %260, %239
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %244 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %241
  %248 = load i32*, i32** %7, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp ugt i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %247
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %10, align 4
  %258 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %263

259:                                              ; preds = %247
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %241

263:                                              ; preds = %255, %241
  %264 = load i32, i32* %10, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %263
  %267 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %268 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %267, i32 0, i32 6
  %269 = load i32 (%struct.comedi_device.3*, %struct.comedi_subdevice*, %struct.comedi_insn.4*, i32*)*, i32 (%struct.comedi_device.3*, %struct.comedi_subdevice*, %struct.comedi_insn.4*, i32*)** %268, align 8
  %270 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %271 = bitcast %struct.comedi_device* %270 to %struct.comedi_device.3*
  %272 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %273 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %274 = bitcast %struct.comedi_insn.9* %273 to %struct.comedi_insn.4*
  %275 = load i32*, i32** %7, align 8
  %276 = call i32 %269(%struct.comedi_device.3* %271, %struct.comedi_subdevice* %272, %struct.comedi_insn.4* %274, i32* %275)
  store i32 %276, i32* %10, align 4
  br label %277

277:                                              ; preds = %266, %263
  br label %318

278:                                              ; preds = %203
  %279 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %280 = getelementptr inbounds %struct.comedi_insn.9, %struct.comedi_insn.9* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 2
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load i32, i32* @EINVAL, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %10, align 4
  br label %318

286:                                              ; preds = %278
  %287 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %288 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %287, i32 0, i32 7
  %289 = load i32 (%struct.comedi_device.5*, %struct.comedi_subdevice*, %struct.comedi_insn.6*, i32*)*, i32 (%struct.comedi_device.5*, %struct.comedi_subdevice*, %struct.comedi_insn.6*, i32*)** %288, align 8
  %290 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %291 = bitcast %struct.comedi_device* %290 to %struct.comedi_device.5*
  %292 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %293 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %294 = bitcast %struct.comedi_insn.9* %293 to %struct.comedi_insn.6*
  %295 = load i32*, i32** %7, align 8
  %296 = call i32 %289(%struct.comedi_device.5* %291, %struct.comedi_subdevice* %292, %struct.comedi_insn.6* %294, i32* %295)
  store i32 %296, i32* %10, align 4
  br label %318

297:                                              ; preds = %203
  %298 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = call i32 @check_insn_config_length(%struct.comedi_insn.9* %298, i32* %299)
  store i32 %300, i32* %10, align 4
  %301 = load i32, i32* %10, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %297
  br label %318

304:                                              ; preds = %297
  %305 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %306 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %305, i32 0, i32 8
  %307 = load i32 (%struct.comedi_device.7*, %struct.comedi_subdevice*, %struct.comedi_insn.8*, i32*)*, i32 (%struct.comedi_device.7*, %struct.comedi_subdevice*, %struct.comedi_insn.8*, i32*)** %306, align 8
  %308 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %309 = bitcast %struct.comedi_device* %308 to %struct.comedi_device.7*
  %310 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %311 = load %struct.comedi_insn.9*, %struct.comedi_insn.9** %6, align 8
  %312 = bitcast %struct.comedi_insn.9* %311 to %struct.comedi_insn.8*
  %313 = load i32*, i32** %7, align 8
  %314 = call i32 %307(%struct.comedi_device.7* %309, %struct.comedi_subdevice* %310, %struct.comedi_insn.8* %312, i32* %313)
  store i32 %314, i32* %10, align 4
  br label %318

315:                                              ; preds = %203
  %316 = load i32, i32* @EINVAL, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %10, align 4
  br label %318

318:                                              ; preds = %315, %304, %303, %286, %283, %277, %209
  %319 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %320 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %319, i32 0, i32 2
  store i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)* null, i32 (%struct.comedi_device.0*, %struct.comedi_insn*, i32*, i8*)** %320, align 8
  br label %321

321:                                              ; preds = %318, %133
  br label %322

322:                                              ; preds = %321, %200, %191, %180, %162, %142
  %323 = load i32, i32* %10, align 4
  ret i32 %323
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @check_chanlist(%struct.comedi_subdevice*, i32, i32*) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @check_insn_config_length(%struct.comedi_insn.9*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
