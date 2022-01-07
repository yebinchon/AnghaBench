; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_sec_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_sec_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wusb_dev = type { %struct.usb_encryption_descriptor }
%struct.usb_encryption_descriptor = type { i32, i64, i32, i32 }
%struct.usb_security_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_SECURITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Can't read security descriptor or not enough data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Can't allocate space for security descriptors\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"BUG: bad device security descriptor; not enough data (%zu vs %zu bytes left)\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"BUG: bad device encryption descriptor; descriptor is too short (%u vs %zu needed)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s (0x%02x/%02x) \00", align 1
@USB_ENC_TYPE_CCM_1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"WUSB device doesn't support CCM1 encryption, can't use!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"supported encryption: %s; using %s (0x%02x/%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusb_dev_sec_add(%struct.wusbhc* %0, %struct.usb_device* %1, %struct.wusb_dev* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.wusb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.usb_security_descriptor*, align 8
  %12 = alloca %struct.usb_encryption_descriptor*, align 8
  %13 = alloca %struct.usb_encryption_descriptor*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [64 x i8], align 16
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store %struct.wusb_dev* %2, %struct.wusb_dev** %6, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %10, align 8
  store %struct.usb_encryption_descriptor* null, %struct.usb_encryption_descriptor** %13, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.usb_security_descriptor* @kmalloc(i32 4, i32 %19)
  store %struct.usb_security_descriptor* %20, %struct.usb_security_descriptor** %11, align 8
  %21 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %22 = icmp eq %struct.usb_security_descriptor* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %172

26:                                               ; preds = %3
  %27 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %28 = load i32, i32* @USB_DT_SECURITY, align 4
  %29 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %30 = call i32 @usb_get_descriptor(%struct.usb_device* %27, i32 %28, i32 0, %struct.usb_security_descriptor* %29, i32 4)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %172

38:                                               ; preds = %26
  %39 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %40 = getelementptr inbounds %struct.usb_security_descriptor, %struct.usb_security_descriptor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.usb_security_descriptor* @krealloc(%struct.usb_security_descriptor* %43, i32 %44, i32 %45)
  store %struct.usb_security_descriptor* %46, %struct.usb_security_descriptor** %11, align 8
  %47 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %48 = icmp eq %struct.usb_security_descriptor* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %10, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %172

52:                                               ; preds = %38
  %53 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %54 = load i32, i32* @USB_DT_SECURITY, align 4
  %55 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @usb_get_descriptor(%struct.usb_device* %53, i32 %54, i32 0, %struct.usb_security_descriptor* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %172

65:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  %66 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %67 = getelementptr inbounds %struct.usb_security_descriptor, %struct.usb_security_descriptor* %66, i64 1
  %68 = bitcast %struct.usb_security_descriptor* %67 to i8*
  store i8* %68, i8** %14, align 8
  %69 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %70 = bitcast %struct.usb_security_descriptor* %69 to i8*
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  store i8* %73, i8** %15, align 8
  br label %74

74:                                               ; preds = %144, %65
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %145

78:                                               ; preds = %74
  %79 = load i8*, i8** %14, align 8
  %80 = bitcast i8* %79 to %struct.usb_encryption_descriptor*
  store %struct.usb_encryption_descriptor* %80, %struct.usb_encryption_descriptor** %12, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = icmp ult i64 %85, 24
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %10, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 24)
  br label %145

95:                                               ; preds = %78
  %96 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %97 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %99, 24
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %10, align 8
  %103 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %104 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %105, i64 24)
  br label %145

107:                                              ; preds = %95
  %108 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %109 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  store i8* %113, i8** %14, align 8
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 64, %119
  %121 = trunc i64 %120 to i32
  %122 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %123 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @wusb_et_name(i64 %124)
  %126 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %127 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %130 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @snprintf(i8* %117, i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %125, i32 %128, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  %138 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @USB_ENC_TYPE_CCM_1, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %107
  %143 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %12, align 8
  store %struct.usb_encryption_descriptor* %143, %struct.usb_encryption_descriptor** %13, align 8
  br label %144

144:                                              ; preds = %142, %107
  br label %74

145:                                              ; preds = %101, %87, %74
  %146 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %147 = icmp eq %struct.usb_encryption_descriptor* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.device*, %struct.device** %10, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %7, align 4
  br label %172

153:                                              ; preds = %145
  %154 = load %struct.wusb_dev*, %struct.wusb_dev** %6, align 8
  %155 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %154, i32 0, i32 0
  %156 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %157 = bitcast %struct.usb_encryption_descriptor* %155 to i8*
  %158 = bitcast %struct.usb_encryption_descriptor* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 24, i1 false)
  %159 = load %struct.device*, %struct.device** %10, align 8
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %161 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %162 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @wusb_et_name(i64 %163)
  %165 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %166 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %169 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_dbg(%struct.device* %159, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %160, i8* %164, i32 %167, i32 %170)
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %153, %148, %61, %49, %34, %23
  %173 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %174 = call i32 @kfree(%struct.usb_security_descriptor* %173)
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local %struct.usb_security_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, %struct.usb_security_descriptor*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.usb_security_descriptor* @krealloc(%struct.usb_security_descriptor*, i32, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @wusb_et_name(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_security_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
