; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_option_ndp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_option_ndp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@DCCP_MAX_OPT_LEN = common dso_local global i64 0, align 8
@DCCPO_NDP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_insert_option_ndp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_insert_option_ndp(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %6, align 8
  %13 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %14 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i64 @dccp_non_data_packet(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %21 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %26 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @dccp_ndp_len(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %10, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i64, i64* @DCCP_MAX_OPT_LEN, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %69

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %47
  store i64 %52, i64* %50, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @skb_push(%struct.sk_buff* %53, i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* @DCCPO_NDP_COUNT, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i32, i32* %10, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i64, i64* %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dccp_encode_value_var(i64 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %45, %27
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @dccp_non_data_packet(%struct.sk_buff*) #1

declare dso_local i32 @dccp_ndp_len(i64) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @dccp_encode_value_var(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
