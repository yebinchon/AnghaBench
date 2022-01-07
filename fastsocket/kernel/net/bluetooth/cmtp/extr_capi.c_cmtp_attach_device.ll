; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_attach_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cmtp_session*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@CAPI_REQ = common dso_local global i32 0, align 4
@CMTP_INITIAL_MSGNUM = common dso_local global i32 0, align 4
@CAPI_FUNCTION_GET_PROFILE = common dso_local global i32 0, align 4
@CMTP_INTEROP_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Found %d CAPI controller(s) on device %s\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Setting up only CAPI controller 1\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"cmtp\00", align 1
@cmtp_load_firmware = common dso_local global i32 0, align 4
@cmtp_reset_ctr = common dso_local global i32 0, align 4
@cmtp_register_appl = common dso_local global i32 0, align 4
@cmtp_release_appl = common dso_local global i32 0, align 4
@cmtp_send_message = common dso_local global i32 0, align 4
@cmtp_procinfo = common dso_local global i32 0, align 4
@cmtp_ctr_read_proc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't attach new controller\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"session %p num %d\00", align 1
@CAPI_FUNCTION_GET_MANUFACTURER = common dso_local global i32 0, align 4
@CAPI_FUNCTION_GET_VERSION = common dso_local global i32 0, align 4
@CAPI_FUNCTION_GET_SERIAL_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmtp_attach_device(%struct.cmtp_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  %6 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %7 = call i32 (i8*, %struct.cmtp_session*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %6)
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %9 = call i32 @capimsg_setu32(i8* %8, i32 0, i32 0)
  %10 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %11 = load i32, i32* @CAPI_REQ, align 4
  %12 = load i32, i32* @CMTP_INITIAL_MSGNUM, align 4
  %13 = load i32, i32* @CAPI_FUNCTION_GET_PROFILE, align 4
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %15 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %10, i32 %11, i32 65535, i32 %12, i32 %13, i8* %14, i32 4)
  %16 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %17 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %20 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CMTP_INTEROP_TIMEOUT, align 4
  %23 = call i64 @wait_event_interruptible_timeout(i32 %18, i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %25 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %28 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %149

36:                                               ; preds = %1
  %37 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %38 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %149

44:                                               ; preds = %36
  %45 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %46 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %54 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 11
  store i32 %52, i32* %55, align 8
  %56 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %57 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %58 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 10
  store %struct.cmtp_session* %56, %struct.cmtp_session** %59, align 8
  %60 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %61 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %65 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcpy(i32 %63, i32 %66)
  %68 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %69 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @cmtp_load_firmware, align 4
  %72 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %73 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 8
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @cmtp_reset_ctr, align 4
  %76 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %77 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 7
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @cmtp_register_appl, align 4
  %80 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %81 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @cmtp_release_appl, align 4
  %84 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %85 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @cmtp_send_message, align 4
  %88 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %89 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @cmtp_procinfo, align 4
  %92 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %93 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @cmtp_ctr_read_proc, align 4
  %96 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %97 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 4
  %99 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %100 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %99, i32 0, i32 2
  %101 = call i64 @attach_capi_ctr(%struct.TYPE_2__* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %51
  %104 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %149

107:                                              ; preds = %51
  %108 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %109 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %113 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %115 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %116 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, %struct.cmtp_session*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.cmtp_session* %114, i32 %117)
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %120 = call i32 @capimsg_setu32(i8* %119, i32 0, i32 1)
  %121 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %122 = load i32, i32* @CAPI_REQ, align 4
  %123 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %124 = call i32 @cmtp_msgnum_get(%struct.cmtp_session* %123)
  %125 = load i32, i32* @CAPI_FUNCTION_GET_MANUFACTURER, align 4
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %127 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %121, i32 %122, i32 65535, i32 %124, i32 %125, i8* %126, i32 4)
  %128 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %129 = load i32, i32* @CAPI_REQ, align 4
  %130 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %131 = call i32 @cmtp_msgnum_get(%struct.cmtp_session* %130)
  %132 = load i32, i32* @CAPI_FUNCTION_GET_VERSION, align 4
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %134 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %128, i32 %129, i32 65535, i32 %131, i32 %132, i8* %133, i32 4)
  %135 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %136 = load i32, i32* @CAPI_REQ, align 4
  %137 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %138 = call i32 @cmtp_msgnum_get(%struct.cmtp_session* %137)
  %139 = load i32, i32* @CAPI_FUNCTION_GET_SERIAL_NUMBER, align 4
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %141 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %135, i32 %136, i32 65535, i32 %138, i32 %139, i8* %140, i32 4)
  %142 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %143 = load i32, i32* @CAPI_REQ, align 4
  %144 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %145 = call i32 @cmtp_msgnum_get(%struct.cmtp_session* %144)
  %146 = load i32, i32* @CAPI_FUNCTION_GET_PROFILE, align 4
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %148 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %142, i32 %143, i32 65535, i32 %145, i32 %146, i8* %147, i32 4)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %107, %103, %41, %33
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, ...) #1

declare dso_local i32 @capimsg_setu32(i8*, i32, i32) #1

declare dso_local i32 @cmtp_send_interopmsg(%struct.cmtp_session*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @BT_INFO(i8*, ...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @attach_capi_ctr(%struct.TYPE_2__*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @cmtp_msgnum_get(%struct.cmtp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
