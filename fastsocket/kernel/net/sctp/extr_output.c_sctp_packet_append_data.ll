; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_output.c_sctp_packet_append_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_output.c_sctp_packet_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { %struct.sctp_transport* }
%struct.sctp_transport = type { i64, %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_chunk = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_packet*, %struct.sctp_chunk*)* @sctp_packet_append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_packet_append_data(%struct.sctp_packet* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_packet*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_packet* %0, %struct.sctp_packet** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %9 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %9, i32 0, i32 0
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  store %struct.sctp_transport* %11, %struct.sctp_transport** %5, align 8
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %13 = call i64 @sctp_data_size(%struct.sctp_chunk* %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %14, i32 0, i32 1
  %16 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  store %struct.sctp_association* %16, %struct.sctp_association** %7, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %26
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %8, align 8
  br label %40

39:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %40
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %57 = call i32 @sctp_chunk_assign_tsn(%struct.sctp_chunk* %56)
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %59 = call i32 @sctp_chunk_assign_ssn(%struct.sctp_chunk* %58)
  ret void
}

declare dso_local i64 @sctp_data_size(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_assign_tsn(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_assign_ssn(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
