; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_crypt_blowfish.c__crypt_gensalt_blowfish_rn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_crypt_blowfish.c__crypt_gensalt_blowfish_rn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_crypt_gensalt_blowfish_rn(i8* %0, i64 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %52, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 30
  br i1 %18, label %52, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = icmp ugt i64 %26, 31
  br i1 %27, label %52, label %28

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 36
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 50
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 97
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 121
  br i1 %51, label %52, label %68

52:                                               ; preds = %46, %34, %28, %25, %22, %16, %6
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 30
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @ERANGE, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @__set_errno(i32 %66)
  store i8* null, i8** %7, align 8
  br label %106

68:                                               ; preds = %46, %40
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i64 5, i64* %9, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 36, i8* %74, align 1
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 50, i8* %76, align 1
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  store i8 36, i8* %83, align 1
  %84 = load i64, i64* %9, align 8
  %85 = udiv i64 %84, 10
  %86 = add i64 48, %85
  %87 = trunc i64 %86 to i8
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8 %87, i8* %89, align 1
  %90 = load i64, i64* %9, align 8
  %91 = urem i64 %90, 10
  %92 = add i64 48, %91
  %93 = trunc i64 %92 to i8
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 5
  store i8 %93, i8* %95, align 1
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 6
  store i8 36, i8* %97, align 1
  %98 = load i8*, i8** %12, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 7
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = call i32 @BF_encode(i8* %99, i32* %101, i32 16)
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 29
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %12, align 8
  store i8* %105, i8** %7, align 8
  br label %106

106:                                              ; preds = %72, %65
  %107 = load i8*, i8** %7, align 8
  ret i8* %107
}

declare dso_local i32 @__set_errno(i32) #1

declare dso_local i32 @BF_encode(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
