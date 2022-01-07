; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_note_yacc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_note_yacc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.fileloc = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"couldn't match fieldname `%s'\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"YYSTYPE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"yy_union\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @note_yacc_type(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.fileloc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.fileloc*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.fileloc* %3, %struct.fileloc** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  br label %16

16:                                               ; preds = %105, %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %109

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %105

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %12, align 8
  br label %32

32:                                               ; preds = %55, %30
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 1
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @strcmp(i32* %45, i32* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 1, i32* %13, align 4
  br label %59

54:                                               ; preds = %40, %35
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %12, align 8
  br label %32

59:                                               ; preds = %53, %32
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %105

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %25
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %11, align 8
  br label %66

66:                                               ; preds = %85, %64
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @strcmp(i32* %72, i32* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %69
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %11, align 8
  br label %66

89:                                               ; preds = %66
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @error_at_line(i32* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %95, %89
  br label %105

105:                                              ; preds = %104, %62, %24
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %9, align 8
  br label %16

109:                                              ; preds = %16
  store %struct.TYPE_7__** %7, %struct.TYPE_7__*** %10, align 8
  br label %110

110:                                              ; preds = %134, %109
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = icmp ne %struct.TYPE_7__* %112, null
  br i1 %113, label %114, label %135

114:                                              ; preds = %110
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %14, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 1
  br i1 %125, label %126, label %131

126:                                              ; preds = %121, %114
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %130, align 8
  br label %134

131:                                              ; preds = %121
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store %struct.TYPE_7__** %133, %struct.TYPE_7__*** %10, align 8
  br label %134

134:                                              ; preds = %131, %126
  br label %110

135:                                              ; preds = %110
  %136 = load %struct.fileloc*, %struct.fileloc** %8, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @new_structure(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.fileloc* %136, %struct.TYPE_7__* %137, i32 %138)
  %140 = load %struct.fileloc*, %struct.fileloc** %8, align 8
  %141 = call i32 @do_typedef(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %139, %struct.fileloc* %140)
  ret void
}

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @error_at_line(i32*, i8*, i32*) #1

declare dso_local i32 @do_typedef(i8*, i32, %struct.fileloc*) #1

declare dso_local i32 @new_structure(i8*, i32, %struct.fileloc*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
