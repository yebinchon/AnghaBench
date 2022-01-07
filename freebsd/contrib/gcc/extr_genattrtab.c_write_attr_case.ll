; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_attr_case.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_attr_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { i32 }
%struct.attr_value = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"case -1:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"if (GET_CODE (PATTERN (insn)) != ASM_INPUT\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"    && asm_noperands (PATTERN (insn)) < 0)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"  fatal_insn_not_found (insn);\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"default:\0A\00", align 1
@address_used = common dso_local global i64 0, align 8
@must_constrain = common dso_local global i64 0, align 8
@must_extract = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"extract_constrain_insn_cached (insn);\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"extract_insn_cached (insn);\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"break;\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_desc*, %struct.attr_value*, i32, i8*, i8*, i32, i32)* @write_attr_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_attr_case(%struct.attr_desc* %0, %struct.attr_value* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.attr_desc*, align 8
  %9 = alloca %struct.attr_value*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.attr_desc* %0, %struct.attr_desc** %8, align 8
  store %struct.attr_value* %1, %struct.attr_value** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %16 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %127

20:                                               ; preds = %7
  %21 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %22 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @write_indent(i32 %26)
  %28 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, 2
  %31 = call i32 @write_indent(i32 %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i32 @write_indent(i32 %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 2
  %39 = call i32 @write_indent(i32 %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %25, %20
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %46 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @write_insn_cases(%struct.TYPE_4__* %47, i32 %48)
  br label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @write_indent(i32 %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %44
  store i64 0, i64* @address_used, align 8
  store i64 0, i64* @must_constrain, align 8
  store i64 0, i64* @must_extract, align 8
  %55 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %56 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @walk_attr_value(i32 %57)
  %59 = load i64, i64* @must_constrain, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 2
  %64 = call i32 @write_indent(i32 %63)
  %65 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %75

66:                                               ; preds = %54
  %67 = load i64, i64* @must_extract, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 2
  %72 = call i32 @write_indent(i32 %71)
  %73 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74, %61
  %76 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %77 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %105

80:                                               ; preds = %75
  %81 = load %struct.attr_desc*, %struct.attr_desc** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 2
  %84 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %85 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %91 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %98 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @write_attr_set(%struct.attr_desc* %81, i32 %83, i32 %86, i8* %87, i8* %88, i32 %89, i32 %96, i32 %103)
  br label %116

105:                                              ; preds = %75
  %106 = load %struct.attr_desc*, %struct.attr_desc** %8, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 2
  %109 = load %struct.attr_value*, %struct.attr_value** %9, align 8
  %110 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @write_attr_set(%struct.attr_desc* %106, i32 %108, i32 %111, i8* %112, i8* %113, i32 %114, i32 -2, i32 0)
  br label %116

116:                                              ; preds = %105, %80
  %117 = load i8*, i8** %11, align 8
  %118 = call i64 @strncmp(i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 2
  %123 = call i32 @write_indent(i32 %122)
  %124 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %116
  %126 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %19
  ret void
}

declare dso_local i32 @write_indent(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @write_insn_cases(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @walk_attr_value(i32) #1

declare dso_local i32 @write_attr_set(%struct.attr_desc*, i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
