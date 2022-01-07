; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"no identifier for header\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@ASN_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"types > 0x30 not supported (%u)\00", align 1
@ASN_ERR_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"no length field\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"indefinite length not supported\00", align 1
@ASN_MAXLENLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"long length too long (%u)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"long length truncated\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"len %u exceeding asn_len %u\00", align 1
@ASN_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_header(%struct.asn_buf* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %10 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %15 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %16, i32* %4, align 4
  br label %147

17:                                               ; preds = %3
  %18 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %19 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ASN_TYPE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp sgt i32 %26, 48
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASN_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %35, i32* %4, align 4
  br label %147

36:                                               ; preds = %17
  %37 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %38 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %38, align 8
  %41 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %42 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %46 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %51 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %52, i32* %4, align 4
  br label %147

53:                                               ; preds = %36
  %54 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %55 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %53
  %61 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %62 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %62, align 8
  %65 = load i32, i32* %63, align 4
  %66 = and i32 %65, 127
  store i32 %66, i32* %8, align 4
  %67 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %68 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %75 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %76, i32* %4, align 4
  br label %147

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ASN_MAXLENLEN, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ASN_ERR_FAILED, align 4
  store i32 %85, i32* %4, align 4
  br label %147

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %89 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %94 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %95, i32* %4, align 4
  br label %147

96:                                               ; preds = %86
  %97 = load i32*, i32** %7, align 8
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %102, %96
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %8, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %107 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %107, align 8
  %110 = load i32, i32* %108, align 4
  %111 = or i32 %105, %110
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %114 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 8
  br label %98

117:                                              ; preds = %98
  br label %129

118:                                              ; preds = %53
  %119 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %120 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %120, align 8
  %123 = load i32, i32* %121, align 4
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %126 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %118, %117
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %133 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %141 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %144, i32* %4, align 4
  br label %147

145:                                              ; preds = %129
  %146 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %136, %92, %81, %73, %49, %28, %13
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
