; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"bad type for integer (%u)\00", align 1
@ASN_ERR_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_integer(%struct.asn_buf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %10 = call i32 @asn_get_header(%struct.asn_buf* %9, i64* %7, i32* %6)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @ASN_ERR_OK, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @ASN_TYPE_INTEGER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @asn_error(%struct.asn_buf* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ASN_ERR_TAG, align 4
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @asn_get_integer_raw(%struct.asn_buf* %25, i32 %26, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %19, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @asn_get_header(%struct.asn_buf*, i64*, i32*) #1

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, i64) #1

declare dso_local i32 @asn_get_integer_raw(%struct.asn_buf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
