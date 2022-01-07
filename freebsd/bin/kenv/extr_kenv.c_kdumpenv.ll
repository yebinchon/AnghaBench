; ModuleID = '/home/carl/AnghaBench/freebsd/bin/kenv/extr_kenv.c_kdumpenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/kenv/extr_kenv.c_kdumpenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_DUMP = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"hint.\00", align 1
@Nflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kdumpenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdumpenv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @KENV_DUMP, align 4
  %8 = call i32 @kenv(i32 %7, i32* null, i8* null, i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %87

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 120
  %16 = sdiv i32 %15, 100
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @calloc(i32 1, i32 %18)
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %87

23:                                               ; preds = %13
  %24 = load i32, i32* @KENV_DUMP, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @kenv(i32 %24, i32* null, i8* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @free(i8* %31)
  store i32 -1, i32* %1, align 4
  br label %87

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @free(i8* %38)
  br label %41

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %37
  br label %13

42:                                               ; preds = %40
  %43 = load i8*, i8** %2, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %78, %42
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = load i64, i64* @hflag, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %78

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i8*, i8** %3, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 61)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %78

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  store i8 0, i8* %65, align 1
  %67 = load i64, i64* @Nflag, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  br label %76

72:                                               ; preds = %64
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i8*, i8** %4, align 8
  store i8* %77, i8** %3, align 8
  br label %78

78:                                               ; preds = %76, %63, %56
  %79 = load i8*, i8** %3, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %80, 1
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %3, align 8
  br label %44

84:                                               ; preds = %44
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @free(i8* %85)
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %84, %30, %22, %11
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i32 @kenv(i32, i32*, i8*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
