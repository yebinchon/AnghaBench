; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_parse_rsa_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_parse_rsa_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @parse_rsa_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rsa_spec(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 114
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 82
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %121

22:                                               ; preds = %16, %3
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 115
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 83
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %121

35:                                               ; preds = %29, %22
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 97
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 65
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %121

48:                                               ; preds = %42, %35
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  store i32 2048, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 3, i32* %57, align 4
  store i32 1, i32* %4, align 4
  br label %121

58:                                               ; preds = %48
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 58
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %121

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @strtoul(i8* %68, i8** %9, i32 10)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ult i64 %70, 512
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %10, align 8
  %74 = icmp ugt i64 %73, 32768
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %65
  store i32 0, i32* %4, align 4
  br label %121

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32*, i32** %7, align 8
  store i32 3, i32* %86, align 4
  store i32 1, i32* %4, align 4
  br label %121

87:                                               ; preds = %76
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 58
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %121

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @strtoul(i8* %97, i8** %9, i32 10)
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = and i64 %99, 1
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %10, align 8
  %107 = lshr i64 %106, 30
  %108 = lshr i64 %107, 2
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %102, %94
  store i32 0, i32* %4, align 4
  br label %121

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %121

120:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %119, %110, %92, %85, %75, %63, %55, %47, %34, %21
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
