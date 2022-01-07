; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_scsiglue.c_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_scsiglue.c_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.us_data = type { i32, i64, i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@US_FL_MAX_SECTORS_64 = common dso_local global i32 0, align 4
@US_FL_MAX_SECTORS_MIN = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@TYPE_TAPE = common dso_local global i64 0, align 8
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@US_FL_FIX_CAPACITY = common dso_local global i32 0, align 4
@US_FL_CAPACITY_OK = common dso_local global i32 0, align 4
@US_FL_CAPACITY_HEURISTICS = common dso_local global i32 0, align 4
@US_SC_SCSI = common dso_local global i64 0, align 8
@US_SC_CYP_ATACB = common dso_local global i64 0, align 8
@US_FL_NO_WP_DETECT = common dso_local global i32 0, align 4
@SCSI_SPC_2 = common dso_local global i64 0, align 8
@US_FL_SANE_SENSE = common dso_local global i32 0, align 4
@SCSI_2 = common dso_local global i64 0, align 8
@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4
@US_PR_BULK = common dso_local global i64 0, align 8
@US_PR_CB = common dso_local global i64 0, align 8
@US_PR_CBI = common dso_local global i64 0, align 8
@SCSI_UNKNOWN = common dso_local global i64 0, align 8
@US_FL_NOT_LOCKABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.us_data* @host_to_us(i32 %7)
  store %struct.us_data* %8, %struct.us_data** %3, align 8
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @US_FL_MAX_SECTORS_64, align 4
  %13 = load i32, i32* @US_FL_MAX_SECTORS_MIN, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  store i32 64, i32* %4, align 4
  %18 = load %struct.us_data*, %struct.us_data** %3, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @US_FL_MAX_SECTORS_MIN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %26 = ashr i32 %25, 9
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @queue_max_hw_sectors(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @blk_queue_max_hw_sectors(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  br label %53

41:                                               ; preds = %1
  %42 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TYPE_TAPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @blk_queue_max_hw_sectors(i32 %50, i32 8388607)
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.us_data*, %struct.us_data** %3, align 8
  %55 = getelementptr inbounds %struct.us_data, %struct.us_data* %54, i32 0, i32 5
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %69 = call i32 @blk_queue_bounce_limit(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %53
  %71 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TYPE_DISK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %202

76:                                               ; preds = %70
  %77 = load %struct.us_data*, %struct.us_data** %3, align 8
  %78 = getelementptr inbounds %struct.us_data, %struct.us_data* %77, i32 0, i32 5
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le16_to_cpu(i32 %82)
  switch i32 %83, label %100 [
    i32 129, label %84
    i32 130, label %84
    i32 128, label %84
    i32 131, label %84
  ]

84:                                               ; preds = %76, %76, %76, %76
  %85 = load %struct.us_data*, %struct.us_data** %3, align 8
  %86 = getelementptr inbounds %struct.us_data, %struct.us_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %89 = load i32, i32* @US_FL_CAPACITY_OK, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @US_FL_CAPACITY_HEURISTICS, align 4
  %95 = load %struct.us_data*, %struct.us_data** %3, align 8
  %96 = getelementptr inbounds %struct.us_data, %struct.us_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %84
  br label %100

100:                                              ; preds = %76, %99
  %101 = load %struct.us_data*, %struct.us_data** %3, align 8
  %102 = getelementptr inbounds %struct.us_data, %struct.us_data* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @US_SC_SCSI, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.us_data*, %struct.us_data** %3, align 8
  %108 = getelementptr inbounds %struct.us_data, %struct.us_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @US_SC_CYP_ATACB, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 1
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %106, %100
  %116 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %117 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %116, i32 0, i32 2
  store i32 1, i32* %117, align 4
  %118 = load %struct.us_data*, %struct.us_data** %3, align 8
  %119 = getelementptr inbounds %struct.us_data, %struct.us_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @US_FL_NO_WP_DETECT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %126 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %125, i32 0, i32 3
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %115
  %128 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %129 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %128, i32 0, i32 4
  store i32 1, i32* %129, align 4
  %130 = load %struct.us_data*, %struct.us_data** %3, align 8
  %131 = getelementptr inbounds %struct.us_data, %struct.us_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %138 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %137, i32 0, i32 5
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %127
  %140 = load %struct.us_data*, %struct.us_data** %3, align 8
  %141 = getelementptr inbounds %struct.us_data, %struct.us_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @US_FL_CAPACITY_HEURISTICS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %148 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %147, i32 0, i32 6
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %139
  %150 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %151 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SCSI_SPC_2, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %157 = load %struct.us_data*, %struct.us_data** %3, align 8
  %158 = getelementptr inbounds %struct.us_data, %struct.us_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %149
  %162 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %163 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SCSI_2, align 8
  %166 = icmp sgt i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load i64, i64* @SCSI_2, align 8
  %169 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %170 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %169, i32 0, i32 7
  store i64 %168, i64* %170, align 8
  %171 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %172 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %171, i32 0, i32 12
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i64 %168, i64* %174, align 8
  br label %175

175:                                              ; preds = %167, %161
  %176 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %177 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %176, i32 0, i32 8
  store i32 1, i32* %177, align 8
  %178 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %179 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %178, i32 0, i32 9
  store i32 1, i32* %179, align 4
  %180 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %181 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %180, i32 0, i32 10
  store i32 1, i32* %181, align 8
  %182 = load %struct.us_data*, %struct.us_data** %3, align 8
  %183 = getelementptr inbounds %struct.us_data, %struct.us_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %186 = load i32, i32* @US_FL_CAPACITY_OK, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %184, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %175
  %193 = load %struct.us_data*, %struct.us_data** %3, align 8
  %194 = getelementptr inbounds %struct.us_data, %struct.us_data* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @US_PR_BULK, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.us_data*, %struct.us_data** %3, align 8
  %200 = getelementptr inbounds %struct.us_data, %struct.us_data* %199, i32 0, i32 3
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %198, %192, %175
  br label %205

202:                                              ; preds = %70
  %203 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %204 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %203, i32 0, i32 1
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %201
  %206 = load %struct.us_data*, %struct.us_data** %3, align 8
  %207 = getelementptr inbounds %struct.us_data, %struct.us_data* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @US_PR_CB, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load %struct.us_data*, %struct.us_data** %3, align 8
  %213 = getelementptr inbounds %struct.us_data, %struct.us_data* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @US_PR_CBI, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %211, %205
  %218 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %219 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SCSI_UNKNOWN, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load %struct.us_data*, %struct.us_data** %3, align 8
  %225 = getelementptr inbounds %struct.us_data, %struct.us_data* %224, i32 0, i32 4
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %223, %217, %211
  %227 = load %struct.us_data*, %struct.us_data** %3, align 8
  %228 = getelementptr inbounds %struct.us_data, %struct.us_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @US_FL_NOT_LOCKABLE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %235 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %234, i32 0, i32 11
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %226
  ret i32 0
}

declare dso_local %struct.us_data* @host_to_us(i32) #1

declare dso_local i32 @queue_max_hw_sectors(i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
