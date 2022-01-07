; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DCCP_MAX_OPT_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_insert_option(%struct.sock* %0, %struct.sk_buff* %1, i8 zeroext %2, i8* %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i8 %4, i8* %11, align 1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %11, align 1
  %18 = zext i8 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = add nsw i64 %19, 2
  %21 = load i64, i64* @DCCP_MAX_OPT_LEN, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %53

24:                                               ; preds = %5
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %28
  store i64 %33, i64* %31, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %36, 2
  %38 = trunc i32 %37 to i8
  %39 = call i8* @skb_push(%struct.sk_buff* %34, i8 zeroext %38)
  store i8* %39, i8** %12, align 8
  %40 = load i8, i8* %9, align 1
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %12, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %44, 2
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %12, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %11, align 1
  %52 = call i32 @memcpy(i8* %49, i8* %50, i8 zeroext %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %24, %23
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
