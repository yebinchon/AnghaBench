; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_octetstring_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_octetstring_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"octetstring truncated\00", align 1
@ASN_ERR_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"truncatet octetstring\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_octetstring_raw(%struct.asn_buf* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64*, i64** %9, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %18 = call i32 @asn_error(%struct.asn_buf* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ASN_ERR_RANGE, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %16, %4
  %21 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %22 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %28 = call i32 @asn_error(%struct.asn_buf* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %29, i32* %5, align 4
  br label %66

30:                                               ; preds = %20
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %38 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memcpy(i32* %36, i32 %39, i64 %41)
  br label %50

43:                                               ; preds = %30
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %46 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memcpy(i32* %44, i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i64, i64* %7, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %55 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.asn_buf*, %struct.asn_buf** %6, align 8
  %62 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %50, %26
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
