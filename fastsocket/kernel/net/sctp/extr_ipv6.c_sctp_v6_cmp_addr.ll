; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr*)* @sctp_v6_cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_cmp_addr(%union.sctp_addr* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %6 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %7 = bitcast %union.sctp_addr* %6 to %struct.TYPE_9__*
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_9__*
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %108

15:                                               ; preds = %2
  %16 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %17 = bitcast %union.sctp_addr* %16 to %struct.TYPE_9__*
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %15
  %23 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %24 = bitcast %union.sctp_addr* %23 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_INET6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %31 = bitcast %union.sctp_addr* %30 to %struct.TYPE_12__*
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = call i64 @ipv6_addr_v4mapped(%struct.TYPE_13__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %37 = bitcast %union.sctp_addr* %36 to %struct.TYPE_12__*
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %41 = bitcast %union.sctp_addr* %40 to %struct.TYPE_11__*
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %47 = bitcast %union.sctp_addr* %46 to %struct.TYPE_12__*
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  %52 = load i64, i64* %51, align 8
  %53 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %54 = bitcast %union.sctp_addr* %53 to %struct.TYPE_11__*
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %52, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %151

60:                                               ; preds = %45, %35
  br label %61

61:                                               ; preds = %60, %29, %22, %15
  %62 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %63 = bitcast %union.sctp_addr* %62 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %61
  %69 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %70 = bitcast %union.sctp_addr* %69 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AF_INET6, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %68
  %76 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %77 = bitcast %union.sctp_addr* %76 to %struct.TYPE_12__*
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = call i64 @ipv6_addr_v4mapped(%struct.TYPE_13__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %75
  %82 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %83 = bitcast %union.sctp_addr* %82 to %struct.TYPE_12__*
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %87 = bitcast %union.sctp_addr* %86 to %struct.TYPE_11__*
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %81
  %92 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %93 = bitcast %union.sctp_addr* %92 to %struct.TYPE_12__*
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %100 = bitcast %union.sctp_addr* %99 to %struct.TYPE_11__*
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %98, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  store i32 1, i32* %3, align 4
  br label %151

106:                                              ; preds = %91, %81
  br label %107

107:                                              ; preds = %106, %75, %68, %61
  store i32 0, i32* %3, align 4
  br label %151

108:                                              ; preds = %2
  %109 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %110 = bitcast %union.sctp_addr* %109 to %struct.TYPE_12__*
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %113 = bitcast %union.sctp_addr* %112 to %struct.TYPE_12__*
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = call i32 @ipv6_addr_equal(%struct.TYPE_13__* %111, %struct.TYPE_13__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %151

118:                                              ; preds = %108
  %119 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %120 = bitcast %union.sctp_addr* %119 to %struct.TYPE_12__*
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = call i32 @ipv6_addr_type(%struct.TYPE_13__* %121)
  %123 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %118
  %127 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %128 = bitcast %union.sctp_addr* %127 to %struct.TYPE_12__*
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %134 = bitcast %union.sctp_addr* %133 to %struct.TYPE_12__*
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %140 = bitcast %union.sctp_addr* %139 to %struct.TYPE_12__*
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %144 = bitcast %union.sctp_addr* %143 to %struct.TYPE_12__*
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %142, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %151

149:                                              ; preds = %138, %132, %126
  br label %150

150:                                              ; preds = %149, %118
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %148, %117, %107, %105, %59
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @ipv6_addr_v4mapped(%struct.TYPE_13__*) #1

declare dso_local i32 @ipv6_addr_equal(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ipv6_addr_type(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
