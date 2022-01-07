; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_ctrlreq_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_ctrlreq_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pnpipehdr = type { i8**, i32, i32, i32 }
%struct.sockaddr_pn = type { i32 }

@MAX_PNPIPE_HEADER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PHONET_HEADER = common dso_local global i32 0, align 4
@PNS_PEP_CTRL_RESP = common dso_local global i32 0, align 4
@PAD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i8*, i32)* @pep_ctrlreq_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_ctrlreq_error(%struct.sock* %0, %struct.sk_buff* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pnpipehdr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.pnpipehdr*, align 8
  %13 = alloca %struct.sockaddr_pn, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %14)
  store %struct.pnpipehdr* %15, %struct.pnpipehdr** %10, align 8
  %16 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %17 = add nsw i64 %16, 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.sk_buff* @alloc_skb(i64 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = call i32 @skb_set_owner_w(%struct.sk_buff* %26, %struct.sock* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = load i32, i32* @MAX_PHONET_HEADER, align 4
  %31 = call i32 @skb_reserve(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = call i64 @skb_put(%struct.sk_buff* %32, i32 28)
  %34 = inttoptr i64 %33 to %struct.pnpipehdr*
  store %struct.pnpipehdr* %34, %struct.pnpipehdr** %12, align 8
  %35 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %36 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %39 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @PNS_PEP_CTRL_RESP, align 4
  %41 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %42 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %44 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %47 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %49 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %54 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %58 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %63 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %68 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  store i8* %66, i8** %70, align 8
  %71 = load i8*, i8** @PAD, align 8
  %72 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %73 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 3
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** @PAD, align 8
  %77 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %78 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 4
  store i8* %76, i8** %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @pn_skb_get_src_sockaddr(%struct.sk_buff* %81, %struct.sockaddr_pn* %13)
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = call i32 @pn_skb_send(%struct.sock* %83, %struct.sk_buff* %84, %struct.sockaddr_pn* %13)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %25, %22
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pn_skb_get_src_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, %struct.sockaddr_pn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
