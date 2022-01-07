; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_send_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { %struct.cmtp_session* }
%struct.cmtp_session = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cmtp_application = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ctrl %p skb %p\00", align 1
@CMTP_APPLID = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't find application with id %d\00", align 1
@CAPI_ILLAPPNR = common dso_local global i32 0, align 4
@CAPI_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capi_ctr*, %struct.sk_buff*)* @cmtp_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmtp_send_message(%struct.capi_ctr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.capi_ctr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cmtp_session*, align 8
  %7 = alloca %struct.cmtp_application*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.capi_ctr* %0, %struct.capi_ctr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %11 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %10, i32 0, i32 0
  %12 = load %struct.cmtp_session*, %struct.cmtp_session** %11, align 8
  store %struct.cmtp_session* %12, %struct.cmtp_session** %6, align 8
  %13 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.capi_ctr* %13, %struct.sk_buff* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CAPIMSG_APPID(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CAPIMSG_CONTROL(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %25 = load i32, i32* @CMTP_APPLID, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session* %24, i32 %25, i32 %26)
  store %struct.cmtp_application* %27, %struct.cmtp_application** %7, align 8
  %28 = load %struct.cmtp_application*, %struct.cmtp_application** %7, align 8
  %29 = icmp ne %struct.cmtp_application* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.cmtp_application*, %struct.cmtp_application** %7, align 8
  %32 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BT_CONNECTED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @CAPI_ILLAPPNR, align 4
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cmtp_application*, %struct.cmtp_application** %7, align 8
  %45 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CAPIMSG_SETAPPID(i32 %43, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 127
  %50 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %51 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, -128
  %57 = or i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @CAPIMSG_SETCONTROL(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %40
  %64 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @cmtp_send_capimsg(%struct.cmtp_session* %64, %struct.sk_buff* %65)
  %67 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %36
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @BT_DBG(i8*, %struct.capi_ctr*, %struct.sk_buff*) #1

declare dso_local i32 @CAPIMSG_APPID(i32) #1

declare dso_local i32 @CAPIMSG_CONTROL(i32) #1

declare dso_local %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session*, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @CAPIMSG_SETAPPID(i32, i32) #1

declare dso_local i32 @CAPIMSG_SETCONTROL(i32, i32) #1

declare dso_local i32 @cmtp_send_capimsg(%struct.cmtp_session*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
