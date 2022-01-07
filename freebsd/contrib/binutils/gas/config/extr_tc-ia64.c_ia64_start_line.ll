; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_start_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_start_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ia64_start_line.first = internal global i32 0, align 4
@md = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@O_register = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"qualifying predicate not followed by instruction\00", align 1
@O_absent = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@ia64_start_line.warned = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Explicit stops are ignored in auto mode\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Found '{' when manual bundling is already turned on\00", align 1
@CURR_SLOT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Found '{' after explicit switch to automatic mode\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Found '}' when manual bundling is off\00", align 1
@PREV_SLOT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_start_line() #0 {
  %1 = load i32, i32* @ia64_start_line.first, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i32 1, i32* @ia64_start_line.first, align 4
  br label %103

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 5, i32 0), align 8
  %6 = load i64, i64* @O_register, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 @as_bad(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %4
  %11 = load i64, i64* @O_absent, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 5, i32 0), align 8
  %12 = call i64 (...) @ignore_input()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %103

15:                                               ; preds = %10
  %16 = load i8*, i8** @input_line_pointer, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 59
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load i8*, i8** @input_line_pointer, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 59
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 4), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 3), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ia64_start_line.warned, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  store i32 1, i32* @ia64_start_line.warned, align 4
  %37 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @as_warn(i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %42

40:                                               ; preds = %30, %27
  %41 = call i32 @insn_group_break(i32 1, i32 0, i32 0)
  br label %42

42:                                               ; preds = %40, %39
  br label %103

43:                                               ; preds = %21, %15
  %44 = load i8*, i8** @input_line_pointer, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 123
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 0), align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @as_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %55

54:                                               ; preds = %49
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @CURR_SLOT, i32 0, i32 0), align 4
  br label %55

55:                                               ; preds = %54, %52
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 0), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 4), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 3), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 2), align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 1), align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 @dot_dv_mode(i8 signext 69)
  br label %72

69:                                               ; preds = %64, %61
  %70 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 @as_warn(i8* %70)
  br label %72

72:                                               ; preds = %69, %67
  br label %73

73:                                               ; preds = %72, %58, %55
  br label %102

74:                                               ; preds = %43
  %75 = load i8*, i8** @input_line_pointer, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 125
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 0), align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 @as_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %86

85:                                               ; preds = %80
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @PREV_SLOT, i32 0, i32 0), align 4
  br label %86

86:                                               ; preds = %85, %83
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 0), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 4), align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 3), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 2), align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 1), align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 @dot_dv_mode(i8 signext 65)
  br label %100

100:                                              ; preds = %98, %95, %92, %89, %86
  br label %101

101:                                              ; preds = %100, %74
  br label %102

102:                                              ; preds = %101, %73
  br label %103

103:                                              ; preds = %3, %14, %102, %42
  ret void
}

declare dso_local i32 @as_bad(i8*) #1

declare dso_local i64 @ignore_input(...) #1

declare dso_local i32 @as_warn(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @insn_group_break(i32, i32, i32) #1

declare dso_local i32 @dot_dv_mode(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
