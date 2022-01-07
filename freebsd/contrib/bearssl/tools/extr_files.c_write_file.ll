; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_files.c_write_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_files.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: could not open file '%s' for reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ERROR: could not write all bytes to '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ERROR: write error on file '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_file(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %37, %19
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @fwrite(i8* %25, i32 1, i64 %26, i32* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fclose(i32* %35)
  store i32 -1, i32* %4, align 4
  br label %57

37:                                               ; preds = %24
  %38 = load i64, i64* %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @ferror(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @fclose(i32* %52)
  store i32 -1, i32* %4, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @fclose(i32* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %48, %31, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
