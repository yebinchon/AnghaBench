; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_real_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_real_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"truncated integer\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"zero-length integer\00", align 1
@ASN_ERR_BADLEN = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_ERR_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"non-minimal unsigned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_buf*, i32, i32*)* @asn_get_real_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn_get_real_unsigned(%struct.asn_buf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %10 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %16 = call i32 @asn_error(%struct.asn_buf* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %17, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %23 = call i32 @asn_error(%struct.asn_buf* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %18
  %27 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %30 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %40 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %26
  %45 = load i32*, i32** %7, align 8
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* @ASN_ERR_RANGE, align 4
  store i32 %46, i32* %8, align 4
  br label %69

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %52 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %58 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %66 = call i32 @asn_error(%struct.asn_buf* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %56, %50, %47
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %79 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %79, align 8
  %82 = load i32, i32* %80, align 4
  %83 = or i32 %77, %82
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %86 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %21, %14
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
