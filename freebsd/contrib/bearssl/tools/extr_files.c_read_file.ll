; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_files.c_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_files.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VEC_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: could not open file '%s' for reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: read error on file '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_file(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* @VEC_INIT, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i64*, i64** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i8* null, i8** %3, align 8
  br label %54

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %49, %21
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @fread(i8* %23, i32 1, i32 1024, i32* %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @ferror(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fclose(i32* %36)
  store i8* null, i8** %3, align 8
  br label %54

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @VEC_TOARRAY(i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @VEC_LEN(i32 %41)
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @VEC_CLEAR(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %3, align 8
  br label %54

49:                                               ; preds = %22
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @VEC_ADDMANY(i32 %50, i8* %51, i64 %52)
  br label %22

54:                                               ; preds = %38, %32, %17
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @VEC_TOARRAY(i32) #1

declare dso_local i64 @VEC_LEN(i32) #1

declare dso_local i32 @VEC_CLEAR(i32) #1

declare dso_local i32 @VEC_ADDMANY(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
