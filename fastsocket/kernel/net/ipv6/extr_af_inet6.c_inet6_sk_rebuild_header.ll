; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_sk_rebuild_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_sk_rebuild_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_2__*, i32, %struct.in6_addr, %struct.in6_addr, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.flowi = type { %struct.in6_addr, i32, i32, i32, i32, %struct.in6_addr, i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_sk_rebuild_header(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.flowi, align 4
  %11 = alloca %struct.rt0_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %12)
  store %struct.ipv6_pinfo* %13, %struct.ipv6_pinfo** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %16 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %14, i32 %17)
  store %struct.dst_entry* %18, %struct.dst_entry** %5, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %20 = icmp eq %struct.dst_entry* %19, null
  br i1 %20, label %21, label %112

21:                                               ; preds = %1
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call %struct.inet_sock* @inet_sk(%struct.sock* %22)
  store %struct.inet_sock* %23, %struct.inet_sock** %7, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %8, align 8
  %24 = call i32 @memset(%struct.flowi* %10, i32 0, i32 28)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 6
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %30 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %31 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %30, i32 0, i32 3
  %32 = call i32 @ipv6_addr_copy(%struct.in6_addr* %29, %struct.in6_addr* %31)
  %33 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 5
  %34 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %35 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %34, i32 0, i32 2
  %36 = call i32 @ipv6_addr_copy(%struct.in6_addr* %33, %struct.in6_addr* %35)
  %37 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %38 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %50 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call i32 @security_sk_classify_flow(%struct.sock* %53, %struct.flowi* %10)
  %55 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %56 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %21
  %60 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %61 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %68 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %72, %struct.rt0_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %74 = call i32 @ipv6_addr_copy(%struct.in6_addr* %9, %struct.in6_addr* %73)
  %75 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %76 = load %struct.rt0_hdr*, %struct.rt0_hdr** %11, align 8
  %77 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %76, i32 0, i32 0
  %78 = load %struct.in6_addr*, %struct.in6_addr** %77, align 8
  %79 = call i32 @ipv6_addr_copy(%struct.in6_addr* %75, %struct.in6_addr* %78)
  store %struct.in6_addr* %9, %struct.in6_addr** %8, align 8
  br label %80

80:                                               ; preds = %66, %59, %21
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @ip6_dst_lookup(%struct.sock* %81, %struct.dst_entry** %5, %struct.flowi* %10)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %113

89:                                               ; preds = %80
  %90 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %91 = icmp ne %struct.in6_addr* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %94 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %95 = call i32 @ipv6_addr_copy(%struct.in6_addr* %93, %struct.in6_addr* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = call i32 @sock_net(%struct.sock* %97)
  %99 = load %struct.sock*, %struct.sock** %3, align 8
  %100 = call i32 @xfrm_lookup(i32 %98, %struct.dst_entry** %5, %struct.flowi* %10, %struct.sock* %99, i32 0)
  store i32 %100, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 0, %103
  %105 = load %struct.sock*, %struct.sock** %3, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %113

108:                                              ; preds = %96
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %111 = call i32 @__ip6_dst_store(%struct.sock* %109, %struct.dst_entry* %110, i32* null, i32* null)
  br label %112

112:                                              ; preds = %108, %1
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %102, %85
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @__ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
