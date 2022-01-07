; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_ECDSA_KAT.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_ECDSA_KAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 (i32*, i8*)*, i32 (i32*, i32, i32)*, i32 (i32*)* }
%struct.TYPE_7__ = type { i32 }

@ECDSA_KAT = common dso_local global %struct.TYPE_6__* null, align 8
@BR_HASHDESC_OUT_OFF = common dso_local global i64 0, align 8
@BR_HASHDESC_OUT_MASK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ECDSA KAT verify failed (1)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ECDSA KAT verify shoud have failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ECDSA KAT verify failed (2)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ECDSA KAT sign failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ECDSA KAT wrong signature value\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)*, i32 (i32*, i8*, i64, i64, i8*, i64)*, i32)* @test_ECDSA_KAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ECDSA_KAT(i32* %0, i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)* %1, i32 (i32*, i8*, i64, i64, i8*, i64)* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)*, align 8
  %7 = alloca i32 (i32*, i8*, i64, i64, i8*, i64)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca [150 x i8], align 16
  %14 = alloca [150 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %5, align 8
  store i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)* %1, i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)** %6, align 8
  store i32 (i32*, i8*, i64, i64, i8*, i64)* %2, i32 (i32*, i8*, i64, i64, i8*, i64)** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %179, %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ECDSA_KAT, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %182

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %34 = call i32 %32(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strlen(i32 %46)
  %48 = call i32 %39(i32* %40, i32 %43, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %56 = call i32 %53(i32* %54, i8* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BR_HASHDESC_OUT_OFF, align 8
  %63 = lshr i64 %61, %62
  %64 = load i64, i64* @BR_HASHDESC_OUT_MASK, align 8
  %65 = and i64 %63, %64
  store i64 %65, i64* %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %27
  %69 = getelementptr inbounds [150 x i8], [150 x i8]* %13, i64 0, i64 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @hextobin(i8* %69, i32 %72)
  store i64 %73, i64* %15, align 8
  br label %80

74:                                               ; preds = %27
  %75 = getelementptr inbounds [150 x i8], [150 x i8]* %13, i64 0, i64 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @hextobin(i8* %75, i32 %78)
  store i64 %79, i64* %15, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32 (i32*, i8*, i64, i64, i8*, i64)*, i32 (i32*, i8*, i64, i64, i8*, i64)** %7, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds [150 x i8], [150 x i8]* %13, i64 0, i64 0
  %89 = load i64, i64* %15, align 8
  %90 = call i32 %81(i32* %82, i8* %83, i64 %84, i64 %87, i8* %88, i64 %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @EXIT_FAILURE, align 4
  %96 = call i32 @exit(i32 %95) #3
  unreachable

97:                                               ; preds = %80
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, 128
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %98, align 16
  %103 = load i32 (i32*, i8*, i64, i64, i8*, i64)*, i32 (i32*, i8*, i64, i64, i8*, i64)** %7, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [150 x i8], [150 x i8]* %13, i64 0, i64 0
  %111 = load i64, i64* %15, align 8
  %112 = call i32 %103(i32* %104, i8* %105, i64 %106, i64 %109, i8* %110, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %97
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @EXIT_FAILURE, align 4
  %118 = call i32 @exit(i32 %117) #3
  unreachable

119:                                              ; preds = %97
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %121 = load i8, i8* %120, align 16
  %122 = zext i8 %121 to i32
  %123 = xor i32 %122, 128
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 16
  %125 = load i32 (i32*, i8*, i64, i64, i8*, i64)*, i32 (i32*, i8*, i64, i64, i8*, i64)** %7, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds [150 x i8], [150 x i8]* %13, i64 0, i64 0
  %133 = load i64, i64* %15, align 8
  %134 = call i32 %125(i32* %126, i8* %127, i64 %128, i64 %131, i8* %132, i64 %133)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %119
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* @EXIT_FAILURE, align 4
  %140 = call i32 @exit(i32 %139) #3
  unreachable

141:                                              ; preds = %119
  %142 = load i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)*, i64 (i32*, %struct.TYPE_8__*, i8*, i32, i8*)** %6, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [150 x i8], [150 x i8]* %14, i64 0, i64 0
  %152 = call i64 %142(i32* %143, %struct.TYPE_8__* %146, i8* %147, i32 %150, i8* %151)
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %16, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %141
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @EXIT_FAILURE, align 4
  %159 = call i32 @exit(i32 %158) #3
  unreachable

160:                                              ; preds = %141
  %161 = load i64, i64* %16, align 8
  %162 = load i64, i64* %15, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds [150 x i8], [150 x i8]* %13, i64 0, i64 0
  %166 = getelementptr inbounds [150 x i8], [150 x i8]* %14, i64 0, i64 0
  %167 = load i64, i64* %15, align 8
  %168 = call i64 @memcmp(i8* %165, i8* %166, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164, %160
  %171 = load i32, i32* @stderr, align 4
  %172 = call i32 @fprintf(i32 %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i32, i32* @EXIT_FAILURE, align 4
  %174 = call i32 @exit(i32 %173) #3
  unreachable

175:                                              ; preds = %164
  %176 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %177 = load i32, i32* @stdout, align 4
  %178 = call i32 @fflush(i32 %177)
  br label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %9, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %9, align 8
  br label %18

182:                                              ; preds = %26
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @hextobin(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
