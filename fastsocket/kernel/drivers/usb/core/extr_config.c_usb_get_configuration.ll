; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_get_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_get_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i8**, %struct.TYPE_2__, i32*, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.usb_config_descriptor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@USB_MAXCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"too many configurations: %d, using maximum allowed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no configurations\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_DT_CONFIG_SIZE = common dso_local global i32 0, align 4
@USB_DT_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"unable to read config index %d descriptor/%s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"chopping to %d config(s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"config index %d descriptor too short (expected %i, got %i)\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"unable to read config index %d descriptor/%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_get_configuration(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %206

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @USB_MAXCONFIG, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @USB_MAXCONFIG, align 4
  %33 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @USB_MAXCONFIG, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %29, %23
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %221

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %46
  br label %211

62:                                               ; preds = %46
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kzalloc(i32 %67, i32 %68)
  %70 = bitcast i8* %69 to i8**
  %71 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 1
  store i8** %70, i8*** %72, align 8
  %73 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %74 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %62
  br label %211

78:                                               ; preds = %62
  %79 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kmalloc(i32 %79, i32 %80)
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %211

85:                                               ; preds = %78
  %86 = load i8*, i8** %9, align 8
  %87 = bitcast i8* %86 to %struct.usb_config_descriptor*
  store %struct.usb_config_descriptor* %87, %struct.usb_config_descriptor** %11, align 8
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %199, %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %202

92:                                               ; preds = %88
  %93 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %94 = load i32, i32* @USB_DT_CONFIG, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %98 = call i32 @usb_get_descriptor(%struct.usb_device* %93, i32 %94, i32 %95, i8* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %92
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @EPIPE, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %203

111:                                              ; preds = %101
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  br label %202

119:                                              ; preds = %92
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %203

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %11, align 8
  %133 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @le16_to_cpu(i32 %134)
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %138 = call i32 @max(i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i8* @kmalloc(i32 %139, i32 %140)
  store i8* %141, i8** %10, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %131
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %203

147:                                              ; preds = %131
  %148 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %149 = load i32, i32* @USB_DT_CONFIG, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @usb_get_descriptor(%struct.usb_device* %148, i32 %149, i32 %150, i8* %151, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %147
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @kfree(i8* %160)
  br label %203

162:                                              ; preds = %147
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_warn(%struct.device* %167, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %166, %162
  %174 = load i8*, i8** %10, align 8
  %175 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %176 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %175, i32 0, i32 1
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* %174, i8** %180, align 8
  %181 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %182 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %181, i32 0, i32 4
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @usb_parse_configuration(%struct.device* %182, i32 %183, i32* %189, i8* %190, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %173
  %196 = load i32, i32* %7, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %203

198:                                              ; preds = %173
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %7, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %88

202:                                              ; preds = %111, %88
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %195, %156, %144, %122, %110
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 @kfree(i8* %204)
  br label %206

206:                                              ; preds = %203, %22
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %209 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  br label %211

211:                                              ; preds = %206, %84, %77, %61
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %211
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %41
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_parse_configuration(%struct.device*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
