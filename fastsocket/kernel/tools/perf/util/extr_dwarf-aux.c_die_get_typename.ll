; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_die_get_typename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_die_get_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@DW_TAG_array_type = common dso_local global i32 0, align 4
@DW_TAG_pointer_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@DW_TAG_subroutine_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"(function_type)\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@DW_TAG_union_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@DW_TAG_structure_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@DW_TAG_enumeration_type = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @die_get_typename(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @__die_get_real_type(i32* %13, i32* %8)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %118

19:                                               ; preds = %3
  %20 = call i32 @dwarf_tag(i32* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @DW_TAG_array_type, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @DW_TAG_pointer_type, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %86

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @DW_TAG_subroutine_type, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @E2BIG, align 4
  %42 = sub nsw i32 0, %41
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %42, %40 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  br label %118

47:                                               ; preds = %29
  %48 = call i32 @dwarf_diename(i32* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %118

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @DW_TAG_union_type, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %70

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @DW_TAG_structure_type, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %69

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @DW_TAG_enumeration_type, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %68

68:                                               ; preds = %67, %63
  br label %69

69:                                               ; preds = %68, %62
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @dwarf_diename(i32* %8)
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @E2BIG, align 4
  %81 = sub nsw i32 0, %80
  br label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  store i32 %85, i32* %4, align 4
  br label %118

86:                                               ; preds = %28
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @die_get_typename(i32* %8, i8* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %96, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load i32, i32* @E2BIG, align 4
  %109 = sub nsw i32 0, %108
  br label %114

110:                                              ; preds = %92
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i32 [ %109, %107 ], [ %113, %110 ]
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %114, %86
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %84, %50, %45, %16
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32* @__die_get_real_type(i32*, i32*) #1

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @dwarf_diename(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
