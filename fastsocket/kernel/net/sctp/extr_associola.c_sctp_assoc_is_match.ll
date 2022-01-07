; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_is_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_is_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32 }
%struct.sctp_association = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.sctp_addr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_transport* @sctp_assoc_is_match(%struct.sctp_association* %0, %union.sctp_addr* %1, %union.sctp_addr* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %6, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %3
  %20 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @htons(i32 %23)
  %25 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %26 = bitcast %union.sctp_addr* %25 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %19
  %31 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %32 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %33 = call %struct.sctp_transport* @sctp_assoc_lookup_paddr(%struct.sctp_association* %31, %union.sctp_addr* %32)
  store %struct.sctp_transport* %33, %struct.sctp_transport** %7, align 8
  %34 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %35 = icmp ne %struct.sctp_transport* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %52

37:                                               ; preds = %30
  %38 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sctp_sk(i32 %45)
  %47 = call i64 @sctp_bind_addr_match(%struct.TYPE_8__* %40, %union.sctp_addr* %41, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %52

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %19, %3
  store %struct.sctp_transport* null, %struct.sctp_transport** %7, align 8
  br label %52

52:                                               ; preds = %51, %49, %36
  %53 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  ret %struct.sctp_transport* %53
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.sctp_transport* @sctp_assoc_lookup_paddr(%struct.sctp_association*, %union.sctp_addr*) #1

declare dso_local i64 @sctp_bind_addr_match(%struct.TYPE_8__*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
