; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c___rta_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c___rta_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtattr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rta_fill(%struct.sk_buff* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rtattr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @RTA_LENGTH(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @RTA_ALIGN(i32 %14)
  %16 = call i64 @skb_put(%struct.sk_buff* %13, i64 %15)
  %17 = inttoptr i64 %16 to %struct.rtattr*
  store %struct.rtattr* %17, %struct.rtattr** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %20 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %23 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %25 = call i64 @RTA_DATA(%struct.rtattr* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @memcpy(i64 %25, i8* %26, i32 %27)
  %29 = load %struct.rtattr*, %struct.rtattr** %9, align 8
  %30 = call i64 @RTA_DATA(%struct.rtattr* %29)
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @RTA_ALIGN(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %35, %37
  %39 = call i32 @memset(i64 %33, i32 0, i64 %38)
  ret void
}

declare dso_local i32 @RTA_LENGTH(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @RTA_ALIGN(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
