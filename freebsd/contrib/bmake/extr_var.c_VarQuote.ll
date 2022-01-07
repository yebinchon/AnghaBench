; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarQuote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarQuote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\$\00", align 1
@FALSE = common dso_local global i32 0, align 4
@VAR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"QuoteMeta: [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @VarQuote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @VarQuote(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i8* (...) @Shell_GetNewline()
  store i8* %8, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %7, align 8
  %14 = call i32 @Buf_Init(i32* %5, i32 0)
  br label %15

15:                                               ; preds = %56, %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @Buf_AddBytes(i32* %5, i32 %27, i8* %28)
  br label %56

30:                                               ; preds = %20
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @ismeta(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %30
  %41 = call i32 @Buf_AddByte(i32* %5, i8 signext 92)
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @Buf_AddByte(i32* %5, i8 signext %44)
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 36
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @Buf_AddBytes(i32* %5, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48, %42
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  br label %15

59:                                               ; preds = %15
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i8* @Buf_Destroy(i32* %5, i32 %60)
  store i8* %61, i8** %3, align 8
  %62 = load i32, i32* @VAR, align 4
  %63 = call i64 @DEBUG(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @debug_file, align 4
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i8* @Shell_GetNewline(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Buf_Init(i32*, i32) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @ismeta(i8 zeroext) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

declare dso_local i8* @Buf_Destroy(i32*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
