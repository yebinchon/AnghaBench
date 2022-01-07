; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_put_octetstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_put_octetstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32 }

@ASN_TYPE_OCTETSTRING = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_put_octetstring(%struct.asn_buf* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %10 = load i32, i32* @ASN_TYPE_OCTETSTRING, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @asn_put_header(%struct.asn_buf* %9, i32 %10, i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @ASN_ERR_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %19 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %27 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @memcpy(i32 %28, i32* %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %34 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %41 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %25, %23, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @asn_put_header(%struct.asn_buf*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
