; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_do_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_do_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_insn = type { i32, i32*, i32, i64, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i64, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*, %struct.comedi_insn.1*, i32*)*, i32 (%struct.comedi_device.2*, %struct.comedi_subdevice*, %struct.comedi_insn.3*, i32*)*, i32 (%struct.comedi_device.4*, %struct.comedi_subdevice*, %struct.comedi_insn.5*, i32*)*, i32 (%struct.comedi_device.6*, %struct.comedi_subdevice*, %struct.comedi_insn.7*, i32*)*, i32*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.comedi_insn.1 = type opaque
%struct.comedi_device.2 = type opaque
%struct.comedi_insn.3 = type opaque
%struct.comedi_device.4 = type opaque
%struct.comedi_insn.5 = type opaque
%struct.comedi_device.6 = type opaque
%struct.comedi_insn.7 = type opaque
%struct.TYPE_2__ = type { i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.timeval = type { i32, i32 }

@INSN_MASK_SPECIAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d not usable subdevice\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no async\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"no inttrig\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"%d not useable subdevice\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"bad chanspec\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_do_insn(i8* %0, %struct.comedi_insn* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comedi_insn*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  store i8* %0, i8** %3, align 8
  store %struct.comedi_insn* %1, %struct.comedi_insn** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.comedi_device*
  store %struct.comedi_device* %10, %struct.comedi_device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @INSN_MASK_SPECIAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %129

17:                                               ; preds = %2
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %125 [
    i32 132, label %21
    i32 129, label %35
    i32 131, label %57
  ]

21:                                               ; preds = %17
  %22 = call i32 @do_gettimeofday(%struct.timeval* %8)
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %30, i32* %34, align 4
  store i32 2, i32* %7, align 4
  br label %128

35:                                               ; preds = %17
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 100
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %128

50:                                               ; preds = %40
  %51 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @udelay(i32 %55)
  store i32 1, i32* %7, align 4
  br label %128

57:                                               ; preds = %17
  %58 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %59 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %128

65:                                               ; preds = %57
  %66 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %128

80:                                               ; preds = %65
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 1
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %82, align 8
  %84 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i64 %86
  store %struct.comedi_subdevice* %87, %struct.comedi_subdevice** %6, align 8
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 6
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = icmp ne %struct.TYPE_2__* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %80
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %128

96:                                               ; preds = %80
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i32 0, i32 6
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %128

107:                                              ; preds = %96
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 6
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %111, align 8
  %113 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %115 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %116 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 %112(%struct.comedi_device* %113, %struct.comedi_subdevice* %114, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %107
  br label %128

125:                                              ; preds = %17
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %125, %124, %103, %92, %73, %62, %50, %47, %21
  br label %245

129:                                              ; preds = %2
  %130 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %131 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %7, align 4
  br label %250

140:                                              ; preds = %129
  %141 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 1
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %142, align 8
  %144 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %145 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i64 %146
  store %struct.comedi_subdevice* %147, %struct.comedi_subdevice** %6, align 8
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %149 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %140
  %154 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %155 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %156)
  %158 = load i32, i32* @EIO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %7, align 4
  br label %250

160:                                              ; preds = %140
  %161 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %162 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %163 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %162, i32 0, i32 4
  %164 = call i32 @check_chanlist(%struct.comedi_subdevice* %161, i32 1, i32* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %250

171:                                              ; preds = %160
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %173 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* @EBUSY, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %7, align 4
  br label %250

179:                                              ; preds = %171
  %180 = load i8*, i8** %3, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %183 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %182, i32 0, i32 5
  store i32* %181, i32** %183, align 8
  %184 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %185 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %239 [
    i32 130, label %187
    i32 128, label %200
    i32 134, label %213
    i32 133, label %226
  ]

187:                                              ; preds = %179
  %188 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %189 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %188, i32 0, i32 1
  %190 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*, %struct.comedi_insn.1*, i32*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*, %struct.comedi_insn.1*, i32*)** %189, align 8
  %191 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %192 = bitcast %struct.comedi_device* %191 to %struct.comedi_device.0*
  %193 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %194 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %195 = bitcast %struct.comedi_insn* %194 to %struct.comedi_insn.1*
  %196 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %197 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 %190(%struct.comedi_device.0* %192, %struct.comedi_subdevice* %193, %struct.comedi_insn.1* %195, i32* %198)
  store i32 %199, i32* %7, align 4
  br label %242

200:                                              ; preds = %179
  %201 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %202 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %201, i32 0, i32 2
  %203 = load i32 (%struct.comedi_device.2*, %struct.comedi_subdevice*, %struct.comedi_insn.3*, i32*)*, i32 (%struct.comedi_device.2*, %struct.comedi_subdevice*, %struct.comedi_insn.3*, i32*)** %202, align 8
  %204 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %205 = bitcast %struct.comedi_device* %204 to %struct.comedi_device.2*
  %206 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %207 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %208 = bitcast %struct.comedi_insn* %207 to %struct.comedi_insn.3*
  %209 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %210 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 %203(%struct.comedi_device.2* %205, %struct.comedi_subdevice* %206, %struct.comedi_insn.3* %208, i32* %211)
  store i32 %212, i32* %7, align 4
  br label %242

213:                                              ; preds = %179
  %214 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %215 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %214, i32 0, i32 3
  %216 = load i32 (%struct.comedi_device.4*, %struct.comedi_subdevice*, %struct.comedi_insn.5*, i32*)*, i32 (%struct.comedi_device.4*, %struct.comedi_subdevice*, %struct.comedi_insn.5*, i32*)** %215, align 8
  %217 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %218 = bitcast %struct.comedi_device* %217 to %struct.comedi_device.4*
  %219 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %220 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %221 = bitcast %struct.comedi_insn* %220 to %struct.comedi_insn.5*
  %222 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %223 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 %216(%struct.comedi_device.4* %218, %struct.comedi_subdevice* %219, %struct.comedi_insn.5* %221, i32* %224)
  store i32 %225, i32* %7, align 4
  br label %242

226:                                              ; preds = %179
  %227 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %228 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %227, i32 0, i32 4
  %229 = load i32 (%struct.comedi_device.6*, %struct.comedi_subdevice*, %struct.comedi_insn.7*, i32*)*, i32 (%struct.comedi_device.6*, %struct.comedi_subdevice*, %struct.comedi_insn.7*, i32*)** %228, align 8
  %230 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %231 = bitcast %struct.comedi_device* %230 to %struct.comedi_device.6*
  %232 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %233 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %234 = bitcast %struct.comedi_insn* %233 to %struct.comedi_insn.7*
  %235 = load %struct.comedi_insn*, %struct.comedi_insn** %4, align 8
  %236 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 %229(%struct.comedi_device.6* %231, %struct.comedi_subdevice* %232, %struct.comedi_insn.7* %234, i32* %237)
  store i32 %238, i32* %7, align 4
  br label %242

239:                                              ; preds = %179
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %239, %226, %213, %200, %187
  %243 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %244 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %243, i32 0, i32 5
  store i32* null, i32** %244, align 8
  br label %245

245:                                              ; preds = %242, %128
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %250

249:                                              ; preds = %245
  br label %250

250:                                              ; preds = %249, %248, %176, %167, %153, %137
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @check_chanlist(%struct.comedi_subdevice*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
