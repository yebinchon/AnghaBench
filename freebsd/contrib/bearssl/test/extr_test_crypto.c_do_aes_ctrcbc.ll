; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_do_aes_ctrcbc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_do_aes_ctrcbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i8*, i8*, i8*, i64)* @do_aes_ctrcbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_aes_ctrcbc(i8* %0, i64 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca [16 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca [16 x i8], align 16
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @br_aes_big_ctr_init(i32* %15, i8* %24, i64 %25)
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %150, %7
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %153

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %92

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %42, %36
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @memcpy(i8* %46, i8* %47, i32 16)
  store i64 0, i64* %18, align 8
  br label %49

49:                                               ; preds = %85, %45
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  store i64 0, i64* %20, align 8
  br label %54

54:                                               ; preds = %73, %53
  %55 = load i64, i64* %20, align 8
  %56 = icmp ult i64 %55, 16
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i64, i64* %20, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %13, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %20, align 8
  %65 = add i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = xor i32 %61, %68
  %70 = trunc i32 %69 to i8
  %71 = load i64, i64* %20, align 8
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %71
  store i8 %70, i8* %72, align 1
  br label %73

73:                                               ; preds = %57
  %74 = load i64, i64* %20, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %20, align 8
  br label %54

76:                                               ; preds = %54
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %78 = call i32 @memset(i8* %77, i32 0, i32 16)
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  %82 = call i32 @br_dec32be(i8* %81)
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %84 = call i32 @br_aes_big_ctr_run(i32* %15, i8* %79, i32 %82, i8* %83, i32 16)
  br label %85

85:                                               ; preds = %76
  %86 = load i64, i64* %18, align 8
  %87 = add i64 %86, 16
  store i64 %87, i64* %18, align 8
  br label %49

88:                                               ; preds = %49
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %91 = call i32 @memcpy(i8* %89, i8* %90, i32 16)
  br label %92

92:                                               ; preds = %88, %42, %39, %30
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %149

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %149

98:                                               ; preds = %95
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @memcpy(i8* %99, i8* %100, i32 16)
  store i64 0, i64* %22, align 8
  br label %102

102:                                              ; preds = %142, %98
  %103 = load i64, i64* %22, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %102
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 12
  %110 = call i32 @br_dec32be(i8* %109)
  %111 = load i8*, i8** %13, align 8
  %112 = load i64, i64* %22, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = call i32 @br_aes_big_ctr_run(i32* %15, i8* %107, i32 %110, i8* %113, i32 16)
  store i32 15, i32* %23, align 4
  br label %115

115:                                              ; preds = %138, %106
  %116 = load i32, i32* %23, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %115
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, 1
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %128
  store i8 %126, i8* %129, align 1
  %130 = load i32, i32* %23, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %118
  br label %141

137:                                              ; preds = %118
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %23, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %23, align 4
  br label %115

141:                                              ; preds = %136, %115
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %22, align 8
  %144 = add i64 %143, 16
  store i64 %144, i64* %22, align 8
  br label %102

145:                                              ; preds = %102
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %148 = call i32 @memcpy(i8* %146, i8* %147, i32 16)
  br label %149

149:                                              ; preds = %145, %95, %92
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %27

153:                                              ; preds = %27
  ret void
}

declare dso_local i32 @br_aes_big_ctr_init(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @br_aes_big_ctr_run(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
