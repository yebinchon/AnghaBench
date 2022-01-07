; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_objid_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_objid_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32* }
%struct.asn_oid = type { i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"truncated OBJID\00", align 1
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"short OBJID\00", align 1
@ASN_ERR_BADLEN = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"OID too long (%u)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unterminated subid\00", align 1
@ASN_MAXID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"OBID subid too larger\00", align 1
@ASN_ERR_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_objid_raw(%struct.asn_buf* %0, i64 %1, %struct.asn_oid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.asn_oid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.asn_oid* %2, %struct.asn_oid** %7, align 8
  %10 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %11 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %17 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %18, i32* %4, align 4
  br label %174

19:                                               ; preds = %3
  %20 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %26 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %28 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %31 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 0, i32* %34, align 4
  %35 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %36 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %39 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %43, i32* %4, align 4
  br label %174

44:                                               ; preds = %19
  %45 = load i32, i32* @ASN_ERR_OK, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %171, %44
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %172

49:                                               ; preds = %46
  %50 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %51 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %57 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %58 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %63 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %61
  store i32* %65, i32** %63, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %68 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @ASN_ERR_BADLEN, align 4
  store i32 %71, i32* %4, align 4
  br label %174

72:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %104, %72
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %78 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %79, i32* %4, align 4
  br label %174

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ASN_MAXID, align 4
  %83 = ashr i32 %82, 7
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %87 = call i32 (%struct.asn_buf*, i8*, ...) @asn_error(%struct.asn_buf* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @ASN_ERR_RANGE, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %90, 7
  %92 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %93 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 127
  %97 = or i32 %91, %96
  store i32 %97, i32* %8, align 4
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %6, align 8
  %100 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %101 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %89
  %105 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %106 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %106, align 8
  %109 = load i32, i32* %107, align 4
  %110 = and i32 %109, 128
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %73, label %112

112:                                              ; preds = %104
  %113 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %114 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 80
  br i1 %119, label %120, label %141

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = sdiv i32 %121, 40
  %123 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %124 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %127 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %122, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = srem i32 %131, 40
  %133 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %134 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %137 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %132, i32* %140, align 4
  br label %160

141:                                              ; preds = %117
  %142 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %143 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %146 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 2, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %150, 80
  %152 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %153 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %156 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %151, i32* %159, align 4
  br label %160

160:                                              ; preds = %141, %120
  br label %171

161:                                              ; preds = %112
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %164 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.asn_oid*, %struct.asn_oid** %7, align 8
  %167 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %162, i32* %170, align 4
  br label %171

171:                                              ; preds = %161, %160
  br label %46

172:                                              ; preds = %46
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %76, %55, %24, %15
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
