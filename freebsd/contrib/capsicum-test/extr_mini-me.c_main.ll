; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/capsicum-test/extr_mini-me.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/capsicum-test/extr_mini-me.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"--pass\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[%d] %s immediately returning 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--fail\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"[%d] %s immediately returning 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"--checkroot\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"[uid:%d] %s immediately returning (geteuid() == 0) = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--capmode\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"/etc/passwd\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"[%d] %s unexpectedly able to open file\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"[%d] %s --capmode returning %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (...) @getpid()
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* %22)
  store i32 0, i32* %3, align 4
  br label %92

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (...) @getpid()
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %35, i8* %38)
  store i32 1, i32* %3, align 4
  br label %92

40:                                               ; preds = %27, %24
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = call i32 (...) @geteuid()
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (...) @geteuid()
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %54, i8* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %92

61:                                               ; preds = %43, %40
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  %71 = load i32, i32* @O_RDONLY, align 4
  %72 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (...) @getpid()
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %77, i8* %80)
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (...) @getpid()
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %84, i8* %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %64, %61
  store i32 -1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %82, %49, %33, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
