; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_pascal_create_fundamental_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_pascal_create_fundamental_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TARGET_INT_BIT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<?type?>\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"internal error: no Pascal fundamental type %d\00", align 1
@TYPE_CODE_VOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@TYPE_CODE_CHAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"shortint\00", align 1
@TYPE_FLAG_UNSIGNED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@TARGET_SHORT_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"longint\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cardinal\00", align 1
@TARGET_LONG_BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@TARGET_LONG_LONG_BIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"signed long long\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TARGET_FLOAT_BIT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@TARGET_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@TARGET_LONG_DOUBLE_BIT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"extended\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @pascal_create_fundamental_type(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.type* null, %struct.type** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %7 [
    i32 128, label %16
    i32 146, label %23
    i32 138, label %30
    i32 133, label %37
    i32 139, label %45
    i32 134, label %52
    i32 129, label %59
    i32 142, label %67
    i32 137, label %74
    i32 132, label %81
    i32 141, label %89
    i32 136, label %96
    i32 131, label %103
    i32 140, label %111
    i32 135, label %118
    i32 130, label %125
    i32 143, label %133
    i32 145, label %140
    i32 144, label %147
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @TYPE_CODE_INT, align 4
  %9 = load i32, i32* @TARGET_INT_BIT, align 4
  %10 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %11 = sdiv i32 %9, %10
  %12 = load %struct.objfile*, %struct.objfile** %3, align 8
  %13 = call %struct.type* @init_type(i32 %8, i32 %11, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.objfile* %12)
  store %struct.type* %13, %struct.type** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %154

16:                                               ; preds = %2
  %17 = load i32, i32* @TYPE_CODE_VOID, align 4
  %18 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %19 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %20 = sdiv i32 %18, %19
  %21 = load %struct.objfile*, %struct.objfile** %3, align 8
  %22 = call %struct.type* @init_type(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.objfile* %21)
  store %struct.type* %22, %struct.type** %5, align 8
  br label %154

23:                                               ; preds = %2
  %24 = load i32, i32* @TYPE_CODE_CHAR, align 4
  %25 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %26 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %27 = sdiv i32 %25, %26
  %28 = load %struct.objfile*, %struct.objfile** %3, align 8
  %29 = call %struct.type* @init_type(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.objfile* %28)
  store %struct.type* %29, %struct.type** %5, align 8
  br label %154

30:                                               ; preds = %2
  %31 = load i32, i32* @TYPE_CODE_INT, align 4
  %32 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %33 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %34 = sdiv i32 %32, %33
  %35 = load %struct.objfile*, %struct.objfile** %3, align 8
  %36 = call %struct.type* @init_type(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.objfile* %35)
  store %struct.type* %36, %struct.type** %5, align 8
  br label %154

37:                                               ; preds = %2
  %38 = load i32, i32* @TYPE_CODE_INT, align 4
  %39 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %40 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %41 = sdiv i32 %39, %40
  %42 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %43 = load %struct.objfile*, %struct.objfile** %3, align 8
  %44 = call %struct.type* @init_type(i32 %38, i32 %41, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.objfile* %43)
  store %struct.type* %44, %struct.type** %5, align 8
  br label %154

45:                                               ; preds = %2
  %46 = load i32, i32* @TYPE_CODE_INT, align 4
  %47 = load i32, i32* @TARGET_SHORT_BIT, align 4
  %48 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %49 = sdiv i32 %47, %48
  %50 = load %struct.objfile*, %struct.objfile** %3, align 8
  %51 = call %struct.type* @init_type(i32 %46, i32 %49, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.objfile* %50)
  store %struct.type* %51, %struct.type** %5, align 8
  br label %154

52:                                               ; preds = %2
  %53 = load i32, i32* @TYPE_CODE_INT, align 4
  %54 = load i32, i32* @TARGET_SHORT_BIT, align 4
  %55 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %56 = sdiv i32 %54, %55
  %57 = load %struct.objfile*, %struct.objfile** %3, align 8
  %58 = call %struct.type* @init_type(i32 %53, i32 %56, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.objfile* %57)
  store %struct.type* %58, %struct.type** %5, align 8
  br label %154

59:                                               ; preds = %2
  %60 = load i32, i32* @TYPE_CODE_INT, align 4
  %61 = load i32, i32* @TARGET_SHORT_BIT, align 4
  %62 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %65 = load %struct.objfile*, %struct.objfile** %3, align 8
  %66 = call %struct.type* @init_type(i32 %60, i32 %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.objfile* %65)
  store %struct.type* %66, %struct.type** %5, align 8
  br label %154

67:                                               ; preds = %2
  %68 = load i32, i32* @TYPE_CODE_INT, align 4
  %69 = load i32, i32* @TARGET_INT_BIT, align 4
  %70 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %71 = sdiv i32 %69, %70
  %72 = load %struct.objfile*, %struct.objfile** %3, align 8
  %73 = call %struct.type* @init_type(i32 %68, i32 %71, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.objfile* %72)
  store %struct.type* %73, %struct.type** %5, align 8
  br label %154

74:                                               ; preds = %2
  %75 = load i32, i32* @TYPE_CODE_INT, align 4
  %76 = load i32, i32* @TARGET_INT_BIT, align 4
  %77 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %78 = sdiv i32 %76, %77
  %79 = load %struct.objfile*, %struct.objfile** %3, align 8
  %80 = call %struct.type* @init_type(i32 %75, i32 %78, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.objfile* %79)
  store %struct.type* %80, %struct.type** %5, align 8
  br label %154

81:                                               ; preds = %2
  %82 = load i32, i32* @TYPE_CODE_INT, align 4
  %83 = load i32, i32* @TARGET_INT_BIT, align 4
  %84 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %85 = sdiv i32 %83, %84
  %86 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %87 = load %struct.objfile*, %struct.objfile** %3, align 8
  %88 = call %struct.type* @init_type(i32 %82, i32 %85, i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.objfile* %87)
  store %struct.type* %88, %struct.type** %5, align 8
  br label %154

89:                                               ; preds = %2
  %90 = load i32, i32* @TYPE_CODE_INT, align 4
  %91 = load i32, i32* @TARGET_LONG_BIT, align 4
  %92 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %93 = sdiv i32 %91, %92
  %94 = load %struct.objfile*, %struct.objfile** %3, align 8
  %95 = call %struct.type* @init_type(i32 %90, i32 %93, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.objfile* %94)
  store %struct.type* %95, %struct.type** %5, align 8
  br label %154

96:                                               ; preds = %2
  %97 = load i32, i32* @TYPE_CODE_INT, align 4
  %98 = load i32, i32* @TARGET_LONG_BIT, align 4
  %99 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %100 = sdiv i32 %98, %99
  %101 = load %struct.objfile*, %struct.objfile** %3, align 8
  %102 = call %struct.type* @init_type(i32 %97, i32 %100, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.objfile* %101)
  store %struct.type* %102, %struct.type** %5, align 8
  br label %154

103:                                              ; preds = %2
  %104 = load i32, i32* @TYPE_CODE_INT, align 4
  %105 = load i32, i32* @TARGET_LONG_BIT, align 4
  %106 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %107 = sdiv i32 %105, %106
  %108 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %109 = load %struct.objfile*, %struct.objfile** %3, align 8
  %110 = call %struct.type* @init_type(i32 %104, i32 %107, i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %struct.objfile* %109)
  store %struct.type* %110, %struct.type** %5, align 8
  br label %154

111:                                              ; preds = %2
  %112 = load i32, i32* @TYPE_CODE_INT, align 4
  %113 = load i32, i32* @TARGET_LONG_LONG_BIT, align 4
  %114 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %115 = sdiv i32 %113, %114
  %116 = load %struct.objfile*, %struct.objfile** %3, align 8
  %117 = call %struct.type* @init_type(i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.objfile* %116)
  store %struct.type* %117, %struct.type** %5, align 8
  br label %154

118:                                              ; preds = %2
  %119 = load i32, i32* @TYPE_CODE_INT, align 4
  %120 = load i32, i32* @TARGET_LONG_LONG_BIT, align 4
  %121 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %122 = sdiv i32 %120, %121
  %123 = load %struct.objfile*, %struct.objfile** %3, align 8
  %124 = call %struct.type* @init_type(i32 %119, i32 %122, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), %struct.objfile* %123)
  store %struct.type* %124, %struct.type** %5, align 8
  br label %154

125:                                              ; preds = %2
  %126 = load i32, i32* @TYPE_CODE_INT, align 4
  %127 = load i32, i32* @TARGET_LONG_LONG_BIT, align 4
  %128 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %129 = sdiv i32 %127, %128
  %130 = load i32, i32* @TYPE_FLAG_UNSIGNED, align 4
  %131 = load %struct.objfile*, %struct.objfile** %3, align 8
  %132 = call %struct.type* @init_type(i32 %126, i32 %129, i32 %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), %struct.objfile* %131)
  store %struct.type* %132, %struct.type** %5, align 8
  br label %154

