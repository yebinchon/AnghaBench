; ModuleID = '/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rmdir %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unlink %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_PATH_CP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@vflg = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"-PRpv\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-PRp\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s %s %s: waitpid\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s %s %s: did not terminate normally\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s %s %s: exec failed\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%s %s %s: terminated with %d (non-zero) status\00", align 1
@_PATH_RM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"-rf\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%s %s: waitpid\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s %s: did not terminate normally\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"%s %s: exec failed\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"%s %s: terminated with %d (non-zero) status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @lstat(i8* %9, %struct.stat* %6)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @rmdir(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %132

24:                                               ; preds = %17
  br label %33

25:                                               ; preds = %12
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @unlink(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 1, i32* %3, align 4
  br label %132

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24
  br label %42

34:                                               ; preds = %2
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 1, i32* %3, align 4
  br label %132

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = call i32 @vfork() #4
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @_PATH_CP, align 4
  %47 = load i64, i64* @vflg, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i32, i8*, i8*, i8*, i8*, i8*, ...) @execl(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %51, i8* %52, i8* null)
  %54 = call i32 @_exit(i32 128) #5
  unreachable

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @waitpid(i32 %56, i32* %8, i32 0)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @_PATH_CP, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %62, i8* %63, i8* %64)
  store i32 1, i32* %3, align 4
  br label %132

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @WIFEXITED(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @_PATH_CP, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i8*, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %71, i8* %72, i8* %73)
  store i32 1, i32* %3, align 4
  br label %132

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @WEXITSTATUS(i32 %76)
  switch i32 %77, label %84 [
    i32 0, label %78
    i32 128, label %79
  ]

78:                                               ; preds = %75
  br label %91

79:                                               ; preds = %75
  %80 = load i32, i32* @_PATH_CP, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i8*, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %80, i8* %81, i8* %82)
  store i32 1, i32* %3, align 4
  br label %132

84:                                               ; preds = %75
  %85 = load i32, i32* @_PATH_CP, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @WEXITSTATUS(i32 %88)
  %90 = call i32 (i8*, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %85, i8* %86, i8* %87, i32 %89)
  store i32 1, i32* %3, align 4
  br label %132

91:                                               ; preds = %78
  %92 = call i32 @vfork() #4
  store i32 %92, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @_PATH_RM, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 (i32, i8*, i8*, i8*, i8*, i8*, ...) @execl(i32 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %96, i8* null)
  %98 = call i32 @_exit(i32 128) #5
  unreachable

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @waitpid(i32 %100, i32* %8, i32 0)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* @_PATH_RM, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %106, i8* %107)
  store i32 1, i32* %3, align 4
  br label %132

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @WIFEXITED(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @_PATH_RM, align 4
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (i8*, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %114, i8* %115)
  store i32 1, i32* %3, align 4
  br label %132

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @WEXITSTATUS(i32 %118)
  switch i32 %119, label %125 [
    i32 0, label %120
    i32 128, label %121
  ]

120:                                              ; preds = %117
  br label %131

121:                                              ; preds = %117
  %122 = load i32, i32* @_PATH_RM, align 4
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 (i8*, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %122, i8* %123)
  store i32 1, i32* %3, align 4
  br label %132

125:                                              ; preds = %117
  %126 = load i32, i32* @_PATH_RM, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @WEXITSTATUS(i32 %128)
  %130 = call i32 (i8*, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %126, i8* %127, i32 %129)
  store i32 1, i32* %3, align 4
  br label %132

131:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %125, %121, %113, %103, %84, %79, %70, %59, %38, %29, %21
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i64 @unlink(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @execl(i32, i8*, i8*, i8*, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @warnx(i8*, i32, i8*, ...) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
