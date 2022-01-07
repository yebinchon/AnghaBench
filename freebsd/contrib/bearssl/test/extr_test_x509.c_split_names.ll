; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_split_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_split_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*)* @split_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @split_names(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8** null, i8*** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %101, %1
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %85, %11
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %87

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @is_ws(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %17

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @is_ws(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %39, %35
  %48 = phi i1 [ false, %35 ], [ %46, %39 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %35

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load i8**, i8*** %3, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub i64 %60, %61
  %63 = add i64 %62, 1
  %64 = call i8* @xmalloc(i64 %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %5, align 8
  %71 = sub i64 %69, %70
  %72 = call i32 @memcpy(i8* %65, i8* %68, i64 %71)
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %5, align 8
  %76 = sub i64 %74, %75
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %8, align 8
  %79 = load i8**, i8*** %3, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  store i8* %78, i8** %81, align 8
  br label %82

82:                                               ; preds = %59, %56
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %82, %52
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %5, align 8
  br label %12

87:                                               ; preds = %12
  %88 = load i8**, i8*** %3, align 8
  %89 = icmp eq i8** %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  %93 = mul i64 %92, 8
  %94 = call i8* @xmalloc(i64 %93)
  %95 = bitcast i8* %94 to i8**
  store i8** %95, i8*** %3, align 8
  br label %101

96:                                               ; preds = %87
  %97 = load i8**, i8*** %3, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  store i8* null, i8** %99, align 8
  %100 = load i8**, i8*** %3, align 8
  ret i8** %100

101:                                              ; preds = %90
  br label %11
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @is_ws(i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
