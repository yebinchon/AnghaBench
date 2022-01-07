; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_TYPE_SEQUENCE = common dso_local global i32 0, align 4
@ASN_TYPE_CONSTRUCTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad sequence type %u\00", align 1
@ASN_ERR_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"truncated sequence\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_sequence(%struct.asn_buf* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = call i32 @asn_get_header(%struct.asn_buf* %8, i32* %6, i64* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @ASN_ERR_OK, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ASN_TYPE_SEQUENCE, align 4
  %18 = load i32, i32* @ASN_TYPE_CONSTRUCTED, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ASN_ERR_TAG, align 4
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %15
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %30 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %35 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %33, %21, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @asn_get_header(%struct.asn_buf*, i32*, i64*) #1

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
