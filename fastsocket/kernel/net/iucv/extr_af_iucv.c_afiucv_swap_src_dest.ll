; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_swap_src_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_swap_src_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.af_iucv_trans_hdr = type { i8*, i8*, i8*, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @afiucv_swap_src_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afiucv_swap_src_dest(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.af_iucv_trans_hdr*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.af_iucv_trans_hdr*
  store %struct.af_iucv_trans_hdr* %9, %struct.af_iucv_trans_hdr** %3, align 8
  %10 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @ASCEBC(i8* %12, i32 8)
  %14 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %15 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @ASCEBC(i8* %16, i32 8)
  %18 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %19 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @ASCEBC(i8* %20, i32 8)
  %22 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @ASCEBC(i8* %24, i32 8)
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %27 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %28 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @memcpy(i8* %26, i8* %29, i32 8)
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %32 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %33 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @memcpy(i8* %31, i8* %34, i32 8)
  %36 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %37 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %40 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @memcpy(i8* %38, i8* %41, i32 8)
  %43 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %44 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %47 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @memcpy(i8* %45, i8* %48, i32 8)
  %50 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %51 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %54 = call i32 @memcpy(i8* %52, i8* %53, i32 8)
  %55 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %56 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %59 = call i32 @memcpy(i8* %57, i8* %58, i32 8)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %61 = load i32, i32* @ETH_HLEN, align 4
  %62 = call i32 @skb_push(%struct.sk_buff* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @ETH_HLEN, align 4
  %67 = call i32 @memset(i64 %65, i32 0, i32 %66)
  ret void
}

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
