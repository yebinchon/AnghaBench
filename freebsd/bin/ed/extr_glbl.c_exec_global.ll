; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_exec_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_exec_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_global.ocmd = internal global i8* null, align 8
@exec_global.ocmdsz = internal global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@current_addr = common dso_local global i32 0, align 4
@ibuf = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected end-of-file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"&\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"no previous command\00", align 1
@ibufp = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @exec_global(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = call i8* @get_extended_line(i32* %8, i32 0)
  store i8* %13, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* @ERR, align 8
  store i64 %16, i64* %3, align 8
  br label %140

17:                                               ; preds = %12, %2
  %18 = call i32 (...) @clear_undo_stack()
  br label %19

19:                                               ; preds = %138, %74, %17
  %20 = call i32* (...) @next_active_node()
  store i32* %20, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %139

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @get_line_node_addr(i32* %23)
  store i32 %24, i32* @current_addr, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @ERR, align 8
  store i64 %27, i64* %3, align 8
  br label %140

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load i32, i32* @current_addr, align 4
  %33 = load i32, i32* @current_addr, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @display_lines(i32 %32, i32 %33, i32 %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @ERR, align 8
  store i64 %38, i64* %3, align 8
  br label %140

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %54, %39
  %41 = call i32 (...) @get_tty_line()
  store i32 %41, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i8*, i8** @ibuf, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 10
  br label %52

52:                                               ; preds = %43, %40
  %53 = phi i1 [ false, %40 ], [ %51, %43 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i32, i32* @stdin, align 4
  %56 = call i32 @clearerr(i32 %55)
  br label %40

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @ERR, align 8
  store i64 %61, i64* %3, align 8
  br label %140

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %66 = load i64, i64* @ERR, align 8
  store i64 %66, i64* %3, align 8
  br label %140

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** @ibuf, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %19

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i8*, i8** @ibuf, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** @errmsg, align 8
  %86 = load i64, i64* @ERR, align 8
  store i64 %86, i64* %3, align 8
  br label %140

87:                                               ; preds = %82
  %88 = load i8*, i8** @exec_global.ocmd, align 8
  store i8* %88, i8** %9, align 8
  br label %89

89:                                               ; preds = %87
  br label %109

90:                                               ; preds = %78, %75
  %91 = call i8* @get_extended_line(i32* %8, i32 0)
  store i8* %91, i8** %9, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @ERR, align 8
  store i64 %94, i64* %3, align 8
  br label %140

95:                                               ; preds = %90
  %96 = load i8*, i8** @exec_global.ocmd, align 8
  %97 = load i32, i32* @exec_global.ocmdsz, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i64, i64* @ERR, align 8
  %101 = call i32 @REALLOC(i8* %96, i32 %97, i32 %99, i64 %100)
  %102 = load i8*, i8** @exec_global.ocmd, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @memcpy(i8* %102, i8* %103, i32 %105)
  %107 = load i8*, i8** @exec_global.ocmd, align 8
  store i8* %107, i8** %9, align 8
  br label %108

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %28
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** @ibufp, align 8
  br label %115

115:                                              ; preds = %137, %113
  %116 = load i8*, i8** @ibufp, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = call i32 (...) @extract_addr_range()
  store i32 %120, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %119
  %123 = call i32 (...) @exec_command()
  store i32 %123, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i32, i32* @current_addr, align 4
  %130 = load i32, i32* @current_addr, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @display_lines(i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128, %122, %119
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %3, align 8
  br label %140

137:                                              ; preds = %128, %125
  br label %115

138:                                              ; preds = %115
  br label %19

139:                                              ; preds = %19
  store i64 0, i64* %3, align 8
  br label %140

140:                                              ; preds = %139, %134, %93, %85, %65, %60, %37, %26, %15
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i8* @get_extended_line(i32*, i32) #1

declare dso_local i32 @clear_undo_stack(...) #1

declare dso_local i32* @next_active_node(...) #1

declare dso_local i32 @get_line_node_addr(i32*) #1

declare dso_local i32 @display_lines(i32, i32, i32) #1

declare dso_local i32 @get_tty_line(...) #1

declare dso_local i32 @clearerr(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @extract_addr_range(...) #1

declare dso_local i32 @exec_command(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
