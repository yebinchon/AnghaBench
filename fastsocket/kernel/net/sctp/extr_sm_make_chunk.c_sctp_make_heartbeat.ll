; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_2__, %struct.sctp_transport* }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }

@SCTP_CID_HEARTBEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_heartbeat(%struct.sctp_association* %0, %struct.sctp_transport* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %11 = load i32, i32* @SCTP_CID_HEARTBEAT, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %10, i32 %11, i32 0, i64 %12)
  store %struct.sctp_chunk* %13, %struct.sctp_chunk** %9, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %15 = icmp ne %struct.sctp_chunk* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %28

17:                                               ; preds = %4
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  store %struct.sctp_transport* %18, %struct.sctp_transport** %20, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %21, i64 %22, i8* %23)
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %17, %16
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  ret %struct.sctp_chunk* %29
}

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
