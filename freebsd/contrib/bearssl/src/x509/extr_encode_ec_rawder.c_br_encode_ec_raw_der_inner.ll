; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_ec_rawder.c_br_encode_ec_raw_der_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_ec_rawder.c_br_encode_ec_raw_der_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32 }
%struct.TYPE_5__ = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_encode_ec_raw_der_inner(i8* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @br_get_curve_OID(i32 %24)
  store i8* %25, i8** %16, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %202

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %4
  store i8* null, i8** %16, align 8
  br label %31

31:                                               ; preds = %30, %29
  store i64 3, i64* %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @len_of_len(i64 %34)
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 4, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %12, align 8
  br label %52

51:                                               ; preds = %31
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %51, %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = icmp eq %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %73

56:                                               ; preds = %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @len_of_len(i64 %59)
  %61 = add nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @len_of_len(i64 %67)
  %69 = add nsw i32 1, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %56, %55
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %74, %75
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %76, %77
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %78, %79
  store i64 %80, i64* %15, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load i64, i64* %15, align 8
  %85 = call i32 @len_of_len(i64 %84)
  %86 = add nsw i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %5, align 8
  br label %202

90:                                               ; preds = %73
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %17, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %17, align 8
  store i8 48, i8* %92, align 1
  %94 = load i8*, i8** %17, align 8
  %95 = load i64, i64* %15, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i64 @br_asn1_encode_length(i8* %94, i32 %96)
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %17, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %17, align 8
  store i8 2, i8* %101, align 1
  %103 = load i8*, i8** %17, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %17, align 8
  store i8 1, i8* %103, align 1
  %105 = load i8*, i8** %17, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %17, align 8
  store i8 1, i8* %105, align 1
  %107 = load i8*, i8** %17, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %17, align 8
  store i8 4, i8* %107, align 1
  %109 = load i8*, i8** %17, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i64 @br_asn1_encode_length(i8* %109, i32 %113)
  %115 = load i8*, i8** %17, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %17, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i8
  %125 = call i32 @memcpy(i8* %117, i8* %120, i8 zeroext %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %17, align 8
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %90
  %134 = load i8*, i8** %17, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %17, align 8
  store i8 -96, i8* %134, align 1
  %136 = load i8*, i8** %16, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %139, 2
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %17, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %17, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i8*, i8** %17, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %17, align 8
  store i8 6, i8* %144, align 1
  %146 = load i8*, i8** %17, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, 1
  %153 = trunc i32 %152 to i8
  %154 = call i32 @memcpy(i8* %146, i8* %147, i8 zeroext %153)
  %155 = load i8*, i8** %16, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 %158, 1
  %160 = load i8*, i8** %17, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %17, align 8
  br label %163

163:                                              ; preds = %133, %90
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %166, label %197

166:                                              ; preds = %163
  %167 = load i8*, i8** %17, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %17, align 8
  store i8 -95, i8* %167, align 1
  %169 = load i8*, i8** %17, align 8
  %170 = load i64, i64* %14, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i64 @br_asn1_encode_length(i8* %169, i32 %171)
  %173 = load i8*, i8** %17, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 %172
  store i8* %174, i8** %17, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %17, align 8
  store i8 3, i8* %175, align 1
  %177 = load i8*, i8** %17, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, 1
  %182 = trunc i64 %181 to i32
  %183 = call i64 @br_asn1_encode_length(i8* %177, i32 %182)
  %184 = load i8*, i8** %17, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %185, i8** %17, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %17, align 8
  store i8 0, i8* %186, align 1
  %188 = load i8*, i8** %17, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i8
  %196 = call i32 @memcpy(i8* %188, i8* %191, i8 zeroext %195)
  br label %197

197:                                              ; preds = %166, %163
  %198 = load i64, i64* %18, align 8
  %199 = add i64 1, %198
  %200 = load i64, i64* %15, align 8
  %201 = add i64 %199, %200
  store i64 %201, i64* %5, align 8
  br label %202

202:                                              ; preds = %197, %83, %28
  %203 = load i64, i64* %5, align 8
  ret i64 %203
}

declare dso_local i8* @br_get_curve_OID(i32) #1

declare dso_local i32 @len_of_len(i64) #1

declare dso_local i64 @br_asn1_encode_length(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
