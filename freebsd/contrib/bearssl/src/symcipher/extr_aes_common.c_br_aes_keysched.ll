; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_common.c_br_aes_keysched.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_common.c_br_aes_keysched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rcon = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  switch i64 %15, label %19 [
    i64 16, label %16
    i64 24, label %17
    i64 32, label %18
  ]

16:                                               ; preds = %3
  store i32 10, i32* %8, align 4
  br label %20

17:                                               ; preds = %3
  store i32 12, i32* %8, align 4
  br label %20

18:                                               ; preds = %3
  store i32 14, i32* %8, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

20:                                               ; preds = %18, %17, %16
  %21 = load i64, i64* %7, align 8
  %22 = lshr i64 %21, 2
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  %26 = shl i32 %25, 2
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %42, %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = call i32 @br_dec32be(i8* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %106, %45
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load i32, i32* %14, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %14, align 4
  %64 = ashr i32 %63, 24
  %65 = or i32 %62, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @SubWord(i32 %66)
  %68 = load i32*, i32** @Rcon, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %67, %72
  store i32 %73, i32* %14, align 4
  br label %84

74:                                               ; preds = %51
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 6
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @SubWord(i32 %81)
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %77, %74
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = xor i32 %91, %92
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %84
  store i32 0, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %102, %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %47

109:                                              ; preds = %47
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %19
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @SubWord(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
