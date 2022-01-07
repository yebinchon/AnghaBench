; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_option_elapsed_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_option_elapsed_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DCCP_MAX_OPT_LEN = common dso_local global i64 0, align 8
@DCCPO_ELAPSED_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_insert_option_elapsed_time(%struct.sock* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @dccp_elapsed_time_len(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 2, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* @DCCP_MAX_OPT_LEN, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %64

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %33
  store i64 %38, i64* %36, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @skb_push(%struct.sk_buff* %39, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i32, i32* @DCCPO_ELAPSED_TIME, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %9, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %58

52:                                               ; preds = %31
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @htons(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @memcpy(i8* %56, i32* %11, i32 2)
  br label %63

58:                                               ; preds = %31
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @htonl(i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @memcpy(i8* %61, i32* %12, i32 4)
  br label %63

63:                                               ; preds = %58, %52
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %30, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dccp_elapsed_time_len(i64) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
