; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_get_cpu_unit_code_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_get_cpu_unit_code_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"int\0A%s (const char *%s)\0A\00", align 1
@GET_CPU_UNIT_CODE_FUNC_NAME = common dso_local global i8* null, align 8
@CPU_UNIT_NAME_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"{\0A  struct %s {const char *%s; int %s;};\0A\00", align 1
@NAME_CODE_STRUCT_NAME = common dso_local global i8* null, align 8
@NAME_MEMBER_NAME = common dso_local global i8* null, align 8
@CODE_MEMBER_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"  int %s, %s, %s, %s;\0A\00", align 1
@CMP_VARIABLE_NAME = common dso_local global i8* null, align 8
@LOW_VARIABLE_NAME = common dso_local global i8* null, align 8
@MIDDLE_VARIABLE_NAME = common dso_local global i8* null, align 8
@HIGH_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"  static struct %s %s [] =\0A    {\0A\00", align 1
@NAME_CODE_TABLE_NAME = common dso_local global i8* null, align 8
@description = common dso_local global %struct.TYPE_8__* null, align 8
@units_array = common dso_local global i32 0, align 4
@units_cmp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"      {\22%s\22, %d},\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"    };\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"  /* The following is binary search: */\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"  %s = 0;\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"  %s = sizeof (%s) / sizeof (struct %s) - 1;\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"  while (%s <= %s)\0A    {\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"      %s = (%s + %s) / 2;\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"      %s = strcmp (%s, %s [%s].%s);\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"      if (%s < 0)\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"        %s = %s - 1;\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"      else if (%s > 0)\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"        %s = %s + 1;\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"      else\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"        return %s [%s].%s;\0A    }\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"  return -1;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_get_cpu_unit_code_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_get_cpu_unit_code_func() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__**, align 8
  %3 = load i32, i32* @output_file, align 4
  %4 = load i8*, i8** @GET_CPU_UNIT_CODE_FUNC_NAME, align 8
  %5 = load i8*, i8** @CPU_UNIT_NAME_PARAMETER_NAME, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %4, i8* %5)
  %7 = load i32, i32* @output_file, align 4
  %8 = load i8*, i8** @NAME_CODE_STRUCT_NAME, align 8
  %9 = load i8*, i8** @NAME_MEMBER_NAME, align 8
  %10 = load i8*, i8** @CODE_MEMBER_NAME, align 8
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %8, i8* %9, i8* %10)
  %12 = load i32, i32* @output_file, align 4
  %13 = load i8*, i8** @CMP_VARIABLE_NAME, align 8
  %14 = load i8*, i8** @LOW_VARIABLE_NAME, align 8
  %15 = load i8*, i8** @MIDDLE_VARIABLE_NAME, align 8
  %16 = load i8*, i8** @HIGH_VARIABLE_NAME, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %13, i8* %14, i8* %15, i8* %16)
  %18 = load i32, i32* @output_file, align 4
  %19 = load i8*, i8** @NAME_CODE_STRUCT_NAME, align 8
  %20 = load i8*, i8** @NAME_CODE_TABLE_NAME, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @description, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_7__** @xmalloc(i32 %27)
  store %struct.TYPE_7__** %28, %struct.TYPE_7__*** %2, align 8
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %30 = load i32, i32* @units_array, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @description, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(%struct.TYPE_7__** %29, i32 %30, i32 %36)
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @description, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @units_cmp, align 4
  %43 = call i32 @qsort(%struct.TYPE_7__** %38, i32 %41, i32 8, i32 %42)
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %77, %0
  %45 = load i32, i32* %1, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @description, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 %53
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load i32, i32* @output_file, align 4
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 %74)
  br label %76

76:                                               ; preds = %59, %50
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %44

80:                                               ; preds = %44
  %81 = load i32, i32* @output_file, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @output_file, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* @output_file, align 4
  %86 = load i8*, i8** @LOW_VARIABLE_NAME, align 8
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* @output_file, align 4
  %89 = load i8*, i8** @HIGH_VARIABLE_NAME, align 8
  %90 = load i8*, i8** @NAME_CODE_TABLE_NAME, align 8
  %91 = load i8*, i8** @NAME_CODE_STRUCT_NAME, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %89, i8* %90, i8* %91)
  %93 = load i32, i32* @output_file, align 4
  %94 = load i8*, i8** @LOW_VARIABLE_NAME, align 8
  %95 = load i8*, i8** @HIGH_VARIABLE_NAME, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i32, i32* @output_file, align 4
  %98 = load i8*, i8** @MIDDLE_VARIABLE_NAME, align 8
  %99 = load i8*, i8** @LOW_VARIABLE_NAME, align 8
  %100 = load i8*, i8** @HIGH_VARIABLE_NAME, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %98, i8* %99, i8* %100)
  %102 = load i32, i32* @output_file, align 4
  %103 = load i8*, i8** @CMP_VARIABLE_NAME, align 8
  %104 = load i8*, i8** @CPU_UNIT_NAME_PARAMETER_NAME, align 8
  %105 = load i8*, i8** @NAME_CODE_TABLE_NAME, align 8
  %106 = load i8*, i8** @MIDDLE_VARIABLE_NAME, align 8
  %107 = load i8*, i8** @NAME_MEMBER_NAME, align 8
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %103, i8* %104, i8* %105, i8* %106, i8* %107)
  %109 = load i32, i32* @output_file, align 4
  %110 = load i8*, i8** @CMP_VARIABLE_NAME, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @output_file, align 4
  %113 = load i8*, i8** @HIGH_VARIABLE_NAME, align 8
  %114 = load i8*, i8** @MIDDLE_VARIABLE_NAME, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %113, i8* %114)
  %116 = load i32, i32* @output_file, align 4
  %117 = load i8*, i8** @CMP_VARIABLE_NAME, align 8
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @output_file, align 4
  %120 = load i8*, i8** @LOW_VARIABLE_NAME, align 8
  %121 = load i8*, i8** @MIDDLE_VARIABLE_NAME, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %120, i8* %121)
  %123 = load i32, i32* @output_file, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %125 = load i32, i32* @output_file, align 4
  %126 = load i8*, i8** @NAME_CODE_TABLE_NAME, align 8
  %127 = load i8*, i8** @MIDDLE_VARIABLE_NAME, align 8
  %128 = load i8*, i8** @CODE_MEMBER_NAME, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* %126, i8* %127, i8* %128)
  %130 = load i32, i32* @output_file, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %132 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %133 = call i32 @free(%struct.TYPE_7__** %132)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__** @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_7__**, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
