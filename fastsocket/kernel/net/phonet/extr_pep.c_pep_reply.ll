; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pnpipehdr = type { i32, i32, i64, i32 }

@MAX_PNPIPE_HEADER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@pipe_srv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i8*, i32, i32)* @pep_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_reply(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pnpipehdr*, align 8
  %15 = alloca %struct.pnpipehdr*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call i8* @pnp_hdr(%struct.sk_buff* %17)
  %19 = bitcast i8* %18 to %struct.pnpipehdr*
  store %struct.pnpipehdr* %19, %struct.pnpipehdr** %14, align 8
  %20 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %13, align 4
  %25 = call %struct.sk_buff* @alloc_skb(i64 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %16, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %74

31:                                               ; preds = %6
  %32 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = call i32 @skb_set_owner_w(%struct.sk_buff* %32, %struct.sock* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %36 = load i64, i64* @MAX_PNPIPE_HEADER, align 8
  %37 = call i32 @skb_reserve(%struct.sk_buff* %35, i64 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @__skb_put(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %41, i8* %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %46 = call i32 @__skb_push(%struct.sk_buff* %45, i32 24)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %48 = call i32 @skb_reset_transport_header(%struct.sk_buff* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %50 = call i8* @pnp_hdr(%struct.sk_buff* %49)
  %51 = bitcast i8* %50 to %struct.pnpipehdr*
  store %struct.pnpipehdr* %51, %struct.pnpipehdr** %15, align 8
  %52 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %53 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pnpipehdr*, %struct.pnpipehdr** %15, align 8
  %56 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %58 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = load %struct.pnpipehdr*, %struct.pnpipehdr** %15, align 8
  %62 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.pnpipehdr*, %struct.pnpipehdr** %14, align 8
  %64 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pnpipehdr*, %struct.pnpipehdr** %15, align 8
  %67 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.pnpipehdr*, %struct.pnpipehdr** %15, align 8
  %70 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = call i32 @pn_skb_send(%struct.sock* %71, %struct.sk_buff* %72, i32* @pipe_srv)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %31, %28
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i8* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
