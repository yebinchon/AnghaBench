; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_chunk_iif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_chunk_iif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_af = type { i32 (i32)* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_chunk_iif(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  %3 = alloca %struct.sctp_af*, align 8
  %4 = alloca i32, align 4
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_2__* @ip_hdr(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ipver2af(i32 %10)
  %12 = call %struct.sctp_af* @sctp_get_af_specific(i32 %11)
  store %struct.sctp_af* %12, %struct.sctp_af** %3, align 8
  %13 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  %14 = icmp ne %struct.sctp_af* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @ipver2af(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
