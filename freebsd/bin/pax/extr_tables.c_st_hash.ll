; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_st_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_st_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXKEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAXKEYLEN, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAXKEYLEN, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* @MAXKEYLEN, align 4
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = urem i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %59, %28
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %43, i8** %9, align 8
  %44 = bitcast i32* %14 to i8*
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %49, %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  %52 = load i8, i8* %50, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  store i8 %52, i8* %53, align 1
  br label %45

55:                                               ; preds = %45
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %9, align 8
  %70 = bitcast i32* %14 to i8*
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %75, %65
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  %78 = load i8, i8* %76, align 1
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  store i8 %78, i8* %79, align 1
  br label %71

81:                                               ; preds = %71
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %81, %62
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %6, align 4
  %88 = srem i32 %86, %87
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
