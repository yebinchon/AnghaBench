; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_histedit.c_histedit.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_histedit.c_histedit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iflag = common dso_local global i64 0, align 8
@hist = common dso_local global i32* null, align 8
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sh: can't initialize history\0A\00", align 1
@Eflag = common dso_local global i64 0, align 8
@Vflag = common dso_local global i64 0, align 8
@el = common dso_local global i32* null, align 8
@el_in = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@el_out = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@arg0 = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@history = common dso_local global i32 0, align 4
@EL_PROMPT = common dso_local global i32 0, align 4
@getprompt = common dso_local global i32 0, align 4
@EL_ADDFN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"sh-complete\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Filename completion\00", align 1
@_el_fn_complete = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"sh: can't initialize editing\0A\00", align 1
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_BIND = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@editing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @histedit() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @iflag, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %135

4:                                                ; preds = %0
  %5 = load i32*, i32** @hist, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @INTOFF, align 4
  %9 = call i32* (...) @history_init()
  store i32* %9, i32** @hist, align 8
  %10 = load i32, i32* @INTON, align 4
  %11 = load i32*, i32** @hist, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = call i32 (...) @histsizeval()
  %15 = call i32 @sethistsize(i32 %14)
  br label %18

16:                                               ; preds = %7
  %17 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i64, i64* @Eflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @Vflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** @el, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %95, label %28

28:                                               ; preds = %25
  %29 = call i64 @isatty(i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %28
  %32 = load i32, i32* @INTOFF, align 4
  %33 = load i32*, i32** @el_in, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i8* @fdopen(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @el_in, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32*, i32** @el_out, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i8* @fdopen(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** @el_out, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** @el_in, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** @el_out, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  br label %91

51:                                               ; preds = %47
  %52 = call i8* @lookupvar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %52, i8** %1, align 8
  %53 = load i8*, i8** %1, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 1)
  br label %60

58:                                               ; preds = %51
  %59 = call i32 @unsetenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* @arg0, align 4
  %62 = load i32*, i32** @el_in, align 8
  %63 = load i32*, i32** @el_out, align 8
  %64 = load i32*, i32** @el_out, align 8
  %65 = call i32* @el_init(i32 %61, i32* %62, i32* %63, i32* %64)
  store i32* %65, i32** @el, align 8
  %66 = load i32*, i32** @el, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %60
  %69 = load i32*, i32** @hist, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** @el, align 8
  %73 = load i32, i32* @EL_HIST, align 4
  %74 = load i32, i32* @history, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32*, i32** @hist, align 8
  %78 = call i32 (i32*, i32, i8*, ...) @el_set(i32* %72, i32 %73, i8* %76, i32* %77)
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i32*, i32** @el, align 8
  %81 = load i32, i32* @EL_PROMPT, align 4
  %82 = load i32, i32* @getprompt, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 (i32*, i32, i8*, ...) @el_set(i32* %80, i32 %81, i8* %84)
  %86 = load i32*, i32** @el, align 8
  %87 = load i32, i32* @EL_ADDFN, align 4
  %88 = load i32*, i32** @_el_fn_complete, align 8
  %89 = call i32 (i32*, i32, i8*, ...) @el_set(i32* %86, i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %88)
  br label %93

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %50
  %92 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %79
  %94 = load i32, i32* @INTON, align 4
  br label %110

95:                                               ; preds = %28, %25, %22
  %96 = load i64, i64* @Eflag, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %95
  %99 = load i64, i64* @Vflag, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = load i32*, i32** @el, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* @INTOFF, align 4
  %106 = load i32*, i32** @el, align 8
  %107 = call i32 @el_end(i32* %106)
  store i32* null, i32** @el, align 8
  %108 = load i32, i32* @INTON, align 4
  br label %109

109:                                              ; preds = %104, %101, %98, %95
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i32*, i32** @el, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i64, i64* @Vflag, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32*, i32** @el, align 8
  %118 = load i32, i32* @EL_EDITOR, align 4
  %119 = call i32 (i32*, i32, i8*, ...) @el_set(i32* %117, i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %128

120:                                              ; preds = %113
  %121 = load i64, i64* @Eflag, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32*, i32** @el, align 8
  %125 = load i32, i32* @EL_EDITOR, align 4
  %126 = call i32 (i32*, i32, i8*, ...) @el_set(i32* %124, i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %120
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32*, i32** @el, align 8
  %130 = load i32, i32* @EL_BIND, align 4
  %131 = call i32 (i32*, i32, i8*, ...) @el_set(i32* %129, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %132 = load i32*, i32** @el, align 8
  %133 = call i32 @el_source(i32* %132, i32* null)
  br label %134

134:                                              ; preds = %128, %110
  br label %150

135:                                              ; preds = %0
  %136 = load i32, i32* @INTOFF, align 4
  %137 = load i32*, i32** @el, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32*, i32** @el, align 8
  %141 = call i32 @el_end(i32* %140)
  store i32* null, i32** @el, align 8
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i32*, i32** @hist, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32*, i32** @hist, align 8
  %147 = call i32 @history_end(i32* %146)
  store i32* null, i32** @hist, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* @INTON, align 4
  br label %150

150:                                              ; preds = %148, %134
  ret void
}

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @sethistsize(i32) #1

declare dso_local i32 @histsizeval(...) #1

declare dso_local i32 @out2fmt_flush(i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i8* @fdopen(i32, i8*) #1

declare dso_local i8* @lookupvar(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32* @el_init(i32, i32*, i32*, i32*) #1

declare dso_local i32 @el_set(i32*, i32, i8*, ...) #1

declare dso_local i32 @el_end(i32*) #1

declare dso_local i32 @el_source(i32*, i32*) #1

declare dso_local i32 @history_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
