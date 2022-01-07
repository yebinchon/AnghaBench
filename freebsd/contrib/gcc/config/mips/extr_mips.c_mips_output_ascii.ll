; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_ascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\22\0A%s\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_output_ascii(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 17, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %66, %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load i8*, i8** %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @ISPRINT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @putc(i32 92, i32* %37)
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @putc(i32 %42, i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %53

47:                                               ; preds = %21
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 72
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  store i32 17, i32* %10, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %56, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %17

69:                                               ; preds = %17
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ISPRINT(i32) #1

declare dso_local i32 @putc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
