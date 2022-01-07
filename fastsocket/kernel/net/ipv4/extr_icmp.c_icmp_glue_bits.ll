; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_glue_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_glue_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.icmp_bxm = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@icmp_pointers = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* @icmp_glue_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_glue_bits(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.icmp_bxm*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.icmp_bxm*
  store %struct.icmp_bxm* %16, %struct.icmp_bxm** %13, align 8
  %17 = load %struct.icmp_bxm*, %struct.icmp_bxm** %13, align 8
  %18 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.icmp_bxm*, %struct.icmp_bxm** %13, align 8
  %21 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @skb_copy_and_csum_bits(i32 %19, i64 %25, i8* %26, i32 %27, i32 0)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @csum_block_add(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmp_pointers, align 8
  %38 = load %struct.icmp_bxm*, %struct.icmp_bxm** %13, align 8
  %39 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %6
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = load %struct.icmp_bxm*, %struct.icmp_bxm** %13, align 8
  %50 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @nf_ct_attach(%struct.sk_buff* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %6
  ret i32 0
}

declare dso_local i32 @skb_copy_and_csum_bits(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @csum_block_add(i32, i32, i32) #1

declare dso_local i32 @nf_ct_attach(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
