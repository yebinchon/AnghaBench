; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_dev_add_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_dev_add_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_device = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.uio_mem*, %struct.uio_port* }
%struct.uio_mem = type { i64, %struct.uio_map* }
%struct.uio_map = type { i32, %struct.uio_mem* }
%struct.uio_port = type { i64, %struct.uio_portio* }
%struct.uio_portio = type { i32, %struct.uio_port* }

@uio_attr_grp = common dso_local global i32 0, align 4
@MAX_UIO_MAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@map_attr_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"map%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@MAX_UIO_PORT_REGIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"portio\00", align 1
@portio_attr_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"error creating sysfs files (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_device*)* @uio_dev_add_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_dev_add_attributes(%struct.uio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uio_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uio_mem*, align 8
  %10 = alloca %struct.uio_map*, align 8
  %11 = alloca %struct.uio_port*, align 8
  %12 = alloca %struct.uio_portio*, align 8
  store %struct.uio_device* %0, %struct.uio_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %14 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @sysfs_create_group(i32* %16, i32* @uio_attr_grp)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %237

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %94, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAX_UIO_MAPS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %22
  %27 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %28 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.uio_mem*, %struct.uio_mem** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %31, i64 %33
  store %struct.uio_mem* %34, %struct.uio_mem** %9, align 8
  %35 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %36 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %97

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  %44 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %45 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %51 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %53 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %203

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kzalloc(i32 16, i32 %59)
  %61 = bitcast i8* %60 to %struct.uio_map*
  store %struct.uio_map* %61, %struct.uio_map** %10, align 8
  %62 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %63 = icmp ne %struct.uio_map* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %203

65:                                               ; preds = %58
  %66 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %67 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %66, i32 0, i32 0
  %68 = call i32 @kobject_init(i32* %67, i32* @map_attr_type)
  %69 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %70 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %71 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %70, i32 0, i32 1
  store %struct.uio_mem* %69, %struct.uio_mem** %71, align 8
  %72 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %73 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %74 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %73, i32 0, i32 1
  store %struct.uio_map* %72, %struct.uio_map** %74, align 8
  %75 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %76 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %75, i32 0, i32 0
  %77 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %78 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @kobject_add(i32* %76, i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %203

85:                                               ; preds = %65
  %86 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %87 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %86, i32 0, i32 0
  %88 = load i32, i32* @KOBJ_ADD, align 4
  %89 = call i32 @kobject_uevent(i32* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %203

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %22

97:                                               ; preds = %39, %22
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %170, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @MAX_UIO_PORT_REGIONS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %173

102:                                              ; preds = %98
  %103 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %104 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.uio_port*, %struct.uio_port** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %107, i64 %109
  store %struct.uio_port* %110, %struct.uio_port** %11, align 8
  %111 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %112 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %173

116:                                              ; preds = %102
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %116
  store i32 1, i32* %8, align 4
  %120 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %121 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %127 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %129 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %119
  br label %174

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @kzalloc(i32 16, i32 %135)
  %137 = bitcast i8* %136 to %struct.uio_portio*
  store %struct.uio_portio* %137, %struct.uio_portio** %12, align 8
  %138 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %139 = icmp ne %struct.uio_portio* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %174

141:                                              ; preds = %134
  %142 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %143 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %142, i32 0, i32 0
  %144 = call i32 @kobject_init(i32* %143, i32* @portio_attr_type)
  %145 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %146 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %147 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %146, i32 0, i32 1
  store %struct.uio_port* %145, %struct.uio_port** %147, align 8
  %148 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %149 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %150 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %149, i32 0, i32 1
  store %struct.uio_portio* %148, %struct.uio_portio** %150, align 8
  %151 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %152 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %151, i32 0, i32 0
  %153 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %154 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @kobject_add(i32* %152, i32* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  br label %174

161:                                              ; preds = %141
  %162 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %163 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %162, i32 0, i32 0
  %164 = load i32, i32* @KOBJ_ADD, align 4
  %165 = call i32 @kobject_uevent(i32* %163, i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %174

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %98

173:                                              ; preds = %115, %98
  store i32 0, i32* %2, align 4
  br label %244

174:                                              ; preds = %168, %160, %140, %132
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %195, %174
  %178 = load i32, i32* %6, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %182 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %181, i32 0, i32 2
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load %struct.uio_port*, %struct.uio_port** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %185, i64 %187
  store %struct.uio_port* %188, %struct.uio_port** %11, align 8
  %189 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %190 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %189, i32 0, i32 1
  %191 = load %struct.uio_portio*, %struct.uio_portio** %190, align 8
  store %struct.uio_portio* %191, %struct.uio_portio** %12, align 8
  %192 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %193 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %192, i32 0, i32 0
  %194 = call i32 @kobject_put(i32* %193)
  br label %195

195:                                              ; preds = %180
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %6, align 4
  br label %177

198:                                              ; preds = %177
  %199 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %200 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @kobject_put(i32* %201)
  br label %203

203:                                              ; preds = %198, %92, %84, %64, %56
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %224, %203
  %207 = load i32, i32* %5, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  %210 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %211 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %210, i32 0, i32 2
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load %struct.uio_mem*, %struct.uio_mem** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %214, i64 %216
  store %struct.uio_mem* %217, %struct.uio_mem** %9, align 8
  %218 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %219 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %218, i32 0, i32 1
  %220 = load %struct.uio_map*, %struct.uio_map** %219, align 8
  store %struct.uio_map* %220, %struct.uio_map** %10, align 8
  %221 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %222 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %221, i32 0, i32 0
  %223 = call i32 @kobject_put(i32* %222)
  br label %224

224:                                              ; preds = %209
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %5, align 4
  br label %206

227:                                              ; preds = %206
  %228 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %229 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @kobject_put(i32* %230)
  %232 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %233 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %232, i32 0, i32 0
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = call i32 @sysfs_remove_group(i32* %235, i32* @uio_attr_grp)
  br label %237

237:                                              ; preds = %227, %20
  %238 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %239 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @dev_err(%struct.TYPE_4__* %240, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %237, %173
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i8* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @kobject_add(i32*, i32*, i8*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
