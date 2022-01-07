; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_clause_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_omp_clause_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PRAGMA_OMP_CLAUSE_NONE = common dso_local global i64 0, align 8
@RID_IF = common dso_local global i32 0, align 4
@PRAGMA_OMP_CLAUSE_IF = common dso_local global i64 0, align 8
@RID_DEFAULT = common dso_local global i32 0, align 4
@PRAGMA_OMP_CLAUSE_DEFAULT = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@PRAGMA_OMP_CLAUSE_COPYIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@PRAGMA_OMP_CLAUSE_COPYPRIVATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@PRAGMA_OMP_CLAUSE_FIRSTPRIVATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@PRAGMA_OMP_CLAUSE_LASTPRIVATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@PRAGMA_OMP_CLAUSE_NOWAIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@PRAGMA_OMP_CLAUSE_NUM_THREADS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@PRAGMA_OMP_CLAUSE_ORDERED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@PRAGMA_OMP_CLAUSE_PRIVATE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@PRAGMA_OMP_CLAUSE_REDUCTION = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@PRAGMA_OMP_CLAUSE_SCHEDULE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@PRAGMA_OMP_CLAUSE_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_omp_clause_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_omp_clause_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i64, i64* @PRAGMA_OMP_CLAUSE_NONE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @RID_IF, align 4
  %8 = call i64 @c_parser_next_token_is_keyword(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @PRAGMA_OMP_CLAUSE_IF, align 8
  store i64 %11, i64* %3, align 8
  br label %114

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @RID_DEFAULT, align 4
  %15 = call i64 @c_parser_next_token_is_keyword(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* @PRAGMA_OMP_CLAUSE_DEFAULT, align 8
  store i64 %18, i64* %3, align 8
  br label %113

19:                                               ; preds = %12
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @CPP_NAME, align 4
  %22 = call i64 @c_parser_next_token_is(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %112

24:                                               ; preds = %19
  %25 = load i32*, i32** %2, align 8
  %26 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @IDENTIFIER_POINTER(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %111 [
    i32 99, label %34
    i32 102, label %48
    i32 108, label %55
    i32 110, label %62
    i32 111, label %76
    i32 112, label %83
    i32 114, label %90
    i32 115, label %97
  ]

34:                                               ; preds = %24
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @PRAGMA_OMP_CLAUSE_COPYIN, align 8
  store i64 %39, i64* %3, align 8
  br label %47

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @PRAGMA_OMP_CLAUSE_COPYPRIVATE, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %38
  br label %111

48:                                               ; preds = %24
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @PRAGMA_OMP_CLAUSE_FIRSTPRIVATE, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %52, %48
  br label %111

55:                                               ; preds = %24
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @PRAGMA_OMP_CLAUSE_LASTPRIVATE, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %55
  br label %111

62:                                               ; preds = %24
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* @PRAGMA_OMP_CLAUSE_NOWAIT, align 8
  store i64 %67, i64* %3, align 8
  br label %75

68:                                               ; preds = %62
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* @PRAGMA_OMP_CLAUSE_NUM_THREADS, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %66
  br label %111

76:                                               ; preds = %24
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* @PRAGMA_OMP_CLAUSE_ORDERED, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %80, %76
  br label %111

83:                                               ; preds = %24
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* @PRAGMA_OMP_CLAUSE_PRIVATE, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %87, %83
  br label %111

90:                                               ; preds = %24
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* @PRAGMA_OMP_CLAUSE_REDUCTION, align 8
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %94, %90
  br label %111

97:                                               ; preds = %24
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* @PRAGMA_OMP_CLAUSE_SCHEDULE, align 8
  store i64 %102, i64* %3, align 8
  br label %110

103:                                              ; preds = %97
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* @PRAGMA_OMP_CLAUSE_SHARED, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %24, %110, %96, %89, %82, %75, %61, %54, %47
  br label %112

112:                                              ; preds = %111, %19
  br label %113

113:                                              ; preds = %112, %17
  br label %114

114:                                              ; preds = %113, %10
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* @PRAGMA_OMP_CLAUSE_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32*, i32** %2, align 8
  %120 = call i32 @c_parser_consume_token(i32* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
