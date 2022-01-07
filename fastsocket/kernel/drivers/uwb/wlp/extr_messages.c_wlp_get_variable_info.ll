; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_variable_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_variable_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_device_info = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wlp_attr_hdr = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"WLP: Partial data in frame, cannot parse. \0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"WLP: Incorrect order of attribute values in D1 msg.\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"WLP: Unable to obtain Manufacturer attribute from D1 message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"WLP: Unable to obtain Model name attribute from D1 message.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"WLP: Unable to obtain Model number attribute from D1 message.\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"WLP: Unable to obtain Serial number attribute from D1 message.\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"WLP: Unable to obtain Primary device type attribute from D1 message.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, i8*, %struct.wlp_device_info*, i64)* @wlp_get_variable_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_get_variable_info(%struct.wlp* %0, i8* %1, %struct.wlp_device_info* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wlp_device_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wlp_attr_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.wlp_device_info* %2, %struct.wlp_device_info** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.wlp*, %struct.wlp** %6, align 8
  %16 = getelementptr inbounds %struct.wlp, %struct.wlp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %193, %4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %194

25:                                               ; preds = %20
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %198

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = bitcast i8* %36 to %struct.wlp_attr_hdr*
  store %struct.wlp_attr_hdr* %37, %struct.wlp_attr_hdr** %12, align 8
  %38 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %12, align 8
  %39 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  switch i32 %41, label %192 [
    i32 132, label %42
    i32 131, label %69
    i32 130, label %96
    i32 128, label %123
    i32 129, label %150
  ]

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  %44 = icmp uge i32 %43, 132
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %198

48:                                               ; preds = %42
  %49 = load %struct.wlp*, %struct.wlp** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %54 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %56, %57
  %59 = call i64 @wlp_get_manufacturer(%struct.wlp* %49, i8* %52, i32 %55, i64 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp ult i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.device*, %struct.device** %10, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %198

65:                                               ; preds = %48
  store i32 132, i32* %14, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %11, align 8
  br label %193

69:                                               ; preds = %33
  %70 = load i32, i32* %14, align 4
  %71 = icmp uge i32 %70, 131
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.device*, %struct.device** %10, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %198

75:                                               ; preds = %69
  %76 = load %struct.wlp*, %struct.wlp** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr i8, i8* %77, i64 %78
  %80 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %81 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = sub i64 %83, %84
  %86 = call i64 @wlp_get_model_name(%struct.wlp* %76, i8* %79, i32 %82, i64 %85)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp ult i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %198

92:                                               ; preds = %75
  store i32 131, i32* %14, align 4
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %11, align 8
  br label %193

96:                                               ; preds = %33
  %97 = load i32, i32* %14, align 4
  %98 = icmp uge i32 %97, 130
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.device*, %struct.device** %10, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %198

102:                                              ; preds = %96
  %103 = load %struct.wlp*, %struct.wlp** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %108 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %11, align 8
  %112 = sub i64 %110, %111
  %113 = call i64 @wlp_get_model_nr(%struct.wlp* %103, i8* %106, i32 %109, i64 %112)
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp ult i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load %struct.device*, %struct.device** %10, align 8
  %118 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %198

119:                                              ; preds = %102
  store i32 130, i32* %14, align 4
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %11, align 8
  br label %193

123:                                              ; preds = %33
  %124 = load i32, i32* %14, align 4
  %125 = icmp uge i32 %124, 128
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.device*, %struct.device** %10, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %198

129:                                              ; preds = %123
  %130 = load %struct.wlp*, %struct.wlp** %6, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr i8, i8* %131, i64 %132
  %134 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %135 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub i64 %137, %138
  %140 = call i64 @wlp_get_serial(%struct.wlp* %130, i8* %133, i32 %136, i64 %139)
  store i64 %140, i64* %13, align 8
  %141 = load i64, i64* %13, align 8
  %142 = icmp ult i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load %struct.device*, %struct.device** %10, align 8
  %145 = call i32 @dev_err(%struct.device* %144, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  br label %198

146:                                              ; preds = %129
  store i32 128, i32* %14, align 4
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %11, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %11, align 8
  br label %193

150:                                              ; preds = %33
  %151 = load i32, i32* %14, align 4
  %152 = icmp uge i32 %151, 129
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.device*, %struct.device** %10, align 8
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %198

156:                                              ; preds = %150
  %157 = load %struct.wlp*, %struct.wlp** %6, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = load i64, i64* %11, align 8
  %160 = getelementptr i8, i8* %158, i64 %159
  %161 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %162 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %161, i32 0, i32 0
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %11, align 8
  %165 = sub i64 %163, %164
  %166 = call i64 @wlp_get_prim_dev_type(%struct.wlp* %157, i8* %160, %struct.TYPE_6__* %162, i64 %165)
  store i64 %166, i64* %13, align 8
  %167 = load i64, i64* %13, align 8
  %168 = icmp ult i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %156
  %170 = load %struct.device*, %struct.device** %10, align 8
  %171 = call i32 @dev_err(%struct.device* %170, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  br label %198

172:                                              ; preds = %156
  %173 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %174 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %179 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %182 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le16_to_cpu(i32 %184)
  %186 = load %struct.wlp_device_info*, %struct.wlp_device_info** %8, align 8
  %187 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  store i32 129, i32* %14, align 4
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %11, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %11, align 8
  br label %193

192:                                              ; preds = %33
  br label %195

193:                                              ; preds = %172, %146, %119, %92, %65
  br label %20

194:                                              ; preds = %20
  br label %195

195:                                              ; preds = %194, %192
  %196 = load i64, i64* %11, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %5, align 4
  br label %201

198:                                              ; preds = %169, %153, %143, %126, %116, %99, %89, %72, %62, %45, %30
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @wlp_get_manufacturer(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i64 @wlp_get_model_name(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i64 @wlp_get_model_nr(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i64 @wlp_get_serial(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i64 @wlp_get_prim_dev_type(%struct.wlp*, i8*, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
