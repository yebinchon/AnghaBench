; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_....dccp.h_dccp_update_gsr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_....dccp.h_dccp_update_gsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @dccp_update_gsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_update_gsr(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %6)
  store %struct.dccp_sock* %7, %struct.dccp_sock** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %10 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %12 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ADD48(i32 %13, i32 1)
  %15 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 4
  %19 = call i32 @SUB48(i32 %14, i32 %18)
  %20 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %23 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %26 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 3, %27
  %29 = sdiv i32 %28, 4
  %30 = call i32 @ADD48(i32 %24, i32 %29)
  %31 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %32 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @SUB48(i32, i32) #1

declare dso_local i32 @ADD48(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
