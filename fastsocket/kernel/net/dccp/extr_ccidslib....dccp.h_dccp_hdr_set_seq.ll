; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccidslib....dccp.h_dccp_hdr_set_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccidslib....dccp.h_dccp_hdr_set_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_hdr = type { i32, i64 }
%struct.dccp_hdr_ext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dccp_hdr*, i32)* @dccp_hdr_set_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_hdr_set_seq(%struct.dccp_hdr* %0, i32 %1) #0 {
  %3 = alloca %struct.dccp_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_hdr_ext*, align 8
  store %struct.dccp_hdr* %0, %struct.dccp_hdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dccp_hdr*, %struct.dccp_hdr** %3, align 8
  %7 = bitcast %struct.dccp_hdr* %6 to i8*
  %8 = getelementptr i8, i8* %7, i64 16
  %9 = bitcast i8* %8 to %struct.dccp_hdr_ext*
  store %struct.dccp_hdr_ext* %9, %struct.dccp_hdr_ext** %5, align 8
  %10 = load %struct.dccp_hdr*, %struct.dccp_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 32
  %14 = and i32 %13, 1048575
  %15 = call i32 @htons(i32 %14)
  %16 = load %struct.dccp_hdr*, %struct.dccp_hdr** %3, align 8
  %17 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @htonl(i32 %18)
  %20 = load %struct.dccp_hdr_ext*, %struct.dccp_hdr_ext** %5, align 8
  %21 = getelementptr inbounds %struct.dccp_hdr_ext, %struct.dccp_hdr_ext* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
