; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_omp_clause.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_dump_omp_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"reduction(\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"if(\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"num_threads(\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"default(\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"schedule(\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"guided\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @dump_omp_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_omp_clause(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @OMP_CLAUSE_CODE(i32 %10)
  switch i32 %11, label %133 [
    i32 135, label %12
    i32 128, label %13
    i32 141, label %14
    i32 139, label %15
    i32 148, label %16
    i32 147, label %17
    i32 134, label %32
    i32 140, label %50
    i32 137, label %61
    i32 138, label %72
    i32 136, label %75
    i32 146, label %78
    i32 133, label %98
  ]

12:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %18

13:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %18

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %18

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %18

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %18

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @pp_string(i32* %19, i8* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @pp_character(i32* %22, i8 signext 40)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @OMP_CLAUSE_DECL(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dump_generic_node(i32* %24, i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @pp_character(i32* %30, i8 signext 41)
  br label %139

32:                                               ; preds = %4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @pp_string(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @OMP_CLAUSE_REDUCTION_CODE(i32 %36)
  %38 = call i8* @op_symbol_1(i32 %37)
  %39 = call i32 @pp_string(i32* %35, i8* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @pp_character(i32* %40, i8 signext 58)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @OMP_CLAUSE_DECL(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dump_generic_node(i32* %42, i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @pp_character(i32* %48, i8 signext 41)
  br label %139

50:                                               ; preds = %4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @pp_string(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @OMP_CLAUSE_IF_EXPR(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dump_generic_node(i32* %53, i32 %55, i32 %56, i32 %57, i32 0)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @pp_character(i32* %59, i8 signext 41)
  br label %139

61:                                               ; preds = %4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @pp_string(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @OMP_CLAUSE_NUM_THREADS_EXPR(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dump_generic_node(i32* %64, i32 %66, i32 %67, i32 %68, i32 0)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @pp_character(i32* %70, i8 signext 41)
  br label %139

72:                                               ; preds = %4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @pp_string(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %139

75:                                               ; preds = %4
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @pp_string(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %139

78:                                               ; preds = %4
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @pp_string(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @OMP_CLAUSE_DEFAULT_KIND(i32 %81)
  switch i32 %82, label %93 [
    i32 142, label %83
    i32 143, label %84
    i32 145, label %87
    i32 144, label %90
  ]

83:                                               ; preds = %78
  br label %95

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @pp_string(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %95

87:                                               ; preds = %78
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @pp_string(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %95

90:                                               ; preds = %78
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @pp_string(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %95

93:                                               ; preds = %78
  %94 = call i32 (...) @gcc_unreachable()
  br label %95

95:                                               ; preds = %93, %90, %87, %84, %83
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @pp_character(i32* %96, i8 signext 41)
  br label %139

98:                                               ; preds = %4
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @pp_string(i32* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @OMP_CLAUSE_SCHEDULE_KIND(i32 %101)
  switch i32 %102, label %115 [
    i32 129, label %103
    i32 132, label %106
    i32 131, label %109
    i32 130, label %112
  ]

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @pp_string(i32* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %117

106:                                              ; preds = %98
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @pp_string(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %117

109:                                              ; preds = %98
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @pp_string(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %117

112:                                              ; preds = %98
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @pp_string(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %117

115:                                              ; preds = %98
  %116 = call i32 (...) @gcc_unreachable()
  br label %117

117:                                              ; preds = %115, %112, %109, %106, %103
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @pp_character(i32* %122, i8 signext 44)
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @dump_generic_node(i32* %124, i32 %126, i32 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %121, %117
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @pp_character(i32* %131, i8 signext 41)
  br label %139

133:                                              ; preds = %4
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @dump_generic_node(i32* %134, i32 %135, i32 %136, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %133, %130, %95, %75, %72, %61, %50, %32, %18
  ret void
}

declare dso_local i32 @OMP_CLAUSE_CODE(i32) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @pp_character(i32*, i8 signext) #1

declare dso_local i32 @dump_generic_node(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @OMP_CLAUSE_DECL(i32) #1

declare dso_local i8* @op_symbol_1(i32) #1

declare dso_local i32 @OMP_CLAUSE_REDUCTION_CODE(i32) #1

declare dso_local i32 @OMP_CLAUSE_IF_EXPR(i32) #1

declare dso_local i32 @OMP_CLAUSE_NUM_THREADS_EXPR(i32) #1

declare dso_local i32 @OMP_CLAUSE_DEFAULT_KIND(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @OMP_CLAUSE_SCHEDULE_KIND(i32) #1

declare dso_local i32 @OMP_CLAUSE_SCHEDULE_CHUNK_EXPR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
