; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_cwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_cwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SCTP_CID_ECN_CWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_cwr(%struct.sctp_association* %0, i32 %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @htonl(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %13 = load i32, i32* @SCTP_CID_ECN_CWR, align 4
  %14 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %12, i32 %13, i32 0, i32 4)
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %7, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %16 = icmp ne %struct.sctp_chunk* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %20 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %19, i32 4, %struct.TYPE_5__* %8)
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %25 = icmp ne %struct.sctp_chunk* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %28 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %34
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
