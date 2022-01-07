; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_recv_capimsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_capi.c_cmtp_recv_capimsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, i32, %struct.capi_ctr }
%struct.capi_ctr = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.cmtp_application = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@CAPI_MSG_BASELEN = common dso_local global i64 0, align 8
@CAPI_INTEROPERABILITY = common dso_local global i64 0, align 8
@CMTP_LOOPBACK = common dso_local global i32 0, align 4
@CMTP_MAPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't find application with id %d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't find controller %d for message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmtp_recv_capimsg(%struct.cmtp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.capi_ctr*, align 8
  %6 = alloca %struct.cmtp_application*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %11 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %10, i32 0, i32 2
  store %struct.capi_ctr* %11, %struct.capi_ctr** %5, align 8
  %12 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %12, %struct.sk_buff* %13, i64 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CAPI_MSG_BASELEN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %115

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @CAPIMSG_COMMAND(i32 %27)
  %29 = load i64, i64* @CAPI_INTEROPERABILITY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @cmtp_recv_interopmsg(%struct.cmtp_session* %32, %struct.sk_buff* %33)
  br label %115

35:                                               ; preds = %24
  %36 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %37 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CMTP_LOOPBACK, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %115

46:                                               ; preds = %35
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @CAPIMSG_COMMAND(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CAPIMSG_SUBCOMMAND(i32 %53)
  %55 = call i32 @CAPICMD(i64 %50, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @CAPIMSG_APPID(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @CAPIMSG_CONTROL(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %65 = load i32, i32* @CMTP_MAPPING, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session* %64, i32 %65, i32 %66)
  store %struct.cmtp_application* %67, %struct.cmtp_application** %6, align 8
  %68 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %69 = icmp ne %struct.cmtp_application* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %46
  %71 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %72 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @CAPIMSG_SETAPPID(i32 %76, i32 %77)
  br label %84

79:                                               ; preds = %46
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @kfree_skb(%struct.sk_buff* %82)
  br label %115

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 127
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, -128
  %91 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %92 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  store i32 %94, i32* %9, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @CAPIMSG_SETCONTROL(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %88, %84
  %101 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %102 = icmp ne %struct.capi_ctr* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %105 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  br label %115

110:                                              ; preds = %100
  %111 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @capi_ctr_handle_message(%struct.capi_ctr* %111, i32 %112, %struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %110, %103, %79, %43, %31, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, %struct.sk_buff*, i64) #1

declare dso_local i64 @CAPIMSG_COMMAND(i32) #1

declare dso_local i32 @cmtp_recv_interopmsg(%struct.cmtp_session*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @CAPICMD(i64, i32) #1

declare dso_local i32 @CAPIMSG_SUBCOMMAND(i32) #1

declare dso_local i32 @CAPIMSG_APPID(i32) #1

declare dso_local i32 @CAPIMSG_CONTROL(i32) #1

declare dso_local %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session*, i32, i32) #1

declare dso_local i32 @CAPIMSG_SETAPPID(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @CAPIMSG_SETCONTROL(i32, i32) #1

declare dso_local i32 @capi_ctr_handle_message(%struct.capi_ctr*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
