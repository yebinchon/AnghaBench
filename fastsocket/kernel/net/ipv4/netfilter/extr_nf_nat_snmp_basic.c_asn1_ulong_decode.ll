; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_asn1_ulong_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_asn1_ulong_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i8*, i32 }

@ASN1_ERR_DEC_BADVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, i8*, i64*)* @asn1_ulong_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @asn1_ulong_decode(%struct.asn1_ctx* %0, i8* %1, i64* %2) #0 {
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
  br label %54

14:                                               ; preds = %3
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i64
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %23

22:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %44, %23
  %25 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %33, 8
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ASN1_ERR_DEC_BADVALUE, align 4
  %37 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  store i8 0, i8* %4, align 1
  br label %54

39:                                               ; preds = %30
  %40 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %41 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %40, i8* %8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i8 0, i8* %4, align 1
  br label %54

44:                                               ; preds = %39
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = shl i64 %46, 8
  store i64 %47, i64* %45, align 8
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i64
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %24

53:                                               ; preds = %24
  store i8 1, i8* %4, align 1
  br label %54

54:                                               ; preds = %53, %43, %35, %13
  %55 = load i8, i8* %4, align 1
  ret i8 %55
}

declare dso_local i32 @asn1_octet_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
