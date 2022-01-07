; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_regparm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_regparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_local_info = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ix86_regparm = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"regparm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fastcall\00", align 1
@flag_unit_at_a_time = common dso_local global i64 0, align 8
@profile_flag = common dso_local global i32 0, align 4
@global_regs = common dso_local global i64* null, align 8
@ix86_force_align_arg_pointer_string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @ix86_function_regparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_function_regparm(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgraph_local_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @ix86_regparm, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @TARGET_64BIT, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %146, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @TYPE_ATTRIBUTES(i64 %16)
  %18 = call i64 @lookup_attribute(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_VALUE(i64 %22)
  %24 = call i64 @TREE_VALUE(i64 %23)
  %25 = call i32 @TREE_INT_CST_LOW(i64 %24)
  store i32 %25, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @TYPE_ATTRIBUTES(i64 %27)
  %29 = call i64 @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* @TARGET_64BIT, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %145, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %145, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %145

41:                                               ; preds = %38
  %42 = load i64, i64* @flag_unit_at_a_time, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %145

44:                                               ; preds = %41
  %45 = load i32, i32* @profile_flag, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %145, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8
  %49 = call %struct.cgraph_local_info* @cgraph_local_info(i64 %48)
  store %struct.cgraph_local_info* %49, %struct.cgraph_local_info** %8, align 8
  %50 = load %struct.cgraph_local_info*, %struct.cgraph_local_info** %8, align 8
  %51 = icmp ne %struct.cgraph_local_info* %50, null
  br i1 %51, label %52, label %144

52:                                               ; preds = %47
  %53 = load %struct.cgraph_local_info*, %struct.cgraph_local_info** %8, align 8
  %54 = getelementptr inbounds %struct.cgraph_local_info, %struct.cgraph_local_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %144

57:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i64*, i64** @global_regs, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %73

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %58

73:                                               ; preds = %68, %58
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @decl_function_context(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @DECL_NO_STATIC_CHAIN(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 2, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %80, %76, %73
  %86 = load i64, i64* %4, align 8
  %87 = call %struct.TYPE_4__* @DECL_STRUCT_FUNCTION(i64 %86)
  %88 = icmp ne %struct.TYPE_4__* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i64, i64* %4, align 8
  %91 = call %struct.TYPE_4__* @DECL_STRUCT_FUNCTION(i64 %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %89, %85
  %98 = load i64, i64* %4, align 8
  %99 = call %struct.TYPE_4__* @DECL_STRUCT_FUNCTION(i64 %98)
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** @ix86_force_align_arg_pointer_string, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @TREE_TYPE(i64 %103)
  %105 = call i32 @TYPE_ATTRIBUTES(i64 %104)
  %106 = call i64 @lookup_attribute(i8* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101, %89
  store i32 2, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %101, %97
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %124, %109
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 6
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i64*, i64** @global_regs, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %120, %113
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %110

127:                                              ; preds = %110
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %132, %133
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i32 [ %134, %131 ], [ 0, %135 ]
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %136
  br label %144

144:                                              ; preds = %143, %52, %47
  br label %145

145:                                              ; preds = %144, %44, %41, %38, %35, %32
  br label %146

146:                                              ; preds = %145, %2
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local %struct.cgraph_local_info* @cgraph_local_info(i64) #1

declare dso_local i64 @decl_function_context(i64) #1

declare dso_local i32 @DECL_NO_STATIC_CHAIN(i64) #1

declare dso_local %struct.TYPE_4__* @DECL_STRUCT_FUNCTION(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
