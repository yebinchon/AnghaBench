; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_local_copy_to_xdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_local_copy_to_xdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xdr_skb_reader = type { i32, i64, %struct.sk_buff* }

@xdr_skb_read_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*, %struct.sk_buff*)* @xs_local_copy_to_xdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_local_copy_to_xdr(%struct.xdr_buf* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xdr_skb_reader, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 %12, 4
  store i64 %13, i64* %8, align 8
  %14 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %14, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %17 = load i32, i32* @xdr_skb_read_bits, align 4
  %18 = call i64 @xdr_partial_copy_from_skb(%struct.xdr_buf* %16, i32 0, %struct.xdr_skb_reader* %6, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %6, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @xdr_partial_copy_from_skb(%struct.xdr_buf*, i32, %struct.xdr_skb_reader*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
