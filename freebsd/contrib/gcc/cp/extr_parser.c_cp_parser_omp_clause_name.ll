; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_clause_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_omp_clause_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PRAGMA_OMP_CLAUSE_NONE = common dso_local global i64 0, align 8
@RID_IF = common dso_local global i32 0, align 4
@PRAGMA_OMP_CLAUSE_IF = common dso_local global i64 0, align 8
@RID_DEFAULT = common dso_local global i32 0, align 4
@PRAGMA_OMP_CLAUSE_DEFAULT = common dso_local global i64 0, align 8
@RID_PRIVATE = common dso_local global i32 0, align 4
@PRAGMA_OMP_CLAUSE_PRIVATE = common dso_local global i64 0, align 8
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
@.str.7 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@PRAGMA_OMP_CLAUSE_REDUCTION = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@PRAGMA_OMP_CLAUSE_SCHEDULE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@PRAGMA_OMP_CLAUSE_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @cp_parser_omp_clause_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_omp_clause_name(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load i64, i64* @PRAGMA_OMP_CLAUSE_NONE, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RID_IF, align 4
  %11 = call i64 @cp_lexer_next_token_is_keyword(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @PRAGMA_OMP_CLAUSE_IF, align 8
  store i64 %14, i64* %3, align 8
  br label %128

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RID_DEFAULT, align 4
  %20 = call i64 @cp_lexer_next_token_is_keyword(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* @PRAGMA_OMP_CLAUSE_DEFAULT, align 8
  store i64 %23, i64* %3, align 8
  br label %127

24:                                               ; preds = %15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RID_PRIVATE, align 4
  %29 = call i64 @cp_lexer_next_token_is_keyword(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @PRAGMA_OMP_CLAUSE_PRIVATE, align 8
  store i64 %32, i64* %3, align 8
  br label %126

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CPP_NAME, align 4
  %38 = call i64 @cp_lexer_next_token_is(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %125

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_7__* @cp_lexer_peek_token(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @IDENTIFIER_POINTER(i32 %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %124 [
    i32 99, label %54
    i32 102, label %68
    i32 108, label %75
    i32 110, label %82
    i32 111, label %96
    i32 114, label %103
    i32 115, label %110
  ]

54:                                               ; preds = %40
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* @PRAGMA_OMP_CLAUSE_COPYIN, align 8
  store i64 %59, i64* %3, align 8
  br label %67

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* @PRAGMA_OMP_CLAUSE_COPYPRIVATE, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %58
  br label %124

68:                                               ; preds = %40
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* @PRAGMA_OMP_CLAUSE_FIRSTPRIVATE, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %72, %68
  br label %124

75:                                               ; preds = %40
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* @PRAGMA_OMP_CLAUSE_LASTPRIVATE, align 8
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %79, %75
  br label %124

82:                                               ; preds = %40
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* @PRAGMA_OMP_CLAUSE_NOWAIT, align 8
  store i64 %87, i64* %3, align 8
  br label %95

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* @PRAGMA_OMP_CLAUSE_NUM_THREADS, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %86
  br label %124

96:                                               ; preds = %40
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* @PRAGMA_OMP_CLAUSE_ORDERED, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %100, %96
  br label %124

103:                                              ; preds = %40
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* @PRAGMA_OMP_CLAUSE_REDUCTION, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %107, %103
  br label %124

110:                                              ; preds = %40
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* @PRAGMA_OMP_CLAUSE_SCHEDULE, align 8
  store i64 %115, i64* %3, align 8
  br label %123

116:                                              ; preds = %110
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* @PRAGMA_OMP_CLAUSE_SHARED, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %40, %123, %109, %102, %95, %81, %74, %67
  br label %125

125:                                              ; preds = %124, %33
  br label %126

126:                                              ; preds = %125, %31
  br label %127

127:                                              ; preds = %126, %22
  br label %128

128:                                              ; preds = %127, %13
  %129 = load i64, i64* %3, align 8
  %130 = load i64, i64* @PRAGMA_OMP_CLAUSE_NONE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cp_lexer_consume_token(i32 %135)
  br label %137

137:                                              ; preds = %132, %128
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local %struct.TYPE_7__* @cp_lexer_peek_token(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
