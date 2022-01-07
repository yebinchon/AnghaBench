; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_ec_pk8der.c_br_encode_ec_pkcs8_der.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_ec_pk8der.c_br_encode_ec_pkcs8_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@br_encode_ec_pkcs8_der.OID_ECPUBKEY = internal constant [9 x i8] c"\06\07*\86H\CE=\02\01", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_encode_ec_pkcs8_der(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @br_get_curve_OID(i32 %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %115

23:                                               ; preds = %3
  store i64 3, i64* %8, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = add i64 13, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @br_encode_ec_raw_der_inner(i8* null, %struct.TYPE_4__* %29, i32* %30, i32 0)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @len_of_len(i64 %32)
  %34 = add nsw i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %12, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %23
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @len_of_len(i64 %46)
  %48 = add nsw i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %4, align 8
  br label %115

52:                                               ; preds = %23
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %14, align 8
  store i8 48, i8* %54, align 1
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @br_asn1_encode_length(i8* %56, i64 %57)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %14, align 8
  store i8 2, i8* %62, align 1
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  store i8 1, i8* %64, align 1
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %14, align 8
  store i8 0, i8* %66, align 1
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %14, align 8
  store i8 48, i8* %68, align 1
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i64
  %74 = add i64 11, %73
  %75 = trunc i64 %74 to i8
  %76 = load i8*, i8** %14, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %14, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @memcpy(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @br_encode_ec_pkcs8_der.OID_ECPUBKEY, i64 0, i64 0), i32 9)
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 9
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  store i8 6, i8* %82, align 1
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 1, %89
  %91 = call i32 @memcpy(i8* %84, i8* %85, i32 %90)
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 1, %95
  %97 = load i8*, i8** %14, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %14, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  store i8 4, i8* %100, align 1
  %102 = load i8*, i8** %14, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @br_asn1_encode_length(i8* %102, i64 %103)
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i64 @br_encode_ec_raw_der_inner(i8* %107, %struct.TYPE_4__* %108, i32* %109, i32 0)
  %111 = load i64, i64* %15, align 8
  %112 = add i64 1, %111
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %112, %113
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %52, %45, %22
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i8* @br_get_curve_OID(i32) #1

declare dso_local i64 @br_encode_ec_raw_der_inner(i8*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @len_of_len(i64) #1

declare dso_local i64 @br_asn1_encode_length(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
