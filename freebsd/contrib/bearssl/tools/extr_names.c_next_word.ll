; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_next_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_next_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i64*)* @next_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @next_word(i8** %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i64*, i64** %5, align 8
  store i64 0, i64* %17, align 8
  store i8* null, i8** %3, align 8
  br label %83

18:                                               ; preds = %9
  %19 = load i32, i32* %6, align 4
  %20 = trunc i32 %19 to i8
  %21 = call i64 @is_ign(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 44
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %31

27:                                               ; preds = %23, %18
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  br label %9

31:                                               ; preds = %26
  %32 = load i8**, i8*** %4, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %45, %31
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 44
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %34
  br label %49

45:                                               ; preds = %41
  %46 = load i8**, i8*** %4, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8**, i8*** %4, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %69, %49
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @is_ign(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %59, %56
  %68 = phi i1 [ false, %56 ], [ %66, %59 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %8, align 8
  br label %56

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 44
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8**, i8*** %4, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %76, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i64, i64* %8, align 8
  %81 = load i64*, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i8*, i8** %7, align 8
  store i8* %82, i8** %3, align 8
  br label %83

83:                                               ; preds = %79, %16
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

declare dso_local i64 @is_ign(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
