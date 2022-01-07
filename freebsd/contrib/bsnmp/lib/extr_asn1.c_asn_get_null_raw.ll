; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_null_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_null_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"truncated NULL\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bad length for NULL (%u)\00", align 1
@ASN_ERR_BADLEN = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_null_raw(%struct.asn_buf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %10 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %16 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %8
  %19 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %24 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %29 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %18, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
