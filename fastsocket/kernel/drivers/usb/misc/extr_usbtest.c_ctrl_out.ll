; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_ctrl_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_ctrl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ctrl_out, wlen %d (expected %d)\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ctrl_out, rlen %d (expected %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"ctrl_out, byte %d is %d not %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@realworld = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"ctrl_out %s failed, code %d, count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, i32, i32)* @ctrl_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_out(%struct.usbtest_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbtest_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.usb_device*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %17, 1
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 65535
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %19, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %178

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i32 %30, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %178

38:                                               ; preds = %29
  %39 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %40 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %39)
  store %struct.usb_device* %40, %struct.usb_device** %16, align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %162, %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %165

46:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %52, %53
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %64 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %65 = call i32 @usb_sndctrlpipe(%struct.usb_device* %64, i32 0)
  %66 = load i32, i32* @USB_DIR_OUT, align 4
  %67 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %72 = call i32 @usb_control_msg(%struct.usb_device* %63, i32 %65, i32 91, i32 %68, i32 0, i32 0, i32* %69, i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %62
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %77 = load i32, i32* %13, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EBADMSG, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %79, %76
  br label %165

87:                                               ; preds = %62
  %88 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %89 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %90 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %89, i32 0)
  %91 = load i32, i32* @USB_DIR_IN, align 4
  %92 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %97 = call i32 @usb_control_msg(%struct.usb_device* %88, i32 %90, i32 92, i32 %93, i32 0, i32 0, i32* %94, i32 %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %87
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %102 = load i32, i32* %13, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @EBADMSG, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %104, %101
  br label %165

112:                                              ; preds = %87
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %142, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %113
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %11, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %123, %124
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %117
  %128 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %135, %136
  %138 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %134, i32 %137)
  %139 = load i32, i32* @EBADMSG, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %13, align 4
  br label %145

141:                                              ; preds = %117
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %113

145:                                              ; preds = %127, %113
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  br label %165

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ugt i32 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i64, i64* @realworld, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %156, %149
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %42

165:                                              ; preds = %148, %111, %86, %42
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %168, %165
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %174, %35, %26
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, ...) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
