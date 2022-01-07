; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad type for NULL (%u)\00", align 1
@ASN_ERR_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_null(%struct.asn_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asn_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %3, align 8
  %7 = load %struct.asn_buf*, %struct.asn_buf** %3, align 8
  %8 = call i32 @asn_get_header(%struct.asn_buf* %7, i64* %4, i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @ASN_ERR_OK, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ASN_TYPE_NULL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.asn_buf*, %struct.asn_buf** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @asn_error(%struct.asn_buf* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @ASN_ERR_TAG, align 4
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.asn_buf*, %struct.asn_buf** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @asn_get_null_raw(%struct.asn_buf* %23, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %17, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @asn_get_header(%struct.asn_buf*, i64*, i32*) #1

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, i64) #1

declare dso_local i32 @asn_get_null_raw(%struct.asn_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
