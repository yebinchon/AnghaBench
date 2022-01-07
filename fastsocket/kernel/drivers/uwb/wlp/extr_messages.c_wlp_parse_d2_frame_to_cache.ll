; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_d2_frame_to_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_d2_frame_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64, i8* }
%struct.wlp_neighbor_e = type { %struct.wlp_device_info*, i32 }
%struct.wlp_device_info = type { i32 }
%struct.wlp_frame_assoc = type { i32 }
%struct.wlp_uuid = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"WLP: unable to obtain UUID-E attribute from D2 message.\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"WLP: UUID-E in incoming D2 does not match local UUID sent in D1. \0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"WLP: unable to obtain UUID-R attribute from D2 message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"WLP: unable to obtain WSS information from D2 message.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"WLP: cannot allocate memory to store device info.\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"WLP: unable to obtain Device Name from D2 message.\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"WLP: unable to obtain Device Information from D2 message.\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"WLP: unable to obtain WLP Association Error Information from D2 message.\0A\00", align 1
@WLP_ASSOC_ERROR_NONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"WLP: neighbor device returned association error %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_parse_d2_frame_to_cache(%struct.wlp* %0, %struct.sk_buff* %1, %struct.wlp_neighbor_e* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wlp_neighbor_e*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wlp_frame_assoc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wlp_uuid, align 4
  %14 = alloca %struct.wlp_device_info*, align 8
  %15 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.wlp_neighbor_e* %2, %struct.wlp_neighbor_e** %6, align 8
  %16 = load %struct.wlp*, %struct.wlp** %4, align 8
  %17 = getelementptr inbounds %struct.wlp, %struct.wlp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %24, %struct.wlp_frame_assoc** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  store i64 4, i64* %11, align 8
  %31 = load %struct.wlp*, %struct.wlp** %4, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub i64 %35, %36
  %38 = call i64 @wlp_get_uuid_e(%struct.wlp* %31, i8* %34, %struct.wlp_uuid* %13, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %172

44:                                               ; preds = %3
  %45 = load %struct.wlp*, %struct.wlp** %4, align 8
  %46 = getelementptr inbounds %struct.wlp, %struct.wlp* %45, i32 0, i32 0
  %47 = call i64 @memcmp(%struct.wlp_uuid* %13, i32* %46, i32 4)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %172

52:                                               ; preds = %44
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load %struct.wlp*, %struct.wlp** %4, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %6, align 8
  %61 = getelementptr inbounds %struct.wlp_neighbor_e, %struct.wlp_neighbor_e* %60, i32 0, i32 1
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub i64 %62, %63
  %65 = call i64 @wlp_get_uuid_r(%struct.wlp* %56, i8* %59, i32* %61, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ult i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %172

71:                                               ; preds = %52
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load %struct.wlp*, %struct.wlp** %4, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr i8, i8* %76, i64 %77
  %79 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %6, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 %80, %81
  %83 = call i64 @wlp_get_wss_info_to_cache(%struct.wlp* %75, i8* %78, %struct.wlp_neighbor_e* %79, i64 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ult i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %172

89:                                               ; preds = %71
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.wlp_device_info* @kzalloc(i32 4, i32 %93)
  %95 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %6, align 8
  %96 = getelementptr inbounds %struct.wlp_neighbor_e, %struct.wlp_neighbor_e* %95, i32 0, i32 0
  store %struct.wlp_device_info* %94, %struct.wlp_device_info** %96, align 8
  %97 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %6, align 8
  %98 = getelementptr inbounds %struct.wlp_neighbor_e, %struct.wlp_neighbor_e* %97, i32 0, i32 0
  %99 = load %struct.wlp_device_info*, %struct.wlp_device_info** %98, align 8
  %100 = icmp eq %struct.wlp_device_info* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i64, i64* @ENOMEM, align 8
  %105 = sub i64 0, %104
  store i64 %105, i64* %12, align 8
  br label %172

106:                                              ; preds = %89
  %107 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %6, align 8
  %108 = getelementptr inbounds %struct.wlp_neighbor_e, %struct.wlp_neighbor_e* %107, i32 0, i32 0
  %109 = load %struct.wlp_device_info*, %struct.wlp_device_info** %108, align 8
  store %struct.wlp_device_info* %109, %struct.wlp_device_info** %14, align 8
  %110 = load %struct.wlp*, %struct.wlp** %4, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr i8, i8* %111, i64 %112
  %114 = load %struct.wlp_device_info*, %struct.wlp_device_info** %14, align 8
  %115 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = sub i64 %117, %118
  %120 = call i64 @wlp_get_dev_name(%struct.wlp* %110, i8* %113, i32 %116, i64 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp ult i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %106
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %172

126:                                              ; preds = %106
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %11, align 8
  %130 = load %struct.wlp*, %struct.wlp** %4, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr i8, i8* %131, i64 %132
  %134 = load %struct.wlp_device_info*, %struct.wlp_device_info** %14, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = sub i64 %135, %136
  %138 = call i64 @wlp_get_variable_info(%struct.wlp* %130, i8* %133, %struct.wlp_device_info* %134, i64 %137)
  store i64 %138, i64* %12, align 8
  %139 = load i64, i64* %12, align 8
  %140 = icmp ult i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %126
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %142, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %172

144:                                              ; preds = %126
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %11, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %11, align 8
  %148 = load %struct.wlp*, %struct.wlp** %4, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load i64, i64* %11, align 8
  %151 = getelementptr i8, i8* %149, i64 %150
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = sub i64 %152, %153
  %155 = call i64 @wlp_get_wlp_assc_err(%struct.wlp* %148, i8* %151, i32* %15, i64 %154)
  store i64 %155, i64* %12, align 8
  %156 = load i64, i64* %12, align 8
  %157 = icmp ult i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %144
  %159 = load %struct.device*, %struct.device** %7, align 8
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0))
  br label %172

161:                                              ; preds = %144
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @WLP_ASSOC_ERROR_NONE, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load %struct.device*, %struct.device** %7, align 8
  %167 = load i32, i32* %15, align 4
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %167)
  %169 = load i64, i64* @EINVAL, align 8
  %170 = sub i64 0, %169
  store i64 %170, i64* %12, align 8
  br label %172

171:                                              ; preds = %161
  store i64 0, i64* %12, align 8
  br label %172

172:                                              ; preds = %171, %165, %158, %141, %123, %101, %86, %68, %49, %41
  %173 = load i64, i64* %12, align 8
  %174 = icmp ult i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %6, align 8
  %177 = call i32 @wlp_remove_neighbor_tmp_info(%struct.wlp_neighbor_e* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i64, i64* %12, align 8
  %180 = trunc i64 %179 to i32
  ret i32 %180
}

declare dso_local i64 @wlp_get_uuid_e(%struct.wlp*, i8*, %struct.wlp_uuid*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @memcmp(%struct.wlp_uuid*, i32*, i32) #1

declare dso_local i64 @wlp_get_uuid_r(%struct.wlp*, i8*, i32*, i64) #1

declare dso_local i64 @wlp_get_wss_info_to_cache(%struct.wlp*, i8*, %struct.wlp_neighbor_e*, i64) #1

declare dso_local %struct.wlp_device_info* @kzalloc(i32, i32) #1

declare dso_local i64 @wlp_get_dev_name(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i64 @wlp_get_variable_info(%struct.wlp*, i8*, %struct.wlp_device_info*, i64) #1

declare dso_local i64 @wlp_get_wlp_assc_err(%struct.wlp*, i8*, i32*, i64) #1

declare dso_local i32 @wlp_remove_neighbor_tmp_info(%struct.wlp_neighbor_e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
