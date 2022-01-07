; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_fgetln.c_fgetln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_fgetln.c_fgetln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fgetln.buf = internal global i8* null, align 8
@fgetln.bufsiz = internal global i64 0, align 8
@BUFSIZ = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgetln(i32* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** @fgetln.buf, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* @BUFSIZ, align 8
  store i64 %13, i64* @fgetln.bufsiz, align 8
  %14 = load i64, i64* @fgetln.bufsiz, align 8
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** @fgetln.buf, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %80

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i8*, i8** @fgetln.buf, align 8
  %21 = load i64, i64* @fgetln.bufsiz, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @fgets(i8* %20, i64 %21, i32* %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %80

26:                                               ; preds = %19
  %27 = load i64*, i64** %5, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %67, %26
  %29 = load i8*, i8** @fgetln.buf, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i8* @strchr(i8* %32, i8 signext 10)
  store i8* %33, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %28
  %36 = load i64, i64* @fgetln.bufsiz, align 8
  %37 = load i64, i64* @BUFSIZ, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i8*, i8** @fgetln.buf, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i8* @realloc(i8* %39, i64 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** @fgetln.buf, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* @errno, align 4
  store i8* null, i8** @fgetln.buf, align 8
  store i8* null, i8** %3, align 8
  br label %80

49:                                               ; preds = %35
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** @fgetln.buf, align 8
  br label %51

51:                                               ; preds = %49
  %52 = load i8*, i8** @fgetln.buf, align 8
  %53 = load i64, i64* @fgetln.bufsiz, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* @BUFSIZ, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32* @fgets(i8* %54, i64 %55, i32* %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i8*, i8** @fgetln.buf, align 8
  %61 = load i64, i64* @fgetln.bufsiz, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** @fgetln.buf, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** @fgetln.buf, align 8
  store i8* %66, i8** %3, align 8
  br label %80

67:                                               ; preds = %51
  %68 = load i64, i64* @fgetln.bufsiz, align 8
  %69 = load i64*, i64** %5, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* @fgetln.bufsiz, align 8
  br label %28

71:                                               ; preds = %28
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** @fgetln.buf, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = add nsw i64 %76, 1
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i8*, i8** @fgetln.buf, align 8
  store i8* %79, i8** %3, align 8
  br label %80

80:                                               ; preds = %71, %59, %44, %25, %17
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32* @fgets(i8*, i64, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
