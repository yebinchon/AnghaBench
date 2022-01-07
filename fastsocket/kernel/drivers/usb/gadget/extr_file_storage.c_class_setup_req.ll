; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_class_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_class_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { %struct.usb_request*, i32, i32 }
%struct.usb_request = type { i32, i64 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bulk reset request\0A\00", align 1
@FSG_STATE_RESET = common dso_local global i32 0, align 4
@DELAYED_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"get max LUN\0A\00", align 1
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@received_cbi_adsc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"unknown class-specific control req %02x.%02x v%04x i%04x l%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.usb_ctrlrequest*)* @class_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_setup_req(%struct.fsg_dev* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %11 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %12 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %11, i32 0, i32 0
  %13 = load %struct.usb_request*, %struct.usb_request** %12, align 8
  store %struct.usb_request* %13, %struct.usb_request** %6, align 8
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %29 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %161

34:                                               ; preds = %2
  %35 = call i64 (...) @transport_is_bbb()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %100

37:                                               ; preds = %34
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %99 [
    i32 129, label %41
    i32 130, label %68
  ]

41:                                               ; preds = %37
  %42 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %43 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_DIR_OUT, align 4
  %46 = load i32, i32* @USB_TYPE_CLASS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %49 = or i32 %47, %48
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %99

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @EDOM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %99

61:                                               ; preds = %55
  %62 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %63 = call i32 @DBG(%struct.fsg_dev* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %65 = load i32, i32* @FSG_STATE_RESET, align 4
  %66 = call i32 @raise_exception(%struct.fsg_dev* %64, i32 %65)
  %67 = load i32, i32* @DELAYED_STATUS, align 4
  store i32 %67, i32* %7, align 4
  br label %99

68:                                               ; preds = %37
  %69 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %70 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @USB_DIR_IN, align 4
  %73 = load i32, i32* @USB_TYPE_CLASS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %76 = or i32 %74, %75
  %77 = icmp ne i32 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %99

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @EDOM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %99

88:                                               ; preds = %82
  %89 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %90 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %92 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %96 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  store i32 %94, i32* %98, align 4
  store i32 1, i32* %7, align 4
  br label %99

99:                                               ; preds = %37, %88, %85, %78, %61, %58, %51
  br label %139

100:                                              ; preds = %34
  %101 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %102 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %138 [
    i32 128, label %104
  ]

104:                                              ; preds = %100
  %105 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %106 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @USB_DIR_OUT, align 4
  %109 = load i32, i32* @USB_TYPE_CLASS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %112 = or i32 %110, %111
  %113 = icmp ne i32 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %138

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118, %115
  %122 = load i32, i32* @EDOM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %138

124:                                              ; preds = %118
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @EOVERFLOW, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %138

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @received_cbi_adsc, align 4
  %134 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %135 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %134, i32 0, i32 0
  %136 = load %struct.usb_request*, %struct.usb_request** %135, align 8
  %137 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  br label %138

138:                                              ; preds = %100, %131, %128, %121, %114
  br label %139

139:                                              ; preds = %138, %99
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @EOPNOTSUPP, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %146 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %147 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %150 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %153 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le16_to_cpu(i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %145, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %151, i32 %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %144, %139
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %32
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @transport_is_bbb(...) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i32) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