133:                                              ; preds = %2
  %134 = load i32, i32* @TYPE_CODE_FLT, align 4
  %135 = load i32, i32* @TARGET_FLOAT_BIT, align 4
  %136 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %137 = sdiv i32 %135, %136
  %138 = load %struct.objfile*, %struct.objfile** %3, align 8
  %139 = call %struct.type* @init_type(i32 %134, i32 %137, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), %struct.objfile* %138)
  store %struct.type* %139, %struct.type** %5, align 8
  br label %154

140:                                              ; preds = %2
  %141 = load i32, i32* @TYPE_CODE_FLT, align 4
  %142 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %143 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %144 = sdiv i32 %142, %143
  %145 = load %struct.objfile*, %struct.objfile** %3, align 8
  %146 = call %struct.type* @init_type(i32 %141, i32 %144, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %struct.objfile* %145)
  store %struct.type* %146, %struct.type** %5, align 8
  br label %154

147:                                              ; preds = %2
  %148 = load i32, i32* @TYPE_CODE_FLT, align 4
  %149 = load i32, i32* @TARGET_LONG_DOUBLE_BIT, align 4
  %150 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %151 = sdiv i32 %149, %150
  %152 = load %struct.objfile*, %struct.objfile** %3, align 8
  %153 = call %struct.type* @init_type(i32 %148, i32 %151, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct.objfile* %152)
  store %struct.type* %153, %struct.type** %5, align 8
  br label %154

154:                                              ; preds = %147, %140, %133, %125, %118, %111, %103, %96, %89, %81, %74, %67, %59, %52, %45, %37, %30, %23, %16, %7
  %155 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %155
}

declare dso_local %struct.type* @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

declare dso_local i32 @warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
