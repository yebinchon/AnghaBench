; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_err_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_err_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.sctphdr = type { i32 }
%struct.sctp_association = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sctp_transport = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %struct.sk_buff*, i32)* }
%struct.sctp_init_chunk = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@SCTP_CID_INIT = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @sctp_err_lookup(i32 %0, %struct.sk_buff* %1, %struct.sctphdr* %2, %struct.sctp_association** %3, %struct.sctp_transport** %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sctphdr*, align 8
  %10 = alloca %struct.sctp_association**, align 8
  %11 = alloca %struct.sctp_transport**, align 8
  %12 = alloca %union.sctp_addr, align 4
  %13 = alloca %union.sctp_addr, align 4
  %14 = alloca %struct.sctp_af*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca %struct.sctp_association*, align 8
  %17 = alloca %struct.sctp_transport*, align 8
  %18 = alloca %struct.sctp_init_chunk*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.sctphdr* %2, %struct.sctphdr** %9, align 8
  store %struct.sctp_association** %3, %struct.sctp_association*** %10, align 8
  store %struct.sctp_transport** %4, %struct.sctp_transport*** %11, align 8
  store %struct.sock* null, %struct.sock** %15, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %17, align 8
  %21 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %22 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  store i64 %24, i64* %19, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %30 = bitcast %struct.sctphdr* %29 to i8*
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = ptrtoint i8* %30 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sub nsw i64 %28, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %20, align 4
  %40 = load %struct.sctp_association**, %struct.sctp_association*** %10, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %40, align 8
  %41 = load %struct.sctp_transport**, %struct.sctp_transport*** %11, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.sctp_af* @sctp_get_af_specific(i32 %42)
  store %struct.sctp_af* %43, %struct.sctp_af** %14, align 8
  %44 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %45 = icmp ne %struct.sctp_af* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %5
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %132

51:                                               ; preds = %5
  %52 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %53 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %52, i32 0, i32 0
  %54 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 %54(%union.sctp_addr* %12, %struct.sk_buff* %55, i32 1)
  %57 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %58 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %57, i32 0, i32 0
  %59 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 %59(%union.sctp_addr* %13, %struct.sk_buff* %60, i32 0)
  %62 = call %struct.sctp_association* @__sctp_lookup_association(%union.sctp_addr* %12, %union.sctp_addr* %13, %struct.sctp_transport** %17)
  store %struct.sctp_association* %62, %struct.sctp_association** %16, align 8
  %63 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %64 = icmp ne %struct.sctp_association* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %51
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %132

66:                                               ; preds = %51
  %67 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.sock*, %struct.sock** %69, align 8
  store %struct.sock* %70, %struct.sock** %15, align 8
  %71 = load i64, i64* %19, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %66
  %74 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %75 = bitcast %struct.sctphdr* %74 to i8*
  %76 = getelementptr i8, i8* %75, i64 4
  %77 = bitcast i8* %76 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %77, %struct.sctp_init_chunk** %18, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %79, 12
  br i1 %80, label %99, label %81

81:                                               ; preds = %73
  %82 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %18, align 8
  %83 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SCTP_CID_INIT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %99, label %88

88:                                               ; preds = %81
  %89 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %18, align 8
  %90 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @ntohl(i32 %92)
  %94 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88, %81, %73
  br label %125

100:                                              ; preds = %88
  br label %110

101:                                              ; preds = %66
  %102 = load i64, i64* %19, align 8
  %103 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %104 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %125

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %100
  %111 = load %struct.sock*, %struct.sock** %15, align 8
  %112 = call i32 @sctp_bh_lock_sock(%struct.sock* %111)
  %113 = load %struct.sock*, %struct.sock** %15, align 8
  %114 = call i64 @sock_owned_by_user(%struct.sock* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %118 = call i32 @NET_INC_STATS_BH(i32* @init_net, i32 %117)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %121 = load %struct.sctp_association**, %struct.sctp_association*** %10, align 8
  store %struct.sctp_association* %120, %struct.sctp_association** %121, align 8
  %122 = load %struct.sctp_transport*, %struct.sctp_transport** %17, align 8
  %123 = load %struct.sctp_transport**, %struct.sctp_transport*** %11, align 8
  store %struct.sctp_transport* %122, %struct.sctp_transport** %123, align 8
  %124 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %124, %struct.sock** %6, align 8
  br label %132

125:                                              ; preds = %108, %99
  %126 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %127 = icmp ne %struct.sctp_association* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.sctp_association*, %struct.sctp_association** %16, align 8
  %130 = call i32 @sctp_association_put(%struct.sctp_association* %129)
  br label %131

131:                                              ; preds = %128, %125
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %132

132:                                              ; preds = %131, %119, %65, %50
  %133 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %133
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctp_association* @__sctp_lookup_association(%union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32*, i32) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
