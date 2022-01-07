; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_readonly_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_readonly_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lv_assign = common dso_local global i32 0, align 4
@lv_increment = common dso_local global i32 0, align 4
@lv_decrement = common dso_local global i32 0, align 4
@lv_asm = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"assignment of read-only member %qD\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"increment of read-only member %qD\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"decrement of read-only member %qD\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"read-only member %qD used as %<asm%> output\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"assignment of read-only variable %qD\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"increment of read-only variable %qD\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"decrement of read-only variable %qD\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"read-only variable %qD used as %<asm%> output\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"assignment of read-only location\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"increment of read-only location\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"decrement of read-only location\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"read-only location used as %<asm%> output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @readonly_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readonly_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @lv_assign, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @lv_increment, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @lv_decrement, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @lv_asm, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12, %8, %2
  %21 = phi i1 [ true, %12 ], [ true, %8 ], [ true, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i64, i64* @COMPONENT_REF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 0)
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i64 @TYPE_READONLY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @TREE_OPERAND(i32 %35, i32 0)
  %37 = load i32, i32* %4, align 4
  call void @readonly_error(i32 %36, i32 %37)
  br label %67

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @lv_assign, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @G_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %62

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @lv_increment, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @G_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %60

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @lv_decrement, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @G_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %58

56:                                               ; preds = %50
  %57 = call i32 @G_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %48
  %61 = phi i32 [ %49, %48 ], [ %59, %58 ]
  br label %62

62:                                               ; preds = %60, %42
  %63 = phi i32 [ %43, %42 ], [ %61, %60 ]
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 1)
  %66 = call i32 (i32, ...) @error(i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %34
  br label %129

68:                                               ; preds = %20
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @TREE_CODE(i32 %69)
  %71 = load i64, i64* @VAR_DECL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @lv_assign, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @G_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %97

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @lv_increment, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @G_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %95

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @lv_decrement, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @G_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %93

91:                                               ; preds = %85
  %92 = call i32 @G_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i32 [ %84, %83 ], [ %94, %93 ]
  br label %97

97:                                               ; preds = %95, %77
  %98 = phi i32 [ %78, %77 ], [ %96, %95 ]
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, ...) @error(i32 %98, i32 %99)
  br label %128

101:                                              ; preds = %68
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @lv_assign, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @G_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %125

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @lv_increment, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 @G_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %123

113:                                              ; preds = %107
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @lv_decrement, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @G_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %121

119:                                              ; preds = %113
  %120 = call i32 @G_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  br label %123

123:                                              ; preds = %121, %111
  %124 = phi i32 [ %112, %111 ], [ %122, %121 ]
  br label %125

125:                                              ; preds = %123, %105
  %126 = phi i32 [ %106, %105 ], [ %124, %123 ]
  %127 = call i32 (i32, ...) @error(i32 %126)
  br label %128

128:                                              ; preds = %125, %97
  br label %129

129:                                              ; preds = %128, %67
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TYPE_READONLY(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @G_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
