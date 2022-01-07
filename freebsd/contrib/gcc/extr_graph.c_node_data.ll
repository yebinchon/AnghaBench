; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_graph.c_node_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_graph.c_node_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@graph_dump_format = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"edge: { sourcename: \22%s.0\22 targetname: \22%s.%d\22 }\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"node: {\0A  title: \22%s.%d\22\0A  color: %s\0A  label: \22%s %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"lightgrey\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"darkgreen\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"darkgrey\0A  shape: ellipse\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\22\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @node_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @PREV_INSN(i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* @graph_dump_format, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %18
  ]

11:                                               ; preds = %9
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* (...) @current_function_name()
  %14 = call i8* (...) @current_function_name()
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @XINT(i32 %15, i32 0)
  %17 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14, i32 %16)
  br label %19

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %9, %18, %11
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* @graph_dump_format, align 4
  switch i32 %21, label %67 [
    i32 128, label %22
    i32 129, label %66
  ]

22:                                               ; preds = %20
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* (...) @current_function_name()
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @XINT(i32 %25, i32 0)
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @NOTE_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %58

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @NONJUMP_INSN_P(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %56

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @JUMP_P(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @CALL_P(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @LABEL_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  br label %52

52:                                               ; preds = %46, %45
  %53 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %45 ], [ %51, %46 ]
  br label %54

54:                                               ; preds = %52, %40
  %55 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %40 ], [ %53, %52 ]
  br label %56

56:                                               ; preds = %54, %35
  %57 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %35 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %30
  %59 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %30 ], [ %57, %56 ]
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @GET_CODE(i32 %60)
  %62 = call i8* @GET_RTX_NAME(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @XINT(i32 %63, i32 0)
  %65 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %26, i8* %59, i8* %62, i32 %64)
  br label %67

66:                                               ; preds = %20
  br label %67

67:                                               ; preds = %20, %66, %58
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @NOTE_P(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @NOTE_LINE_NUMBER(i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @NOTE_LINE_NUMBER(i32 %76)
  %78 = call i8* @GET_NOTE_INSN_NAME(i64 %77)
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32*, i32** %3, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  br label %97

83:                                               ; preds = %67
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @INSN_P(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @PATTERN(i32 %89)
  %91 = call i32 @print_rtl_single(i32* %88, i32 %90)
  br label %96

92:                                               ; preds = %83
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @print_rtl_single(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i32, i32* @graph_dump_format, align 4
  switch i32 %98, label %103 [
    i32 128, label %99
    i32 129, label %102
  ]

99:                                               ; preds = %97
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %100)
  br label %103

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %97, %102, %99
  ret void
}

declare dso_local i64 @PREV_INSN(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @current_function_name(...) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i64 @NOTE_P(i32) #1

declare dso_local i32 @NONJUMP_INSN_P(i32) #1

declare dso_local i32 @JUMP_P(i32) #1

declare dso_local i32 @CALL_P(i32) #1

declare dso_local i32 @LABEL_P(i32) #1

declare dso_local i8* @GET_RTX_NAME(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i32) #1

declare dso_local i8* @GET_NOTE_INSN_NAME(i64) #1

declare dso_local i64 @INSN_P(i32) #1

declare dso_local i32 @print_rtl_single(i32*, i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
