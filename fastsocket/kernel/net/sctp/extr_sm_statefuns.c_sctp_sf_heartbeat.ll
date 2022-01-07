; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32, i32 }
%struct.sctp_chunk = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SCTP_PARAM_HEARTBEAT_INFO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_RTO_PENDING = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* @sctp_sf_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_heartbeat(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_transport*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i64, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.sctp_transport*
  store %struct.sctp_transport* %17, %struct.sctp_transport** %12, align 8
  store i64 0, i64* %15, align 8
  %18 = load i32, i32* @SCTP_PARAM_HEARTBEAT_INFO, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = call i32 @htons(i32 20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %25 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @jiffies, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %31 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  store i64 20, i64* %15, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %36 = load i64, i64* %15, align 8
  %37 = call %struct.sctp_chunk* @sctp_make_heartbeat(%struct.sctp_association* %34, %struct.sctp_transport* %35, %struct.TYPE_5__* %14, i64 %36)
  store %struct.sctp_chunk* %37, %struct.sctp_chunk** %13, align 8
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %39 = icmp ne %struct.sctp_chunk* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %41, i32* %6, align 4
  br label %54

42:                                               ; preds = %5
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @SCTP_CMD_RTO_PENDING, align 4
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %46 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %45)
  %47 = call i32 @sctp_add_cmd_sf(i32* %43, i32 %44, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %51 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %50)
  %52 = call i32 @sctp_add_cmd_sf(i32* %48, i32 %49, i32 %51)
  %53 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42, %40
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_heartbeat(%struct.sctp_association*, %struct.sctp_transport*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
