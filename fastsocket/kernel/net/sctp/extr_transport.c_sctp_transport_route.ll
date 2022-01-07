; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, i32, i32, %struct.dst_entry*, %union.sctp_addr, %struct.sctp_af*, %struct.sctp_association* }
%struct.dst_entry = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i32 (%struct.sctp_sock*, %struct.sctp_transport*, %union.sctp_addr*, %struct.flowi*)*, %struct.dst_entry* (%struct.sctp_association*, %union.sctp_addr*, %union.sctp_addr*, %struct.flowi.0*, i32)* }
%struct.flowi = type opaque
%struct.flowi.0 = type opaque
%struct.sctp_association = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sctp_transport*, i32 }
%struct.sctp_sock = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, i32)* }
%struct.flowi.1 = type { i32 }

@SPP_PMTUD_DISABLE = common dso_local global i32 0, align 4
@SCTP_DEFAULT_MAXSEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_route(%struct.sctp_transport* %0, %union.sctp_addr* %1, %struct.sctp_sock* %2) #0 {
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_sock*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_af*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.flowi.1, align 4
  store %struct.sctp_transport* %0, %struct.sctp_transport** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %struct.sctp_sock* %2, %struct.sctp_sock** %6, align 8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 6
  %14 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  store %struct.sctp_association* %14, %struct.sctp_association** %7, align 8
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %15, i32 0, i32 5
  %17 = load %struct.sctp_af*, %struct.sctp_af** %16, align 8
  store %struct.sctp_af* %17, %struct.sctp_af** %8, align 8
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %18, i32 0, i32 4
  store %union.sctp_addr* %19, %union.sctp_addr** %9, align 8
  %20 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %21 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %20, i32 0, i32 1
  %22 = load %struct.dst_entry* (%struct.sctp_association*, %union.sctp_addr*, %union.sctp_addr*, %struct.flowi.0*, i32)*, %struct.dst_entry* (%struct.sctp_association*, %union.sctp_addr*, %union.sctp_addr*, %struct.flowi.0*, i32)** %21, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %24 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %25 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %26 = bitcast %struct.flowi.1* %11 to %struct.flowi.0*
  %27 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %28 = call i32 @sctp_opt2sk(%struct.sctp_sock* %27)
  %29 = call %struct.dst_entry* %22(%struct.sctp_association* %23, %union.sctp_addr* %24, %union.sctp_addr* %25, %struct.flowi.0* %26, i32 %28)
  store %struct.dst_entry* %29, %struct.dst_entry** %10, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %31, i32 0, i32 3
  store %struct.dst_entry* %30, %struct.dst_entry** %32, align 8
  %33 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %34 = icmp ne %union.sctp_addr* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %37 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %36, i32 0, i32 2
  %38 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %39 = call i32 @memcpy(i32* %37, %union.sctp_addr* %38, i32 4)
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %42 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %41, i32 0, i32 0
  %43 = load i32 (%struct.sctp_sock*, %struct.sctp_transport*, %union.sctp_addr*, %struct.flowi*)*, i32 (%struct.sctp_sock*, %struct.sctp_transport*, %union.sctp_addr*, %struct.flowi*)** %42, align 8
  %44 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %46 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %47 = bitcast %struct.flowi.1* %11 to %struct.flowi*
  %48 = call i32 %43(%struct.sctp_sock* %44, %struct.sctp_transport* %45, %union.sctp_addr* %46, %struct.flowi* %47)
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %51 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SPP_PMTUD_DISABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %58 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %105

62:                                               ; preds = %56, %49
  %63 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %64 = icmp ne %struct.dst_entry* %63, null
  br i1 %64, label %65, label %101

65:                                               ; preds = %62
  %66 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %67 = call i32 @dst_mtu(%struct.dst_entry* %66)
  %68 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %69 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %71 = icmp ne %struct.sctp_association* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %65
  %73 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %74 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %80 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %81 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.sctp_transport*, %struct.sctp_transport** %82, align 8
  %84 = icmp eq %struct.sctp_transport* %79, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %78, %72
  %86 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %87 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (i32*, i32)*, i32 (i32*, i32)** %91, align 8
  %93 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %94 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %93, i32 0, i32 2
  %95 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %96 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %92(i32* %94, i32 %98)
  br label %100

100:                                              ; preds = %85, %78, %65
  br label %105

101:                                              ; preds = %62
  %102 = load i32, i32* @SCTP_DEFAULT_MAXSEGMENT, align 4
  %103 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %104 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %61, %101, %100
  ret void
}

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i32 @memcpy(i32*, %union.sctp_addr*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
