; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SCTP_CID_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 @sctp_tsnmap_get_ctsn(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @htonl(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %16 = load i32, i32* @SCTP_CID_SHUTDOWN, align 4
  %17 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %15, i32 %16, i32 0, i32 4)
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %5, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %19 = icmp ne %struct.sctp_chunk* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %23 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %22, i32 4, %struct.TYPE_7__* %6)
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %28 = icmp ne %struct.sctp_chunk* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %21
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %37
}

declare dso_local i32 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
