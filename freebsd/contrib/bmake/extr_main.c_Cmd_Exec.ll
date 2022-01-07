; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_Cmd_Exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_Cmd_Exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shellName = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't create pipe for \22%s\22\00", align 1
@shellPath = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Couldn't exec \22%s\22\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Couldn't read shell's output for \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\22%s\22 exited on a signal\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\22%s\22 returned non-zero status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Cmd_Exec(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %18 = load i8**, i8*** %5, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** @shellName, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @Shell_Init()
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i8*, i8** @shellName, align 8
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  store i8* %27, i8** %28, align 16
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 3
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = call i32 @pipe(i32* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  br label %173

35:                                               ; preds = %23
  %36 = call i32 (...) @vFork()
  store i32 %36, i32* %8, align 4
  switch i32 %36, label %55 [
    i32 0, label %37
    i32 -1, label %53
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @close(i32 %39)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dup2(i32 %42, i32 1)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  %47 = call i32 (...) @Var_ExportVars()
  %48 = load i32, i32* @shellPath, align 4
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %50 = call i32 @UNCONST(i8** %49)
  %51 = call i32 @execv(i32 %48, i32 %50)
  %52 = call i32 @_exit(i32 1) #4
  unreachable

53:                                               ; preds = %35
  %54 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %54, align 8
  br label %173

55:                                               ; preds = %35
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  store i32 0, i32* %15, align 4
  %59 = call i32 @Buf_Init(i32* %12, i32 0)
  br label %60

60:                                               ; preds = %88, %55
  %61 = load i32, i32* @BUFSIZ, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %16, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %17, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = trunc i64 %62 to i32
  %68 = call i32 @read(i32 %66, i8* %64, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @Buf_AddBytes(i32* %12, i32 %72, i8* %64)
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %75)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %14, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @errno, align 4
  %84 = load i32, i32* @EINTR, align 4
  %85 = icmp eq i32 %83, %84
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i1 [ false, %79 ], [ %85, %82 ]
  br label %88

88:                                               ; preds = %86, %76
  %89 = phi i1 [ true, %76 ], [ %87, %86 ]
  br i1 %89, label %60, label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @errno, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %93, %90
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @close(i32 %97)
  br label %99

99:                                               ; preds = %109, %95
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @waitpid(i32 %100, i32* %11, i32 0)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 0
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi i1 [ false, %99 ], [ %106, %104 ]
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @FALSE, align 4
  %113 = call i32 @JobReapChild(i32 %110, i32 %111, i32 %112)
  br label %99

114:                                              ; preds = %107
  %115 = call i32 @Buf_Size(i32* %12)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i8* @Buf_Destroy(i32* %12, i32 %116)
  store i8* %117, i8** %10, align 8
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8** %121, align 8
  br label %122

122:                                              ; preds = %120, %114
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @WIFSIGNALED(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %127, align 8
  br label %135

128:                                              ; preds = %122
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @WEXITSTATUS(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %133, align 8
  br label %134

134:                                              ; preds = %132, %128
  br label %135

135:                                              ; preds = %134, %126
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8* %143, i8** %13, align 8
  %144 = load i32, i32* %14, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %135
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %148, i8** %13, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i8*, i8** %13, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 -1
  store i8* %154, i8** %13, align 8
  store i8 0, i8* %153, align 1
  br label %155

155:                                              ; preds = %152, %146, %135
  br label %156

156:                                              ; preds = %167, %155
  %157 = load i8*, i8** %13, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = icmp uge i8* %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i8*, i8** %13, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 10
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %13, align 8
  store i8 32, i8* %166, align 1
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i8*, i8** %13, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 -1
  store i8* %169, i8** %13, align 8
  br label %156

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170
  %172 = load i8*, i8** %10, align 8
  store i8* %172, i8** %3, align 8
  br label %177

173:                                              ; preds = %53, %33
  %174 = call i8* @bmake_malloc(i32 1)
  store i8* %174, i8** %10, align 8
  %175 = load i8*, i8** %10, align 8
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %10, align 8
  store i8* %176, i8** %3, align 8
  br label %177

177:                                              ; preds = %173, %171
  %178 = load i8*, i8** %3, align 8
  ret i8* %178
}

declare dso_local i32 @Shell_Init(...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @vFork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @Var_ExportVars(...) #1

declare dso_local i32 @execv(i32, i32) #1

declare dso_local i32 @UNCONST(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @Buf_Init(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @JobReapChild(i32, i32, i32) #1

declare dso_local i32 @Buf_Size(i32*) #1

declare dso_local i8* @Buf_Destroy(i32*, i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i8* @bmake_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
