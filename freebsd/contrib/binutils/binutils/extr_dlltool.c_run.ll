; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"run: %s %s\00", align 1
@program_name = common dso_local global i32 0, align 4
@PEXECUTE_ONE = common dso_local global i32 0, align 4
@PEXECUTE_SEARCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"wait: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"subprocess got fatal signal %d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s exited with status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = call i8* (...) @choose_temp_base()
  store i8* %13, i8** %12, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, ...) @inform(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  store i32 0, i32* %8, align 4
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8** @alloca(i32 %41)
  store i8** %42, i8*** %9, align 8
  store i32 0, i32* %8, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i8**, i8*** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %34, %87
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  br label %51

59:                                               ; preds = %51
  %60 = load i8*, i8** %5, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  store i8* %60, i8** %65, align 8
  br label %66

66:                                               ; preds = %78, %59
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 32
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  br label %66

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  store i8 0, i8* %88, align 1
  br label %50

90:                                               ; preds = %86
  %91 = load i8**, i8*** %9, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  store i8* null, i8** %95, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %9, align 8
  %100 = load i32, i32* @program_name, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* @PEXECUTE_ONE, align 4
  %103 = load i32, i32* @PEXECUTE_SEARCH, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @pexecute(i8* %98, i8** %99, i32 %100, i8* %101, i8** %10, i8** %11, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %115

108:                                              ; preds = %90
  %109 = load i32, i32* @errno, align 4
  %110 = call i8* @strerror(i32 %109)
  %111 = call i32 (i8*, ...) @inform(i8* %110)
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @fatal(i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %108, %90
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @pwait(i32 %116, i32* %7, i32 0)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @errno, align 4
  %123 = call i8* @strerror(i32 %122)
  %124 = call i32 @fatal(i8* %121, i8* %123)
  br label %153

125:                                              ; preds = %115
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @WIFSIGNALED(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* %7, align 4
  %132 = call i8* @WTERMSIG(i32 %131)
  %133 = call i32 @fatal(i8* %130, i8* %132)
  br label %152

134:                                              ; preds = %125
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @WIFEXITED(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32, i32* %7, align 4
  %140 = call i64 @WEXITSTATUS(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i8*, i8** %3, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i64 @WEXITSTATUS(i32 %145)
  %147 = call i32 @non_fatal(i8* %143, i8* %144, i64 %146)
  br label %148

148:                                              ; preds = %142, %138
  br label %151

149:                                              ; preds = %134
  %150 = call i32 (...) @abort() #3
  unreachable

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152, %120
  ret void
}

declare dso_local i8* @choose_temp_base(...) #1

declare dso_local i32 @inform(i8*, ...) #1

declare dso_local i8** @alloca(i32) #1

declare dso_local i32 @pexecute(i8*, i8**, i32, i8*, i8**, i8**, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @pwait(i32, i32*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i8* @WTERMSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @non_fatal(i8*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
