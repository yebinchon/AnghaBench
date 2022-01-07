; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_multihash_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_multihash_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bad hash output length: %u / %u\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Hash output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @test_multihash_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_multihash_inner(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [258 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i64, i64* %3, align 8
  %20 = icmp ult i64 %19, 258
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = call i32 @br_sha1_init(i32* %7)
  %23 = getelementptr inbounds [258 x i8], [258 x i8]* %4, i64 0, i64 0
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @br_sha1_update(i32* %7, i8* %23, i64 %24)
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %27 = call i32 @br_sha1_out(i32* %7, i8* %26)
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds [258 x i8], [258 x i8]* %4, i64 0, i64 %30
  store i8 %29, i8* %31, align 1
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %18

35:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %142, %35
  %37 = load i64, i64* %3, align 8
  %38 = icmp ule i64 %37, 257
  br i1 %38, label %39, label %145

39:                                               ; preds = %36
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @br_multihash_init(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds [258 x i8], [258 x i8]* %4, i64 0, i64 0
  %44 = load i64, i64* %3, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @br_multihash_update(i32* %42, i8* %43, i32 %45)
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %83, %39
  %48 = load i32, i32* %5, align 4
  %49 = icmp sle i32 %48, 6
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %54 = call i64 @br_multihash_out(i32* %51, i32 %52, i8* %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %83

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = getelementptr inbounds [258 x i8], [258 x i8]* %4, i64 0, i64 0
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %63 = call i64 @do_hash(i32 %59, i8* %60, i64 %61, i8* %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load i32, i32* @stderr, align 4
  %69 = load i64, i64* %12, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %13, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72)
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = call i32 @exit(i32 %74) #3
  unreachable

76:                                               ; preds = %58
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @check_equals(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %77, i8* %78, i64 %79)
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %76, %57
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @br_multihash_init(i32* %87)
  store i64 0, i64* %9, align 8
  br label %89

89:                                               ; preds = %138, %86
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %3, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %141

93:                                               ; preds = %89
  %94 = load i32*, i32** %2, align 8
  %95 = getelementptr inbounds [258 x i8], [258 x i8]* %4, i64 0, i64 0
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = call i32 @br_multihash_update(i32* %94, i8* %97, i32 1)
  store i32 1, i32* %5, align 4
  br label %99

99:                                               ; preds = %134, %93
  %100 = load i32, i32* %5, align 4
  %101 = icmp sle i32 %100, 6
  br i1 %101, label %102, label %137

102:                                              ; preds = %99
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %106 = call i64 @br_multihash_out(i32* %103, i32 %104, i8* %105)
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %16, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %134

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  %112 = getelementptr inbounds [258 x i8], [258 x i8]* %4, i64 0, i64 0
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %116 = call i64 @do_hash(i32 %111, i8* %112, i64 %114, i8* %115)
  store i64 %116, i64* %17, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %17, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %110
  %121 = load i32, i32* @stderr, align 4
  %122 = load i64, i64* %16, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %17, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %125)
  %127 = load i32, i32* @EXIT_FAILURE, align 4
  %128 = call i32 @exit(i32 %127) #3
  unreachable

129:                                              ; preds = %110
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @check_equals(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %130, i8* %131, i64 %132)
  br label %134

134:                                              ; preds = %129, %109
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %99

137:                                              ; preds = %99
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %9, align 8
  br label %89

141:                                              ; preds = %89
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %3, align 8
  br label %36

145:                                              ; preds = %36
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @br_sha1_init(i32*) #1

declare dso_local i32 @br_sha1_update(i32*, i8*, i64) #1

declare dso_local i32 @br_sha1_out(i32*, i8*) #1

declare dso_local i32 @br_multihash_init(i32*) #1

declare dso_local i32 @br_multihash_update(i32*, i8*, i32) #1

declare dso_local i64 @br_multihash_out(i32*, i32, i8*) #1

declare dso_local i64 @do_hash(i32, i8*, i64, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
