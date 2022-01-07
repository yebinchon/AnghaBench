; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_uint32_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_uint32_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"uint32 too long %u\00", align 1
@ASN_ERR_BADLEN = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"uint32 too large %llu\00", align 1
@ASN_ERR_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_uint32_raw(%struct.asn_buf* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.asn_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @asn_get_real_unsigned(%struct.asn_buf* %9, i32 %10, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @ASN_ERR_OK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @asn_error(%struct.asn_buf* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %21, i32* %8, align 4
  br label %32

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @UINT32_MAX, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.asn_buf*, %struct.asn_buf** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @asn_error(%struct.asn_buf* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ASN_ERR_RANGE, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @asn_get_real_unsigned(%struct.asn_buf*, i32, i32*) #1

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
