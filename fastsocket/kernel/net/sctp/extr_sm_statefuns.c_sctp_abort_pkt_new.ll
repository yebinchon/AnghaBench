; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_abort_pkt_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_abort_pkt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_packet* (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i8*, i64)* @sctp_abort_pkt_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.sctp_packet*, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sctp_packet*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %16 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association* %14, %struct.sctp_chunk* %15)
  store %struct.sctp_packet* %16, %struct.sctp_packet** %12, align 8
  %17 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %18 = icmp ne %struct.sctp_packet* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %5
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %20, %struct.sctp_chunk* %21, i64 %22)
  store %struct.sctp_chunk* %23, %struct.sctp_chunk** %13, align 8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %25 = icmp ne %struct.sctp_chunk* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %28 = call i32 @sctp_ootb_pkt_free(%struct.sctp_packet* %27)
  store %struct.sctp_packet* null, %struct.sctp_packet** %6, align 8
  br label %60

29:                                               ; preds = %19
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %31 = call i64 @sctp_test_T_bit(%struct.sctp_chunk* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohl(i32 %38)
  %40 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %41 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %29
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %43, i64 %44, i8* %45)
  %47 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %48 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %57 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %55, %struct.sctp_chunk* %56)
  br label %58

58:                                               ; preds = %42, %5
  %59 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  store %struct.sctp_packet* %59, %struct.sctp_packet** %6, align 8
  br label %60

60:                                               ; preds = %58, %26
  %61 = load %struct.sctp_packet*, %struct.sctp_packet** %6, align 8
  ret %struct.sctp_packet* %61
}

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i64) #1

declare dso_local i32 @sctp_ootb_pkt_free(%struct.sctp_packet*) #1

declare dso_local i64 @sctp_test_T_bit(%struct.sctp_chunk*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
