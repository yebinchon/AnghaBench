; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_md_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_md_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_ext_operand_value = type { %struct.arc_ext_operand_value*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8*, i8* }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%st(\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"missing ')' in %%-op\00", align 1
@arc_ext_operands = common dso_local global %struct.arc_ext_operand_value* null, align 8
@O_register = common dso_local global i8* null, align 8
@arc_reg_names_count = common dso_local global i32 0, align 4
@arc_reg_names = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_operand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arc_ext_operand_value*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load i8*, i8** @input_line_pointer, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 37
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %132

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i8*, i8** @input_line_pointer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** @input_line_pointer, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i32 @expression(%struct.TYPE_8__* %20)
  %22 = load i8*, i8** @input_line_pointer, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 41
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @as_bad(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %132

28:                                               ; preds = %17
  %29 = load i8*, i8** @input_line_pointer, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** @input_line_pointer, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = call i32 @arc_code_symbol(%struct.TYPE_8__* %31)
  br label %132

33:                                               ; preds = %13
  %34 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** @arc_ext_operands, align 8
  store %struct.arc_ext_operand_value* %34, %struct.arc_ext_operand_value** %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %76, %33
  %38 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %39 = icmp ne %struct.arc_ext_operand_value* %38, null
  br i1 %39, label %40, label %80

40:                                               ; preds = %37
  %41 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %42 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %48 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @strncmp(i8* %46, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %40
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @ISALNUM(i8 signext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i8*, i8** @input_line_pointer, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** @input_line_pointer, align 8
  %68 = load i8*, i8** @O_register, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %72 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %71, i32 0, i32 1
  %73 = bitcast %struct.TYPE_7__* %72 to i8*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %132

76:                                               ; preds = %54, %40
  %77 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %78 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %77, i32 0, i32 0
  %79 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %78, align 8
  store %struct.arc_ext_operand_value* %79, %struct.arc_ext_operand_value** %6, align 8
  br label %37

80:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %128, %80
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @arc_reg_names_count, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arc_reg_names, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i8*, i8** %3, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arc_reg_names, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @strncmp(i8* %93, i8* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %85
  %104 = load i8*, i8** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @ISALNUM(i8 signext %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i8*, i8** @input_line_pointer, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** @input_line_pointer, align 8
  %117 = load i8*, i8** @O_register, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arc_reg_names, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = bitcast %struct.TYPE_9__* %123 to i8*
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %131

127:                                              ; preds = %103, %85
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %81

131:                                              ; preds = %111, %81
  br label %132

132:                                              ; preds = %12, %26, %62, %131, %28
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @expression(%struct.TYPE_8__*) #1

declare dso_local i32 @as_bad(i8*) #1

declare dso_local i32 @arc_code_symbol(%struct.TYPE_8__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
