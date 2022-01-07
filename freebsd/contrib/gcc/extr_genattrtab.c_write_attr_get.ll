; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_attr_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_attr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { i8*, i64, %struct.attr_value*, i32 }
%struct.attr_value = type { i32, %struct.attr_value*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"enum attr_%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s (rtx insn ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"get_attr_%s (rtx insn ATTRIBUTE_UNUSED)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"get_attr_%s (void)\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c";\00", align 1
@true_rtx = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"  switch (recog_memoized (insn))\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"    }\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_desc*)* @write_attr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_attr_get(%struct.attr_desc* %0) #0 {
  %2 = alloca %struct.attr_desc*, align 8
  %3 = alloca %struct.attr_value*, align 8
  %4 = alloca %struct.attr_value*, align 8
  store %struct.attr_desc* %0, %struct.attr_desc** %2, align 8
  %5 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %6 = call %struct.attr_value* @find_most_used(%struct.attr_desc* %5)
  store %struct.attr_value* %6, %struct.attr_value** %4, align 8
  %7 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %8 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %13 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %20 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 42
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %28 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %101

32:                                               ; preds = %18
  %33 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %34 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %39 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %100

42:                                               ; preds = %32
  %43 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %44 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %48 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %49 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %48, i32 0, i32 2
  %50 = load %struct.attr_value*, %struct.attr_value** %49, align 8
  store %struct.attr_value* %50, %struct.attr_value** %3, align 8
  br label %51

51:                                               ; preds = %94, %42
  %52 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %53 = icmp ne %struct.attr_value* %52, null
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %56 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %61 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %62 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @true_rtx, align 4
  %65 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %66 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %73 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @write_attr_set(%struct.attr_desc* %60, i32 2, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %64, i32 %71, i32 %78)
  br label %93

80:                                               ; preds = %54
  %81 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %82 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %87 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %88 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @true_rtx, align 4
  %91 = call i32 @write_attr_set(%struct.attr_desc* %86, i32 2, i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 -2, i32 0)
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %96 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %95, i32 0, i32 1
  %97 = load %struct.attr_value*, %struct.attr_value** %96, align 8
  store %struct.attr_value* %97, %struct.attr_value** %3, align 8
  br label %51

98:                                               ; preds = %51
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %131

100:                                              ; preds = %37
  br label %101

101:                                              ; preds = %100, %26
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %105 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %106 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %105, i32 0, i32 2
  %107 = load %struct.attr_value*, %struct.attr_value** %106, align 8
  store %struct.attr_value* %107, %struct.attr_value** %3, align 8
  br label %108

108:                                              ; preds = %121, %101
  %109 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %110 = icmp ne %struct.attr_value* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %113 = load %struct.attr_value*, %struct.attr_value** %4, align 8
  %114 = icmp ne %struct.attr_value* %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %117 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %118 = load i32, i32* @true_rtx, align 4
  %119 = call i32 @write_attr_case(%struct.attr_desc* %116, %struct.attr_value* %117, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 %118)
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %123 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %122, i32 0, i32 1
  %124 = load %struct.attr_value*, %struct.attr_value** %123, align 8
  store %struct.attr_value* %124, %struct.attr_value** %3, align 8
  br label %108

125:                                              ; preds = %108
  %126 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %127 = load %struct.attr_value*, %struct.attr_value** %4, align 8
  %128 = load i32, i32* @true_rtx, align 4
  %129 = call i32 @write_attr_case(%struct.attr_desc* %126, %struct.attr_value* %127, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %131

131:                                              ; preds = %125, %98
  ret void
}

declare dso_local %struct.attr_value* @find_most_used(%struct.attr_desc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @write_attr_set(%struct.attr_desc*, i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @write_attr_case(%struct.attr_desc*, %struct.attr_value*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
