; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_deprecated_cmd_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_deprecated_cmd_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, i64, i32, i32 }

@DEPRECATED_WARN_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Warning:\00", align 1
@CMD_DEPRECATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c" '%s', an alias for the\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" command '\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"' (%s) is deprecated.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"' is deprecated.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Use '%s'.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"No alternative known.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deprecated_cmd_warning(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.cmd_list_element*, align 8
  %4 = alloca %struct.cmd_list_element*, align 8
  %5 = alloca %struct.cmd_list_element*, align 8
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %3, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %4, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %5, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @lookup_cmd_composition(i8* %9, %struct.cmd_list_element** %3, %struct.cmd_list_element** %4, %struct.cmd_list_element** %5)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %131

13:                                               ; preds = %1
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %15 = icmp ne %struct.cmd_list_element* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %18 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %24

23:                                               ; preds = %13
  br i1 false, label %32, label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %26 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %131

32:                                               ; preds = %24, %23, %16
  %33 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %35 = icmp ne %struct.cmd_list_element* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %38 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CMD_DEPRECATED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %45 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %36, %32
  %49 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %51 = icmp ne %struct.cmd_list_element* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %54 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %59 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %63 = icmp ne %struct.cmd_list_element* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %66 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CMD_DEPRECATED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %73 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %78

76:                                               ; preds = %64, %57
  %77 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %80 = icmp ne %struct.cmd_list_element* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %83 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CMD_DEPRECATED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %81
  %89 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %90 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %95 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %96)
  br label %100

98:                                               ; preds = %88
  %99 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  br label %114

101:                                              ; preds = %81, %78
  %102 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %103 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %108 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  br label %113

111:                                              ; preds = %101
  %112 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %106
  br label %114

114:                                              ; preds = %113, %100
  %115 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %116 = icmp ne %struct.cmd_list_element* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %121 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %114
  %125 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %128 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %124, %31, %12
  ret void
}

declare dso_local i32 @lookup_cmd_composition(i8*, %struct.cmd_list_element**, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
