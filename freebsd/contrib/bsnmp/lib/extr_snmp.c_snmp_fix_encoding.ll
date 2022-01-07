; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_fix_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_fix_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64 }
%struct.snmp_pdu = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.TYPE_2__, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@ASN_ERR_OK = common dso_local global i64 0, align 8
@SNMP_CODE_FAILED = common dso_local global i32 0, align 4
@SNMP_V3 = common dso_local global i64 0, align 8
@SNMP_SECMODEL_USM = common dso_local global i64 0, align 8
@SNMP_CODE_OK = common dso_local global i64 0, align 8
@SNMP_PRIV_NOPRIV = common dso_local global i64 0, align 8
@SNMP_MSG_AUTH_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_fix_encoding(%struct.asn_buf* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %9 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %10 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %9, i32 0, i32 12
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @asn_commit_header(%struct.asn_buf* %8, i64 %11, i64* null)
  %13 = load i64, i64* @ASN_ERR_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @asn_commit_header(%struct.asn_buf* %16, i64 %19, i64* null)
  %21 = load i64, i64* @ASN_ERR_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %24, i32* %3, align 4
  br label %151

25:                                               ; preds = %15
  %26 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %27 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNMP_V3, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %25
  %32 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %33 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %34 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @asn_commit_header(%struct.asn_buf* %32, i64 %35, i64* null)
  %37 = load i64, i64* @ASN_ERR_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %40, i32* %3, align 4
  br label %151

41:                                               ; preds = %31
  %42 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %43 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 10
  store i64 %48, i64* %50, align 8
  %51 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %52 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %53 = call i64 @snmp_pdu_fix_padd(%struct.asn_buf* %51, %struct.snmp_pdu* %52)
  %54 = load i64, i64* @ASN_ERR_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %57, i32* %3, align 4
  br label %151

58:                                               ; preds = %41
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNMP_SECMODEL_USM, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %65, i32* %3, align 4
  br label %151

66:                                               ; preds = %58
  %67 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %68 = call i64 @snmp_pdu_encrypt(%struct.snmp_pdu* %67)
  %69 = load i64, i64* @SNMP_CODE_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %72, i32* %3, align 4
  br label %151

73:                                               ; preds = %66
  %74 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %75 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SNMP_PRIV_NOPRIV, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %82 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %83 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @asn_commit_header(%struct.asn_buf* %81, i64 %84, i64* null)
  %86 = load i64, i64* @ASN_ERR_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %89, i32* %3, align 4
  br label %151

90:                                               ; preds = %80, %73
  br label %91

91:                                               ; preds = %90, %25
  %92 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %93 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %94 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @asn_commit_header(%struct.asn_buf* %92, i64 %95, i64* %6)
  %97 = load i64, i64* @ASN_ERR_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %100, i32* %3, align 4
  br label %151

101:                                              ; preds = %91
  %102 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %103 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %106 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %110 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %109, i32 0, i32 6
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %113 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %117 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SNMP_V3, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %101
  %122 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %123 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %124 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @snmp_pdu_calc_digest(%struct.snmp_pdu* %122, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* @SNMP_CODE_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @SNMP_CODE_FAILED, align 4
  store i32 %131, i32* %3, align 4
  br label %151

132:                                              ; preds = %121
  %133 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %134 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %141 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %144 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @memcpy(i64 %142, i32 %145, i32 4)
  br label %147

147:                                              ; preds = %139, %132
  br label %148

148:                                              ; preds = %147, %101
  %149 = load i64, i64* @SNMP_CODE_OK, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %130, %99, %88, %71, %64, %56, %39, %23
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @asn_commit_header(%struct.asn_buf*, i64, i64*) #1

declare dso_local i64 @snmp_pdu_fix_padd(%struct.asn_buf*, %struct.snmp_pdu*) #1

declare dso_local i64 @snmp_pdu_encrypt(%struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_calc_digest(%struct.snmp_pdu*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
