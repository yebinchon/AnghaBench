; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_transport_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_transport_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i64, i32, i32, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sctp_chunk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i64 0, align 8
@SCTP_INACTIVE = common dso_local global i64 0, align 8
@SCTP_UNCONFIRMED = common dso_local global i64 0, align 8
@SCTP_TRANSPORT_UP = common dso_local global i32 0, align 4
@SCTP_HEARTBEAT_SUCCESS = common dso_local global i32 0, align 4
@SCTP_PF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, %struct.sctp_transport*, %struct.sctp_chunk*)* @sctp_cmd_transport_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_transport_on(i32* %0, %struct.sctp_association* %1, %struct.sctp_transport* %2, %struct.sctp_chunk* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store %struct.sctp_transport* %2, %struct.sctp_transport** %7, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %8, align 8
  %10 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %11 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SCTP_STATE_SHUTDOWN_PENDING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %21 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %28 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SCTP_INACTIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %34 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SCTP_UNCONFIRMED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %24
  %39 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %40 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %41 = load i32, i32* @SCTP_TRANSPORT_UP, align 4
  %42 = load i32, i32* @SCTP_HEARTBEAT_SUCCESS, align 4
  %43 = call i32 @sctp_assoc_control_transport(%struct.sctp_association* %39, %struct.sctp_transport* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SCTP_PF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %52 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %53 = load i32, i32* @SCTP_TRANSPORT_UP, align 4
  %54 = load i32, i32* @SCTP_HEARTBEAT_SUCCESS, align 4
  %55 = call i32 @sctp_assoc_control_transport(%struct.sctp_association* %51, %struct.sctp_transport* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %58 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %63 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dst_confirm(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %68 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %73 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %76 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %9, align 8
  %81 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %82 = load i64, i64* @jiffies, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = call i32 @sctp_transport_update_rto(%struct.sctp_transport* %81, i64 %86)
  %88 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %89 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %88, i32 0, i32 2
  %90 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %91 = call i32 @sctp_transport_timeout(%struct.sctp_transport* %90)
  %92 = call i32 @mod_timer(i32* %89, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %74
  %95 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %96 = call i32 @sctp_transport_hold(%struct.sctp_transport* %95)
  br label %97

97:                                               ; preds = %94, %74
  ret void
}

declare dso_local i32 @sctp_assoc_control_transport(%struct.sctp_association*, %struct.sctp_transport*, i32, i32) #1

declare dso_local i32 @dst_confirm(i64) #1

declare dso_local i32 @sctp_transport_update_rto(%struct.sctp_transport*, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @sctp_transport_timeout(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
