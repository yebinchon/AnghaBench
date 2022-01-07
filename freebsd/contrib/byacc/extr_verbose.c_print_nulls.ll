; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_print_nulls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_verbose.c_print_nulls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, %struct.TYPE_3__* }

@parser = common dso_local global %struct.TYPE_3__** null, align 8
@REDUCE = common dso_local global i64 0, align 8
@rrhs = common dso_local global i64* null, align 8
@null_rules = common dso_local global i64* null, align 8
@verbose_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\09%s : .  (%d)\0A\00", align 1
@symbol_name = common dso_local global i8** null, align 8
@rlhs = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_nulls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nulls(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @parser, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %8, i64 %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %3, align 8
  br label %13

13:                                               ; preds = %113, %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %117

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REDUCE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %112

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %112

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  %36 = load i64*, i64** @rrhs, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i64*, i64** @rrhs, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load i64*, i64** @null_rules, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %53, %57
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %48

65:                                               ; preds = %59
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64*, i64** @null_rules, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %72, i64* %75, align 8
  br label %110

76:                                               ; preds = %65
  %77 = load i64, i64* %4, align 8
  %78 = load i64*, i64** @null_rules, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %101, %83
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i64*, i64** @null_rules, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 %94, 1
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** @null_rules, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %92
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %6, align 8
  br label %88

104:                                              ; preds = %88
  %105 = load i64, i64* %4, align 8
  %106 = load i64*, i64** @null_rules, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %105, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %76
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110, %32
  br label %112

112:                                              ; preds = %111, %27, %16
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  store %struct.TYPE_3__* %116, %struct.TYPE_3__** %3, align 8
  br label %13

117:                                              ; preds = %13
  store i64 0, i64* %4, align 8
  br label %118

118:                                              ; preds = %138, %117
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load i64*, i64** @null_rules, align 8
  %124 = load i64, i64* %4, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %5, align 8
  %127 = load i32, i32* @verbose_file, align 4
  %128 = load i8**, i8*** @symbol_name, align 8
  %129 = load i64*, i64** @rlhs, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8*, i8** %128, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = sub i64 %135, 2
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %134, i64 %136)
  br label %138

138:                                              ; preds = %122
  %139 = load i64, i64* %4, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %4, align 8
  br label %118

141:                                              ; preds = %118
  %142 = load i32, i32* @verbose_file, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
