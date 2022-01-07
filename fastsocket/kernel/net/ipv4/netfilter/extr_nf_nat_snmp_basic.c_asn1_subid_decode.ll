; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_asn1_subid_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_asn1_subid_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, i64*)* @asn1_subid_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @asn1_subid_decode(%struct.asn1_ctx* %0, i64* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.asn1_ctx*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %10 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %9, i8* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i8 0, i8* %3, align 1
  br label %30

13:                                               ; preds = %8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = shl i64 %15, 7
  store i64 %16, i64* %14, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 127
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %22, %20
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %8, label %29

29:                                               ; preds = %24
  store i8 1, i8* %3, align 1
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i8, i8* %3, align 1
  ret i8 %31
}

declare dso_local i32 @asn1_octet_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
