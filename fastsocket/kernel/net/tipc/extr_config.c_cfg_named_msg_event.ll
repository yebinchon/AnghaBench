; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_named_msg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_named_msg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.tipc_portid = type { i32 }
%struct.tipc_name_seq = type { i32 }
%struct.tipc_cfg_msg_hdr = type { i32, i32, i32 }

@TCM_F_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid configuration message discarded\0A\00", align 1
@BUF_HEADROOM = common dso_local global i64 0, align 8
@MAX_H_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.sk_buff**, i32*, i32, i32, %struct.tipc_portid*, %struct.tipc_name_seq*)* @cfg_named_msg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_named_msg_event(i8* %0, i32 %1, %struct.sk_buff** %2, i32* %3, i32 %4, i32 %5, %struct.tipc_portid* %6, %struct.tipc_name_seq* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tipc_portid*, align 8
  %16 = alloca %struct.tipc_name_seq*, align 8
  %17 = alloca %struct.tipc_cfg_msg_hdr*, align 8
  %18 = alloca %struct.tipc_cfg_msg_hdr*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.tipc_portid* %6, %struct.tipc_portid** %15, align 8
  store %struct.tipc_name_seq* %7, %struct.tipc_name_seq** %16, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = bitcast i32* %20 to %struct.tipc_cfg_msg_hdr*
  store %struct.tipc_cfg_msg_hdr* %21, %struct.tipc_cfg_msg_hdr** %17, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 12
  br i1 %24, label %40, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %17, align 8
  %28 = getelementptr inbounds %struct.tipc_cfg_msg_hdr, %struct.tipc_cfg_msg_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  %31 = call i32 @TCM_ALIGN(i32 %30)
  %32 = icmp ne i32 %26, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %17, align 8
  %35 = getelementptr inbounds %struct.tipc_cfg_msg_hdr, %struct.tipc_cfg_msg_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  %38 = load i32, i32* @TCM_F_REQUEST, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %25, %8
  %41 = call i32 @warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %98

42:                                               ; preds = %33
  %43 = load %struct.tipc_portid*, %struct.tipc_portid** %15, align 8
  %44 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %17, align 8
  %47 = getelementptr inbounds %struct.tipc_cfg_msg_hdr, %struct.tipc_cfg_msg_hdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, 12
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* @BUF_HEADROOM, align 8
  %57 = load i64, i64* @MAX_H_SIZE, align 8
  %58 = add nsw i64 %56, %57
  %59 = add i64 %58, 12
  %60 = call %struct.sk_buff* @tipc_cfg_do_cmd(i32 %45, i32 %49, i32* %51, i32 %55, i64 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %19, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %42
  %64 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %65 = call i32 @skb_push(%struct.sk_buff* %64, i32 12)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.tipc_cfg_msg_hdr*
  store %struct.tipc_cfg_msg_hdr* %69, %struct.tipc_cfg_msg_hdr** %18, align 8
  %70 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %18, align 8
  %71 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %17, align 8
  %72 = call i32 @memcpy(%struct.tipc_cfg_msg_hdr* %70, %struct.tipc_cfg_msg_hdr* %71, i32 12)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @htonl(i32 %75)
  %77 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %18, align 8
  %78 = getelementptr inbounds %struct.tipc_cfg_msg_hdr, %struct.tipc_cfg_msg_hdr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @TCM_F_REQUEST, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @htons(i32 %80)
  %82 = load %struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr** %18, align 8
  %83 = getelementptr inbounds %struct.tipc_cfg_msg_hdr, %struct.tipc_cfg_msg_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %90

86:                                               ; preds = %42
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %87, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %19, align 8
  %89 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %89, align 8
  br label %90

90:                                               ; preds = %86, %63
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.tipc_portid*, %struct.tipc_portid** %15, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @tipc_send_buf2port(i32 %91, %struct.tipc_portid* %92, %struct.sk_buff* %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %40
  ret void
}

declare dso_local i32 @TCM_ALIGN(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.sk_buff* @tipc_cfg_do_cmd(i32, i32, i32*, i32, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.tipc_cfg_msg_hdr*, %struct.tipc_cfg_msg_hdr*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @tipc_send_buf2port(i32, %struct.tipc_portid*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
