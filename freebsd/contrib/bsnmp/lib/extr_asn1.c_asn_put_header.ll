; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_put_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_put_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32* }

@ASN_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"types > 0x30 not supported (%u)\00", align 1
@ASN_ERR_FAILED = common dso_local global i32 0, align 4
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_put_header(%struct.asn_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ASN_TYPE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp sgt i32 %11, 48
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ASN_TYPE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @asn_error(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %21 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %29 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %29, align 8
  store i32 %27, i32* %30, align 4
  %32 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %33 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @asn_put_len(i32* null, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %40, i32* %4, align 4
  br label %66

41:                                               ; preds = %26
  %42 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %43 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %41
  %50 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %51 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @asn_put_len(i32* %52, i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %57 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %55
  store i32* %59, i32** %57, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %62 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %49, %47, %39, %24, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @asn_error(i32*, i8*, i32) #1

declare dso_local i64 @asn_put_len(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
