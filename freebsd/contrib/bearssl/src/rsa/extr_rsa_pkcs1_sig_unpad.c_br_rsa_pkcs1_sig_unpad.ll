; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pkcs1_sig_unpad.c_br_rsa_pkcs1_sig_unpad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pkcs1_sig_unpad.c_br_rsa_pkcs1_sig_unpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@br_rsa_pkcs1_sig_unpad.pad1 = internal constant [10 x i8] c"\00\01\FF\FF\FF\FF\FF\FF\FF\FF", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_pkcs1_sig_unpad(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [43 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %18, 11
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %143

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @memcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @br_rsa_pkcs1_sig_unpad.pad1, i64 0, i64 0), i64 10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %143

26:                                               ; preds = %21
  store i64 10, i64* %13, align 8
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 255
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %27

43:                                               ; preds = %38, %27
  %44 = load i8*, i8** %9, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sub i64 %47, %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46
  store i32 0, i32* %6, align 4
  br label %143

61:                                               ; preds = %53
  br label %133

62:                                               ; preds = %43
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = add i64 %67, 9
  store i64 %68, i64* %16, align 8
  %69 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 0
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @memset(i8* %69, i32 0, i64 %70)
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %13, align 8
  %74 = sub i64 %72, %73
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %81, 2
  store i64 %82, i64* %14, align 8
  br label %97

83:                                               ; preds = %62
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %85, 2
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i64, i64* %15, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %17, align 8
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = sub i64 %92, 4
  %94 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 %93
  store i8 5, i8* %94, align 1
  br label %96

95:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %143

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %80
  %98 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 1
  store i8 48, i8* %98, align 1
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %99, %100
  %102 = add i64 %101, 4
  %103 = trunc i64 %102 to i8
  %104 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 2
  store i8 %103, i8* %104, align 2
  %105 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 3
  store i8 48, i8* %105, align 1
  %106 = load i64, i64* %14, align 8
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 4
  store i8 %107, i8* %108, align 4
  %109 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 5
  store i8 6, i8* %109, align 1
  %110 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 0
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, 1
  %115 = call i32 @memcpy(i8* %111, i8* %112, i64 %114)
  %116 = load i64, i64* %16, align 8
  %117 = sub i64 %116, 2
  %118 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 %117
  store i8 4, i8* %118, align 1
  %119 = load i64, i64* %10, align 8
  %120 = trunc i64 %119 to i8
  %121 = load i64, i64* %16, align 8
  %122 = sub i64 %121, 1
  %123 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 %122
  store i8 %120, i8* %123, align 1
  %124 = getelementptr inbounds [43 x i8], [43 x i8]* %12, i64 0, i64 0
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i64, i64* %16, align 8
  %129 = call i64 @memcmp(i8* %124, i8* %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %143

132:                                              ; preds = %97
  br label %133

133:                                              ; preds = %132, %61
  %134 = load i8*, i8** %11, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i64, i64* %10, align 8
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @memcpy(i8* %134, i8* %140, i64 %141)
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %133, %131, %95, %60, %25, %20
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
