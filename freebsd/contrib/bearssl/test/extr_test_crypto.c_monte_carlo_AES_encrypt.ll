; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_monte_carlo_AES_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_monte_carlo_AES_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i64)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MC AES encrypt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*, i8*)* @monte_carlo_AES_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monte_carlo_AES_encrypt(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_6__**, align 8
  %19 = alloca [16 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.TYPE_6__** %20, %struct.TYPE_6__*** %18, align 8
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @hextobin(i8* %21, i8* %22)
  store i64 %23, i64* %13, align 8
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @hextobin(i8* %24, i8* %25)
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @hextobin(i8* %27, i8* %28)
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %164, %4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %167

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_6__**, i8*, i64)*, i32 (%struct.TYPE_6__**, i8*, i64)** %35, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %39 = load i64, i64* %13, align 8
  %40 = call i32 %36(%struct.TYPE_6__** %37, i8* %38, i64 %39)
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %57, %33
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 1000
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %47 = call i32 @memcpy(i8* %45, i8* %46, i32 16)
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %49 = call i32 @memset(i8* %48, i32 0, i32 16)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %51, align 8
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %56 = call i32 %52(%struct.TYPE_6__** %53, i8* %54, i8* %55, i32 16)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load i64, i64* %13, align 8
  switch i64 %61, label %126 [
    i64 16, label %62
    i64 24, label %83
  ]

62:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 16
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = xor i32 %76, %71
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %63

82:                                               ; preds = %63
  br label %160

83:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 8
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 8, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = xor i32 %98, %93
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %84

104:                                              ; preds = %84
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %122, %104
  %106 = load i32, i32* %16, align 4
  %107 = icmp slt i32 %106, 16
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 8, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = xor i32 %119, %113
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %117, align 1
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %105

125:                                              ; preds = %105
  br label %160

126:                                              ; preds = %60
  store i32 0, i32* %16, align 4
  br label %127

127:                                              ; preds = %156, %126
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 16
  br i1 %129, label %130, label %159

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = xor i32 %140, %135
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %138, align 1
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 16, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = xor i32 %153, %147
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %151, align 1
  br label %156

156:                                              ; preds = %130
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %127

159:                                              ; preds = %127
  br label %160

160:                                              ; preds = %159, %125, %82
  %161 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* @stdout, align 4
  %163 = call i32 @fflush(i32 %162)
  br label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %30

167:                                              ; preds = %30
  %168 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @stdout, align 4
  %170 = call i32 @fflush(i32 %169)
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %172 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %173 = call i32 @check_equals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %171, i8* %172, i32 16)
  ret void
}

declare dso_local i64 @hextobin(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
