; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@archive_file_offset = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to seek to 0x%lx for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Out of memory allocating 0x%lx bytes for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to read in 0x%lx bytes of %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i64, i64, i64, i8*)* @get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_data(i8* %0, i32* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %12, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %6
  store i8* null, i8** %7, align 8
  br label %91

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* @archive_file_offset, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %23, %24
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @fseek(i32* %22, i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @archive_file_offset, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @error(i32 %30, i64 %33, i8* %34)
  store i8* null, i8** %7, align 8
  br label %91

36:                                               ; preds = %21
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = udiv i64 -2, %42
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = mul i64 %46, %47
  %49 = add i64 %48, 1
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %14, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i8*, i8** %14, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = mul i64 %56, %57
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @error(i32 %55, i64 %58, i8* %59)
  store i8* null, i8** %7, align 8
  br label %91

61:                                               ; preds = %51
  %62 = load i8*, i8** %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = mul i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %61, %36
  %68 = load i8*, i8** %14, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @fread(i8* %68, i64 %69, i64 %70, i32* %71)
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = mul i64 %77, %78
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @error(i32 %76, i64 %79, i8* %80)
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %85, %75
  store i8* null, i8** %7, align 8
  br label %91

89:                                               ; preds = %67
  %90 = load i8*, i8** %14, align 8
  store i8* %90, i8** %7, align 8
  br label %91

91:                                               ; preds = %89, %88, %54, %29, %20
  %92 = load i8*, i8** %7, align 8
  ret i8* %92
}

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @error(i32, i64, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i64, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
