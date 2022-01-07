; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_prgbox.c_dlg_popen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_prgbox.c_dlg_popen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sh -c \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sh\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dlg_popen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 114
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 119
  br i1 %17, label %18, label %114

18:                                               ; preds = %13, %2
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %20 = call i64 @pipe(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %18
  %23 = call i32 (...) @fork()
  switch i32 %23, label %91 [
    i32 -1, label %24
    i32 0, label %31
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close(i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  br label %113

31:                                               ; preds = %22
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 114
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @STDOUT_FILENO, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STDOUT_FILENO, align 4
  %45 = call i32 @dup2(i32 %43, i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* @STDOUT_FILENO, align 4
  %51 = load i32, i32* @STDERR_FILENO, align 4
  %52 = call i32 @dup2(i32 %50, i32 %51)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  br label %75

56:                                               ; preds = %31
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @STDIN_FILENO, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @STDIN_FILENO, align 4
  %65 = call i32 @dup2(i32 %63, i32 %64)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @close(i32 %67)
  br label %69

69:                                               ; preds = %61, %56
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i32, i32* @STDERR_FILENO, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %69, %49
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = add nsw i32 10, %77
  %79 = call i8* @malloc(i32 %78)
  store i8* %79, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** %7, align 8
  %86 = call i8** @dlg_string_to_argv(i8* %85)
  store i8** %86, i8*** %8, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = call i32 @execvp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %87)
  br label %89

89:                                               ; preds = %81, %75
  %90 = call i32 @_exit(i32 127) #3
  unreachable

91:                                               ; preds = %22
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 114
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32* @fdopen(i32 %98, i8* %99)
  store i32* %100, i32** %5, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  br label %112

104:                                              ; preds = %91
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %4, align 8
  %108 = call i32* @fdopen(i32 %106, i8* %107)
  store i32* %108, i32** %5, align 8
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @close(i32 %110)
  br label %112

112:                                              ; preds = %104, %96
  br label %113

113:                                              ; preds = %112, %24
  br label %114

114:                                              ; preds = %113, %18, %13
  %115 = load i32*, i32** %5, align 8
  ret i32* %115
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8** @dlg_string_to_argv(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
