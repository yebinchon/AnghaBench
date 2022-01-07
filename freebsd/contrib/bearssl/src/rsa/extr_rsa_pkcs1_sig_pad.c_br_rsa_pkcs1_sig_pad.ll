; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pkcs1_sig_pad.c_br_rsa_pkcs1_sig_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pkcs1_sig_pad.c_br_rsa_pkcs1_sig_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = add nsw i32 %15, 7
  %17 = ashr i32 %16, 3
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %14, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %5
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 11
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %140

27:                                               ; preds = %21
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 1, i8* %31, align 1
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i64, i64* %12, align 8
  %38 = sub i64 %37, 3
  %39 = call i32 @memset(i8* %36, i32 255, i64 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  br label %133

44:                                               ; preds = %5
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = add i64 %52, 21
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %140

56:                                               ; preds = %44
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 1, i8* %60, align 1
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %61, %62
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %63, %64
  %66 = sub i64 %65, 11
  store i64 %66, i64* %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i64, i64* %12, align 8
  %70 = sub i64 %69, 2
  %71 = call i32 @memset(i8* %68, i32 255, i64 %70)
  %72 = load i8*, i8** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 48, i8* %78, align 1
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %79, %80
  %82 = add i64 %81, 8
  %83 = trunc i64 %82 to i8
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 2
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %83, i8* %87, align 1
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 3
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 48, i8* %91, align 1
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 4
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8 %94, i8* %98, align 1
  %99 = load i8*, i8** %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 5
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 6, i8* %102, align 1
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = getelementptr inbounds i8, i8* %105, i64 6
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, 1
  %110 = call i32 @memcpy(i8* %106, i8* %107, i64 %109)
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 7
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %12, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  %118 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 5, i8* %118, align 1
  %119 = load i8*, i8** %11, align 8
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %12, align 8
  %122 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %12, align 8
  %126 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 4, i8* %126, align 1
  %127 = load i64, i64* %9, align 8
  %128 = trunc i64 %127 to i8
  %129 = load i8*, i8** %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %12, align 8
  %132 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8 %128, i8* %132, align 1
  br label %133

133:                                              ; preds = %56, %27
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8*, i8** %8, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @memcpy(i8* %136, i8* %137, i64 %138)
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %133, %55, %26
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
