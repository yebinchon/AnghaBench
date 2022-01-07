; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_sysfs_store_adsl_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_sysfs_store_adsl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usbatm_data = type { %struct.cxacru_data* }
%struct.cxacru_data = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%7s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@CM_REQUEST_CHIP_ADSL_LINE_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"change adsl state: CHIP_ADSL_LINE_STOP returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@CM_REQUEST_CHIP_ADSL_LINE_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"change adsl state: CHIP_ADSL_LINE_START returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cxacru_sysfs_store_adsl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_sysfs_store_adsl_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usbatm_data*, align 8
  %12 = alloca %struct.cxacru_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.usb_interface* @to_usb_interface(%struct.device* %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %10, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %20 = call %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.usbatm_data* %20, %struct.usbatm_data** %11, align 8
  %21 = load %struct.usbatm_data*, %struct.usbatm_data** %11, align 8
  %22 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %21, i32 0, i32 0
  %23 = load %struct.cxacru_data*, %struct.cxacru_data** %22, align 8
  store %struct.cxacru_data* %23, %struct.cxacru_data** %12, align 8
  store i32 -1, i32* %14, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* @CAP_NET_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %166

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %35 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %166

41:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  %42 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %43 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %42, i32 0, i32 2
  %44 = call i64 @mutex_lock_interruptible(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %166

49:                                               ; preds = %41
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %59 = load i32, i32* @CM_REQUEST_CHIP_ADSL_LINE_STOP, align 4
  %60 = call i32 @cxacru_cm(%struct.cxacru_data* %58, i32 %59, i32* null, i32 0, i32* null, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.usbatm_data*, %struct.usbatm_data** %11, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @atm_err(%struct.usbatm_data* %64, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %13, align 4
  store i32 129, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %53
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call i32 @msleep(i32 1500)
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %88 = load i32, i32* @CM_REQUEST_CHIP_ADSL_LINE_START, align 4
  %89 = call i32 @cxacru_cm(%struct.cxacru_data* %87, i32 %88, i32* null, i32 0, i32* null, i32 0)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.usbatm_data*, %struct.usbatm_data** %11, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @atm_err(%struct.usbatm_data* %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  br label %100

98:                                               ; preds = %86
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %13, align 4
  store i32 131, i32* %14, align 4
  br label %100

100:                                              ; preds = %98, %92
  br label %101

101:                                              ; preds = %100, %82
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %13, align 4
  store i32 131, i32* %14, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, 131
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %118 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %117, i32 0, i32 3
  %119 = call i32 @mutex_lock(i32* %118)
  %120 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %121 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %130 [
    i32 129, label %123
    i32 128, label %126
    i32 131, label %129
    i32 130, label %129
  ]

123:                                              ; preds = %116
  %124 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %125 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %124, i32 0, i32 0
  store i32 131, i32* %125, align 4
  br label %130

126:                                              ; preds = %116
  %127 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %128 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %127, i32 0, i32 0
  store i32 131, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %116, %126
  store i32 -1, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %116, %123
  %131 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %132 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %131, i32 0, i32 3
  %133 = call i32 @mutex_unlock(i32* %132)
  br label %153

134:                                              ; preds = %113
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 129
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %139 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %138, i32 0, i32 3
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %142 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 131
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %147 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %146, i32 0, i32 0
  store i32 128, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %137
  %149 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %150 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %149, i32 0, i32 3
  %151 = call i32 @mutex_unlock(i32* %150)
  br label %152

152:                                              ; preds = %148, %134
  br label %153

153:                                              ; preds = %152, %130
  %154 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %155 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %154, i32 0, i32 2
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 131
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  %161 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = call i32 @cxacru_poll_status(i32* %162)
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %46, %38, %29
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cxacru_cm(%struct.cxacru_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @atm_err(%struct.usbatm_data*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cxacru_poll_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
