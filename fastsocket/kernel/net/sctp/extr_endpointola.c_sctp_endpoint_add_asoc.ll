; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_endpointola.c_sctp_endpoint_add_asoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_endpointola.c_sctp_endpoint_add_asoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sctp_association = type { i32, i64 }

@TCP = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_endpoint_add_asoc(%struct.sctp_endpoint* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sctp_endpoint*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %6 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 0
  %18 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %18, i32 0, i32 0
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = load i32, i32* @TCP, align 4
  %23 = call i64 @sctp_style(%struct.sock* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = load i32, i32* @LISTENING, align 4
  %28 = call i64 @sctp_sstate(%struct.sock* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %14, %30, %25, %15
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
