; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@SARMAG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"'%s': No such file\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Could not locate '%s'.  System error message: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"'%s' is not an ordinary file\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Input file '%s' is not readable.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: Failed to read file header\0A\00", align 1
@ARMAG = common dso_local global i32 0, align 4
@archive_file_offset = common dso_local global i64 0, align 8
@archive_file_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @process_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @SARMAG, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %5)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i32, i8*, ...) @error(i32 %22, i8* %23)
  br label %31

25:                                               ; preds = %17
  %26 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* @errno, align 8
  %29 = call i8* @strerror(i64 %28)
  %30 = call i32 (i32, i8*, ...) @error(i32 %26, i8* %27, i8* %29)
  br label %31

31:                                               ; preds = %25, %21
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %80

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @S_ISREG(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (i32, i8*, ...) @error(i32 %38, i8* %39)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %80

41:                                               ; preds = %32
  %42 = load i8*, i8** %3, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i32, i8*, ...) @error(i32 %47, i8* %48)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %80

50:                                               ; preds = %41
  %51 = load i32, i32* @SARMAG, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fread(i8* %13, i32 %51, i32 1, i32* %52)
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i32, i8*, ...) @error(i32 %56, i8* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fclose(i32* %59)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %80

61:                                               ; preds = %50
  %62 = load i32, i32* @ARMAG, align 4
  %63 = load i32, i32* @SARMAG, align 4
  %64 = call i64 @memcmp(i8* %13, i32 %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i8*, i8** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @process_archive(i8* %67, i32* %68)
  store i32 %69, i32* %8, align 4
  br label %76

70:                                               ; preds = %61
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @rewind(i32* %71)
  store i64 0, i64* @archive_file_offset, align 8
  store i64 0, i64* @archive_file_size, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @process_object(i8* %73, i32* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @fclose(i32* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %55, %46, %37, %31
  %81 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @error(i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @process_archive(i8*, i32*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32 @process_object(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
