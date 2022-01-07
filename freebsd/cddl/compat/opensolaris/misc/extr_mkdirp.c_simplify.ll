; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_mkdirp.c_simplify.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_mkdirp.c_simplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @simplify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @simplify(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %98

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %98

18:                                               ; preds = %13
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  %23 = call i8* @calloc(i32 1, i64 %22)
  store i8* %23, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @free(i8* %26)
  store i8* null, i8** %2, align 8
  br label %98

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @mbstowcs(i8* %29, i8* %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free(i8* %37)
  store i8* null, i8** %2, align 8
  br label %98

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %7, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %79, %39
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %78

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %72, %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %64

75:                                               ; preds = %64
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %46
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %41

82:                                               ; preds = %41
  %83 = load i8*, i8** %7, align 8
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @wcstombs(i8* %84, i8* %85, i64 %86)
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @free(i8* %92)
  store i8* null, i8** %2, align 8
  br label %98

94:                                               ; preds = %82
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %9, align 8
  store i8* %97, i8** %2, align 8
  br label %98

98:                                               ; preds = %94, %89, %34, %25, %17, %12
  %99 = load i8*, i8** %2, align 8
  ret i8* %99
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @mbstowcs(i8*, i8*, i64) #1

declare dso_local i64 @wcstombs(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
