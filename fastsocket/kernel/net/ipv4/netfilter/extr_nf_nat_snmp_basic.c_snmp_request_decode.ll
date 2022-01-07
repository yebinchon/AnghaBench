; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_snmp_request_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_snmp_basic.c_snmp_request_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i32 }
%struct.snmp_request = type { i32, i32, i32 }

@ASN1_UNI = common dso_local global i32 0, align 4
@ASN1_PRI = common dso_local global i32 0, align 4
@ASN1_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, %struct.snmp_request*)* @snmp_request_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snmp_request_decode(%struct.asn1_ctx* %0, %struct.snmp_request* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.asn1_ctx*, align 8
  %5 = alloca %struct.snmp_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %4, align 8
  store %struct.snmp_request* %1, %struct.snmp_request** %5, align 8
  %10 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %11 = call i32 @asn1_header_decode(%struct.asn1_ctx* %10, i8** %9, i32* %6, i32* %7, i32* %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8 0, i8* %3, align 1
  br label %88

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ASN1_UNI, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ASN1_PRI, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ASN1_INT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14
  store i8 0, i8* %3, align 1
  br label %88

27:                                               ; preds = %22
  %28 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.snmp_request*, %struct.snmp_request** %5, align 8
  %31 = getelementptr inbounds %struct.snmp_request, %struct.snmp_request* %30, i32 0, i32 2
  %32 = call i32 @asn1_ulong_decode(%struct.asn1_ctx* %28, i8* %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i8 0, i8* %3, align 1
  br label %88

35:                                               ; preds = %27
  %36 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %37 = call i32 @asn1_header_decode(%struct.asn1_ctx* %36, i8** %9, i32* %6, i32* %7, i32* %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i8 0, i8* %3, align 1
  br label %88

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ASN1_UNI, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ASN1_PRI, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ASN1_INT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %40
  store i8 0, i8* %3, align 1
  br label %88

53:                                               ; preds = %48
  %54 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.snmp_request*, %struct.snmp_request** %5, align 8
  %57 = getelementptr inbounds %struct.snmp_request, %struct.snmp_request* %56, i32 0, i32 1
  %58 = call i32 @asn1_uint_decode(%struct.asn1_ctx* %54, i8* %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i8 0, i8* %3, align 1
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %63 = call i32 @asn1_header_decode(%struct.asn1_ctx* %62, i8** %9, i32* %6, i32* %7, i32* %8)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i8 0, i8* %3, align 1
  br label %88

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ASN1_UNI, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @ASN1_PRI, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ASN1_INT, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70, %66
  store i8 0, i8* %3, align 1
  br label %88

79:                                               ; preds = %74
  %80 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.snmp_request*, %struct.snmp_request** %5, align 8
  %83 = getelementptr inbounds %struct.snmp_request, %struct.snmp_request* %82, i32 0, i32 0
  %84 = call i32 @asn1_uint_decode(%struct.asn1_ctx* %80, i8* %81, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  store i8 0, i8* %3, align 1
  br label %88

87:                                               ; preds = %79
  store i8 1, i8* %3, align 1
  br label %88

88:                                               ; preds = %87, %86, %78, %65, %60, %52, %39, %34, %26, %13
  %89 = load i8, i8* %3, align 1
  ret i8 %89
}

declare dso_local i32 @asn1_header_decode(%struct.asn1_ctx*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @asn1_ulong_decode(%struct.asn1_ctx*, i8*, i32*) #1

declare dso_local i32 @asn1_uint_decode(%struct.asn1_ctx*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
