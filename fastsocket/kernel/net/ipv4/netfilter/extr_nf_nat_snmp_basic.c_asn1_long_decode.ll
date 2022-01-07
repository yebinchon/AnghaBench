; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_asn1_long_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_asn1_long_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i8*, i32 }

@ASN1_ERR_DEC_BADVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, i8*, i64*)* @asn1_long_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @asn1_long_decode(%struct.asn1_ctx* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.asn1_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %11 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %10, i8* %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %48

14:                                               ; preds = %3
  %15 = load i8, i8* %8, align 1
  %16 = sext i8 %15 to i64
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %38, %14
  %19 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ugt i64 %27, 8
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @ASN1_ERR_DEC_BADVALUE, align 4
  %31 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i8 0, i8* %4, align 1
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %35 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %34, i8* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i8 0, i8* %4, align 1
  br label %48

38:                                               ; preds = %33
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 %40, 8
  store i64 %41, i64* %39, align 8
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i64
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %18

47:                                               ; preds = %18
  store i8 1, i8* %4, align 1
  br label %48

48:                                               ; preds = %47, %37, %29, %13
  %49 = load i8, i8* %4, align 1
  ret i8 %49
}

declare dso_local i32 @asn1_octet_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
