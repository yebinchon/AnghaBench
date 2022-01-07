; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_integer_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_integer_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_ERR_BADLEN = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@ASN_ERR_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_integer_raw(%struct.asn_buf* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @asn_get_real_integer(%struct.asn_buf* %9, i32 %10, i64* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @ASN_ERR_OK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %18, i32* %8, align 4
  br label %30

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @INT32_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @INT32_MIN, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @ASN_ERR_RANGE, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @asn_get_real_integer(%struct.asn_buf*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
