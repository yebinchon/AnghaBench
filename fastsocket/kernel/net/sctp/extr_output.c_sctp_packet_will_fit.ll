; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_output.c_sctp_packet_will_fit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_output.c_sctp_packet_will_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_chunk = type { i64 }

@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@SCTP_XMIT_PMTU_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*, i64)* @sctp_packet_will_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_packet_will_fit(%struct.sctp_packet* %0, %struct.sctp_chunk* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_packet*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_packet* %0, %struct.sctp_packet** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %35

35:                                               ; preds = %29, %21
  %36 = phi i64 [ %28, %21 ], [ %34, %29 ]
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %35
  %46 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %47 = call i64 @sctp_packet_empty(%struct.sctp_packet* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %51 = call i32 @sctp_chunk_is_data(%struct.sctp_chunk* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %55 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %49, %45
  %64 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %65 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  br label %68

66:                                               ; preds = %58, %53
  %67 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i64 @sctp_packet_empty(%struct.sctp_packet*) #1

declare dso_local i32 @sctp_chunk_is_data(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
