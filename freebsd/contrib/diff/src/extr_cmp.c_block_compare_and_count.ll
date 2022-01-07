; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_block_compare_and_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_block_compare_and_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64*)* @block_compare_and_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_compare_and_count(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %12, align 8
  store i8 0, i8* %13, align 1
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %28, %3
  %17 = load i32, i32* %14, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i8, i8* %13, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @CHAR_BIT, align 1
  %24 = sext i8 %23 to i32
  %25 = shl i32 %22, %24
  %26 = or i32 %25, 10
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %13, align 1
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %72, %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %34
  %43 = load i8, i8* %13, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = xor i32 %46, %44
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %7, align 1
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %68, %42
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i8, i8* %7, align 1
  store i8 %54, i8* %15, align 1
  %55 = load i8, i8* %15, align 1
  %56 = icmp ne i8 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load i8, i8* @CHAR_BIT, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* %7, align 1
  %65 = sext i8 %64 to i32
  %66 = ashr i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %7, align 1
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %49

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  br label %34

77:                                               ; preds = %34
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %9, align 8
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %97, %77
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %88
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  br label %80

102:                                              ; preds = %80
  %103 = load i64, i64* %12, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %103
  store i64 %106, i64* %104, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  ret i64 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
