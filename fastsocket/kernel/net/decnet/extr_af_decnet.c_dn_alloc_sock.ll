; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_alloc_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_alloc_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32* }
%struct.dn_scp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i64, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64, i64, i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@PF_DECnet = common dso_local global i32 0, align 4
@dn_proto = common dso_local global i32 0, align 4
@dn_proto_ops = common dso_local global i32 0, align 4
@dn_nsp_backlog_rcv = common dso_local global i32 0, align 4
@dn_destruct = common dso_local global i32 0, align 4
@sysctl_decnet_wmem = common dso_local global i32* null, align 8
@sysctl_decnet_rmem = common dso_local global i32* null, align 8
@DN_O = common dso_local global i32 0, align 4
@DN_SEND = common dso_local global i8* null, align 8
@NSP_FC_NONE = common dso_local global i32 0, align 4
@DN_MAX_NSP_DATA_HEADER = common dso_local global i64 0, align 8
@ACC_IMMED = common dso_local global i32 0, align 4
@AF_DECnet = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"LINUX\00", align 1
@NSP_MAX_WINDOW = common dso_local global i32 0, align 4
@NSP_MIN_WINDOW = common dso_local global i32 0, align 4
@NSP_INITIAL_SRTT = common dso_local global i32 0, align 4
@NSP_INITIAL_RTTVAR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@dn_keepalive = common dso_local global i32 0, align 4
@dn_nsp_delayed_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32)* @dn_alloc_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @dn_alloc_sock(%struct.net* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_scp*, align 8
  %8 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = load i32, i32* @PF_DECnet, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.sock* @sk_alloc(%struct.net* %9, i32 %10, i32 %11, i32* @dn_proto)
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %8, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %164

16:                                               ; preds = %3
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = icmp ne %struct.socket* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  store i32* @dn_proto_ops, i32** %21, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = call i32 @sock_init_data(%struct.socket* %23, %struct.sock* %24)
  %26 = load i32, i32* @dn_nsp_backlog_rcv, align 4
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @dn_destruct, align 4
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @PF_DECnet, align 4
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** @sysctl_decnet_wmem, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** @sysctl_decnet_rmem, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sock*, %struct.sock** %8, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = call %struct.dn_scp* @DN_SK(%struct.sock* %52)
  store %struct.dn_scp* %53, %struct.dn_scp** %7, align 8
  %54 = load i32, i32* @DN_O, align 4
  %55 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %56 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %55, i32 0, i32 38
  store i32 %54, i32* %56, align 8
  %57 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %58 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %60 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %62 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %61, i32 0, i32 37
  store i64 0, i64* %62, align 8
  %63 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %64 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %63, i32 0, i32 36
  store i64 0, i64* %64, align 8
  %65 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %66 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %65, i32 0, i32 35
  store i64 0, i64* %66, align 8
  %67 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %68 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %67, i32 0, i32 34
  store i64 0, i64* %68, align 8
  %69 = load i8*, i8** @DN_SEND, align 8
  %70 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %71 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %70, i32 0, i32 33
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @DN_SEND, align 8
  %73 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %74 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %73, i32 0, i32 32
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %76 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %75, i32 0, i32 31
  store i64 0, i64* %76, align 8
  %77 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %78 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %80 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %79, i32 0, i32 30
  store i64 0, i64* %80, align 8
  %81 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %82 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  %83 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %84 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %83, i32 0, i32 29
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @NSP_FC_NONE, align 4
  %86 = or i32 1, %85
  %87 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %88 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %90 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %89, i32 0, i32 28
  store i64 0, i64* %90, align 8
  %91 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %92 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %91, i32 0, i32 5
  store i32 3, i32* %92, align 4
  %93 = load i64, i64* @DN_MAX_NSP_DATA_HEADER, align 8
  %94 = sub nsw i64 230, %93
  %95 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %96 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %95, i32 0, i32 27
  store i64 %94, i64* %96, align 8
  %97 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %98 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %97, i32 0, i32 26
  store i64 0, i64* %98, align 8
  %99 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %100 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %99, i32 0, i32 6
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* @ACC_IMMED, align 4
  %102 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %103 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %102, i32 0, i32 25
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** @AF_DECnet, align 8
  %105 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %106 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %105, i32 0, i32 24
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @AF_DECnet, align 8
  %109 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %110 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %109, i32 0, i32 23
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %113 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %112, i32 0, i32 22
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 5, i32* %114, align 8
  %115 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %116 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %115, i32 0, i32 22
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %120 = load i32, i32* @NSP_MAX_WINDOW, align 4
  %121 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %122 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %121, i32 0, i32 21
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @NSP_MIN_WINDOW, align 4
  %124 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %125 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %124, i32 0, i32 20
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @NSP_INITIAL_SRTT, align 4
  %127 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %128 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %127, i32 0, i32 19
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @NSP_INITIAL_RTTVAR, align 4
  %130 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %131 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %130, i32 0, i32 18
  store i32 %129, i32* %131, align 8
  %132 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %133 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %132, i32 0, i32 17
  store i64 0, i64* %133, align 8
  %134 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %135 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %134, i32 0, i32 16
  %136 = call i32 @skb_queue_head_init(i32* %135)
  %137 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %138 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %137, i32 0, i32 15
  %139 = call i32 @skb_queue_head_init(i32* %138)
  %140 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %141 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %140, i32 0, i32 14
  %142 = call i32 @skb_queue_head_init(i32* %141)
  %143 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %144 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %143, i32 0, i32 13
  store i64 0, i64* %144, align 8
  %145 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %146 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %145, i32 0, i32 12
  store i32* null, i32** %146, align 8
  %147 = load i32, i32* @HZ, align 4
  %148 = mul nsw i32 10, %147
  %149 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %150 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @dn_keepalive, align 4
  %152 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %153 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %152, i32 0, i32 11
  store i32 %151, i32* %153, align 4
  %154 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %155 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %154, i32 0, i32 10
  %156 = call i32 @init_timer(i32* %155)
  %157 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %158 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %157, i32 0, i32 9
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* @dn_nsp_delayed_ack, align 4
  %160 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %161 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 8
  %162 = load %struct.sock*, %struct.sock** %8, align 8
  %163 = call i32 @dn_start_slow_timer(%struct.sock* %162)
  br label %164

164:                                              ; preds = %22, %15
  %165 = load %struct.sock*, %struct.sock** %8, align 8
  ret %struct.sock* %165
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @dn_start_slow_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
