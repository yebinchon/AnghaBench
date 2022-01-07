; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genchecksum.c_dosum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genchecksum.c_dosum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"opening %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"seeking in %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"reading %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"const unsigned char executable_checksum[16] = { \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%#02x%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" };\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dosum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dosum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i8* @xstrerror(i32 %13)
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %12, i8* %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i64 @fseek(i32* %18, i32 16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @xstrerror(i32 %25)
  %27 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %17
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %32 = call i64 @md5_stream(i32* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @fclose(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %29
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @xstrerror(i32 %41)
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %40, i8* %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %34
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fputs(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %61, %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 15
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %60 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8 zeroext %55, i8* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %48

64:                                               ; preds = %48
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @xstrerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @md5_stream(i32*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
