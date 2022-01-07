; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_standard_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_standard_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32, i32, i32, %struct.usb_request* }
%struct.usb_request = type { i64 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"get device descriptor\0A\00", align 1
@device_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"get device qualifier\0A\00", align 1
@dev_qualifier = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"get other-speed config descriptor\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"get configuration descriptor\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"get string descriptor\0A\00", align 1
@stringtab = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"set configuration\0A\00", align 1
@CONFIG_VALUE = common dso_local global i32 0, align 4
@FSG_STATE_CONFIG_CHANGE = common dso_local global i32 0, align 4
@DELAYED_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"get configuration\0A\00", align 1
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@FSG_STATE_INTERFACE_CHANGE = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"get interface\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"unknown control req %02x.%02x v%04x i%04x l%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.usb_ctrlrequest*)* @standard_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @standard_setup_req(%struct.fsg_dev* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %9 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %9, i32 0, i32 3
  %11 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  store %struct.usb_request* %11, %struct.usb_request** %5, align 8
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %202 [
    i32 131, label %25
    i32 129, label %97
    i32 132, label %126
    i32 128, label %147
    i32 130, label %172
  ]

25:                                               ; preds = %2
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %33 = or i32 %31, %32
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %217

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 8
  switch i32 %38, label %96 [
    i32 136, label %39
    i32 135, label %47
    i32 134, label %62
    i32 137, label %72
    i32 133, label %87
  ]

39:                                               ; preds = %36
  %40 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %41 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %6, align 4
  %42 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %43 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @memcpy(i64 %44, i32* @device_desc, i32 %45)
  br label %96

47:                                               ; preds = %36
  %48 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %49 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %51 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gadget_is_dualspeed(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %96

56:                                               ; preds = %47
  store i32 4, i32* %6, align 4
  %57 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %58 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @memcpy(i64 %59, i32* @dev_qualifier, i32 %60)
  br label %96

62:                                               ; preds = %36
  %63 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %64 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %66 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gadget_is_dualspeed(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %96

71:                                               ; preds = %62
  br label %75

72:                                               ; preds = %36
  %73 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %74 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %71
  %76 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %77 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %80 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 255
  %86 = call i32 @populate_config_buf(i32 %78, i64 %81, i32 %83, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %96

87:                                               ; preds = %36
  %88 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %89 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 255
  %92 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %93 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @usb_gadget_get_string(i32* @stringtab, i32 %91, i64 %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %36, %87, %75, %70, %56, %55, %39
  br label %217

97:                                               ; preds = %2
  %98 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %99 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @USB_DIR_OUT, align 4
  %102 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %105 = or i32 %103, %104
  %106 = icmp ne i32 %100, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %217

108:                                              ; preds = %97
  %109 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %110 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @CONFIG_VALUE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114, %108
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %120 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %122 = load i32, i32* @FSG_STATE_CONFIG_CHANGE, align 4
  %123 = call i32 @raise_exception(%struct.fsg_dev* %121, i32 %122)
  %124 = load i32, i32* @DELAYED_STATUS, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %117, %114
  br label %217

126:                                              ; preds = %2
  %127 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %128 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @USB_DIR_IN, align 4
  %131 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %134 = or i32 %132, %133
  %135 = icmp ne i32 %129, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %217

137:                                              ; preds = %126
  %138 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %139 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %140 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %141 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %144 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  store i32 %142, i32* %146, align 4
  store i32 1, i32* %6, align 4
  br label %217

147:                                              ; preds = %2
  %148 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %149 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @USB_DIR_OUT, align 4
  %152 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %155 = or i32 %153, %154
  %156 = icmp ne i32 %150, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %217

158:                                              ; preds = %147
  %159 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %160 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %168 = load i32, i32* @FSG_STATE_INTERFACE_CHANGE, align 4
  %169 = call i32 @raise_exception(%struct.fsg_dev* %167, i32 %168)
  %170 = load i32, i32* @DELAYED_STATUS, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %166, %163, %158
  br label %217

172:                                              ; preds = %2
  %173 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %174 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @USB_DIR_IN, align 4
  %177 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %180 = or i32 %178, %179
  %181 = icmp ne i32 %175, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %217

183:                                              ; preds = %172
  %184 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %185 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  br label %217

189:                                              ; preds = %183
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* @EDOM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %6, align 4
  br label %217

195:                                              ; preds = %189
  %196 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %197 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %198 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %199 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  store i32 0, i32* %201, align 4
  store i32 1, i32* %6, align 4
  br label %217

202:                                              ; preds = %2
  %203 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %204 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %205 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %208 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %213 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @le16_to_cpu(i32 %214)
  %216 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %203, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %206, i32 %209, i32 %210, i32 %211, i32 %215)
  br label %217

217:                                              ; preds = %202, %195, %192, %188, %182, %171, %157, %137, %136, %125, %107, %96, %35
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*, ...) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @gadget_is_dualspeed(i32) #1

declare dso_local i32 @populate_config_buf(i32, i64, i32, i32) #1

declare dso_local i32 @usb_gadget_get_string(i32*, i32, i64) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
