; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_real_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_real_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"truncated integer\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"zero-length integer\00", align 1
@ASN_ERR_BADLEN = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_ERR_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"non-minimal integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_buf*, i32, i32*)* @asn_get_real_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn_get_real_integer(%struct.asn_buf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %12 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %18 = call i32 @asn_error(%struct.asn_buf* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %19, i32* %4, align 4
  br label %124

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %25 = call i32 @asn_error(%struct.asn_buf* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %27, i32* %4, align 4
  br label %124

28:                                               ; preds = %20
  %29 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ASN_ERR_RANGE, align 4
  store i32 %33, i32* %10, align 4
  br label %70

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %69

37:                                               ; preds = %34
  %38 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %39 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %45 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %53 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %59 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %65, label %69

65:                                               ; preds = %57, %43
  %66 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %67 = call i32 @asn_error(%struct.asn_buf* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %57, %51, %34
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %72 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 128
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %70
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %99, %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  %82 = icmp ne i32 %80, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %84, 8
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %90 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, -1
  br label %99

94:                                               ; preds = %83
  %95 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %96 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %94, %88
  %100 = phi i32 [ %93, %88 ], [ %98, %94 ]
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %104 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %108 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %108, align 8
  br label %79

111:                                              ; preds = %79
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 0, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  br label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %23, %16
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
