; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libssp/extr_gets-chk.c___gets_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libssp/extr_gets-chk.c___gets_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__gets_chk(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @INT_MAX, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @gets(i8* %13)
  store i8* %14, i8** %3, align 8
  br label %80

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ule i64 %16, 8192
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = call i8* @alloca(i64 %20)
  store i8* %21, i8** %7, align 8
  br label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @gets(i8* %30)
  store i8* %31, i8** %3, align 8
  br label %80

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @stdin, align 4
  %38 = call i8* @fgets(i8* %33, i32 %36, i32 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %32
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %54, %46, %41
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @__chk_fail()
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %63, %32
  %73 = load i64, i64* %5, align 8
  %74 = icmp ugt i64 %73, 8192
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %3, align 8
  br label %80

80:                                               ; preds = %78, %29, %12
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

declare dso_local i8* @gets(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @__chk_fail(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
