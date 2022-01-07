; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_snd_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_snd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { i32 }
%struct.pnpipehdr = type { i8**, i32, i32, i32, i64 }
%struct.sk_buff = type { i32 }

@MAX_PNPIPE_HEADER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PNS_PEP_STATUS_IND = common dso_local global i32 0, align 4
@PN_PEP_TYPE_COMMON = common dso_local global i32 0, align 4
@PAD = common dso_local global i8* null, align 8
@pipe_srv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i8*, i32)* @pipe_snd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_snd_status(%struct.sock* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pep_sock*, align 8
  %11 = alloca %struct.pnpipehdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.pep_sock* @pep_sk(%struct.sock* %13)
  store %struct.pep_sock* %14, %struct.pep_sock** %10, align 8
  %15 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %16 = add nsw i64 %15, 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.sk_buff* @alloc_skb(i64 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %74

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = call i32 @skb_set_owner_w(%struct.sk_buff* %25, %struct.sock* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %33 = call i32 @__skb_push(%struct.sk_buff* %32, i32 36)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = call i32 @skb_reset_transport_header(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %36)
  store %struct.pnpipehdr* %37, %struct.pnpipehdr** %11, align 8
  %38 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %39 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @PNS_PEP_STATUS_IND, align 4
  %41 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %42 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pep_sock*, %struct.pep_sock** %10, align 8
  %44 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %47 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @PN_PEP_TYPE_COMMON, align 4
  %49 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %50 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %53 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** @PAD, align 8
  %57 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %58 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** @PAD, align 8
  %62 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %63 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.pnpipehdr*, %struct.pnpipehdr** %11, align 8
  %68 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 4
  store i8* %66, i8** %70, align 8
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = call i32 @pn_skb_send(%struct.sock* %71, %struct.sk_buff* %72, i32* @pipe_srv)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %24, %21
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
