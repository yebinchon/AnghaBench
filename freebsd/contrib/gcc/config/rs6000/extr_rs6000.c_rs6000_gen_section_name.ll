; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_gen_section_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_gen_section_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_gen_section_name(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %35, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %8, align 8
  br label %34

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %31, %26
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  br label %14

38:                                               ; preds = %14
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %40, %42
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @xmalloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8**, i8*** %4, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  store i8 95, i8* %51, align 1
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %83, %38
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcpy(i8* %63, i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %10, align 8
  br label %86

71:                                               ; preds = %58
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @ISALNUM(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  br label %54

86:                                               ; preds = %62, %54
  %87 = load i8*, i8** %9, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strcpy(i8* %90, i8* %91)
  br label %95

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %93, %89
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @ISALNUM(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
