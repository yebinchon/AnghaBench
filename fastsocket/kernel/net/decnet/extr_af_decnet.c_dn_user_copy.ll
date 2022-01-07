; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_user_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_user_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.optdata_dn = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.optdata_dn*)* @dn_user_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_user_copy(%struct.sk_buff* %0, %struct.optdata_dn* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.optdata_dn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.optdata_dn* %1, %struct.optdata_dn** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %5, align 8
  %12 = load i8, i8* %10, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 16
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load %struct.optdata_dn*, %struct.optdata_dn** %4, align 8
  %21 = getelementptr inbounds %struct.optdata_dn, %struct.optdata_dn* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.optdata_dn*, %struct.optdata_dn** %4, align 8
  %23 = getelementptr inbounds %struct.optdata_dn, %struct.optdata_dn* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.optdata_dn*, %struct.optdata_dn** %4, align 8
  %25 = getelementptr inbounds %struct.optdata_dn, %struct.optdata_dn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcpy(i32 %26, i8* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @skb_pull(%struct.sk_buff* %30, i32 %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
