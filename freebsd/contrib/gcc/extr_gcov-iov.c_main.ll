; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-iov.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-iov.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usage: %s 'version' 'phase'\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"/* Generated automatically by the program `%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"   from `%s (%lu %lu) and %s (%c)'.  */\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"#define GCOV_VERSION ((gcov_unsigned_t)%#08x)  /* %.4s */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %10, align 8
  store i8 0, i8* %11, align 1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i64 @strtoul(i8* %25, i8** %12, i32 10)
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i64 @strtoul(i8* %33, i8** null, i32 10)
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i8 42, i8* %11, align 1
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %46, 10
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 48, i32 55
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %53, i8* %54, align 1
  %55 = load i64, i64* %10, align 8
  %56 = udiv i64 %55, 10
  %57 = add i64 %56, 48
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %58, i8* %59, align 1
  %60 = load i64, i64* %10, align 8
  %61 = urem i64 %60, 10
  %62 = add i64 %61, 48
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %63, i8* %64, align 1
  %65 = load i8, i8* %11, align 1
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 %65, i8* %66, align 1
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %79, %45
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 4
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %72, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %11, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %89, i64 %90, i64 %91, i8* %94, i32 %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %99, i8* %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %82, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
