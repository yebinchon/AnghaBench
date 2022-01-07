; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_print_command_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_print_command_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.command_line = type { i64, i8*, i32, %struct.command_line*, %struct.command_line** }

@simple_control = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@continue_control = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"loop_continue\00", align 1
@break_control = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"loop_break\00", align 1
@while_control = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"while %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@if_control = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"if %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"else\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_command_lines(%struct.ui_out* %0, %struct.command_line* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca %struct.command_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.command_line*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store %struct.command_line* %1, %struct.command_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.command_line*, %struct.command_line** %5, align 8
  store %struct.command_line* %8, %struct.command_line** %7, align 8
  br label %9

9:                                                ; preds = %164, %156, %93, %57, %43, %26, %3
  %10 = load %struct.command_line*, %struct.command_line** %7, align 8
  %11 = icmp ne %struct.command_line* %10, null
  br i1 %11, label %12, label %168

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 2, %17
  %19 = call i32 @ui_out_spaces(%struct.ui_out* %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.command_line*, %struct.command_line** %7, align 8
  %22 = getelementptr inbounds %struct.command_line, %struct.command_line* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @simple_control, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %28 = load %struct.command_line*, %struct.command_line** %7, align 8
  %29 = getelementptr inbounds %struct.command_line, %struct.command_line* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @ui_out_field_string(%struct.ui_out* %27, i32* null, i8* %30)
  %32 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %33 = call i32 @ui_out_text(%struct.ui_out* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.command_line*, %struct.command_line** %7, align 8
  %35 = getelementptr inbounds %struct.command_line, %struct.command_line* %34, i32 0, i32 3
  %36 = load %struct.command_line*, %struct.command_line** %35, align 8
  store %struct.command_line* %36, %struct.command_line** %7, align 8
  br label %9

37:                                               ; preds = %20
  %38 = load %struct.command_line*, %struct.command_line** %7, align 8
  %39 = getelementptr inbounds %struct.command_line, %struct.command_line* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @continue_control, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %45 = call i32 @ui_out_field_string(%struct.ui_out* %44, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %47 = call i32 @ui_out_text(%struct.ui_out* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.command_line*, %struct.command_line** %7, align 8
  %49 = getelementptr inbounds %struct.command_line, %struct.command_line* %48, i32 0, i32 3
  %50 = load %struct.command_line*, %struct.command_line** %49, align 8
  store %struct.command_line* %50, %struct.command_line** %7, align 8
  br label %9

51:                                               ; preds = %37
  %52 = load %struct.command_line*, %struct.command_line** %7, align 8
  %53 = getelementptr inbounds %struct.command_line, %struct.command_line* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @break_control, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %59 = call i32 @ui_out_field_string(%struct.ui_out* %58, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %61 = call i32 @ui_out_text(%struct.ui_out* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.command_line*, %struct.command_line** %7, align 8
  %63 = getelementptr inbounds %struct.command_line, %struct.command_line* %62, i32 0, i32 3
  %64 = load %struct.command_line*, %struct.command_line** %63, align 8
  store %struct.command_line* %64, %struct.command_line** %7, align 8
  br label %9

65:                                               ; preds = %51
  %66 = load %struct.command_line*, %struct.command_line** %7, align 8
  %67 = getelementptr inbounds %struct.command_line, %struct.command_line* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @while_control, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %65
  %72 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %73 = load %struct.command_line*, %struct.command_line** %7, align 8
  %74 = getelementptr inbounds %struct.command_line, %struct.command_line* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @ui_out_field_fmt(%struct.ui_out* %72, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %78 = call i32 @ui_out_text(%struct.ui_out* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %80 = load %struct.command_line*, %struct.command_line** %7, align 8
  %81 = getelementptr inbounds %struct.command_line, %struct.command_line* %80, i32 0, i32 4
  %82 = load %struct.command_line**, %struct.command_line*** %81, align 8
  %83 = load %struct.command_line*, %struct.command_line** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  call void @print_command_lines(%struct.ui_out* %79, %struct.command_line* %83, i32 %85)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %71
  %89 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = mul i32 2, %90
  %92 = call i32 @ui_out_spaces(%struct.ui_out* %89, i32 %91)
  br label %93

93:                                               ; preds = %88, %71
  %94 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %95 = call i32 @ui_out_field_string(%struct.ui_out* %94, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %97 = call i32 @ui_out_text(%struct.ui_out* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.command_line*, %struct.command_line** %7, align 8
  %99 = getelementptr inbounds %struct.command_line, %struct.command_line* %98, i32 0, i32 3
  %100 = load %struct.command_line*, %struct.command_line** %99, align 8
  store %struct.command_line* %100, %struct.command_line** %7, align 8
  br label %9

101:                                              ; preds = %65
  %102 = load %struct.command_line*, %struct.command_line** %7, align 8
  %103 = getelementptr inbounds %struct.command_line, %struct.command_line* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @if_control, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %164

107:                                              ; preds = %101
  %108 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %109 = load %struct.command_line*, %struct.command_line** %7, align 8
  %110 = getelementptr inbounds %struct.command_line, %struct.command_line* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @ui_out_field_fmt(%struct.ui_out* %108, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  %113 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %114 = call i32 @ui_out_text(%struct.ui_out* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %116 = load %struct.command_line*, %struct.command_line** %7, align 8
  %117 = getelementptr inbounds %struct.command_line, %struct.command_line* %116, i32 0, i32 4
  %118 = load %struct.command_line**, %struct.command_line*** %117, align 8
  %119 = getelementptr inbounds %struct.command_line*, %struct.command_line** %118, i64 0
  %120 = load %struct.command_line*, %struct.command_line** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = add i32 %121, 1
  call void @print_command_lines(%struct.ui_out* %115, %struct.command_line* %120, i32 %122)
  %123 = load %struct.command_line*, %struct.command_line** %7, align 8
  %124 = getelementptr inbounds %struct.command_line, %struct.command_line* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %148

127:                                              ; preds = %107
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = mul i32 2, %132
  %134 = call i32 @ui_out_spaces(%struct.ui_out* %131, i32 %133)
  br label %135

135:                                              ; preds = %130, %127
  %136 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %137 = call i32 @ui_out_field_string(%struct.ui_out* %136, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %138 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %139 = call i32 @ui_out_text(%struct.ui_out* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %140 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %141 = load %struct.command_line*, %struct.command_line** %7, align 8
  %142 = getelementptr inbounds %struct.command_line, %struct.command_line* %141, i32 0, i32 4
  %143 = load %struct.command_line**, %struct.command_line*** %142, align 8
  %144 = getelementptr inbounds %struct.command_line*, %struct.command_line** %143, i64 1
  %145 = load %struct.command_line*, %struct.command_line** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  call void @print_command_lines(%struct.ui_out* %140, %struct.command_line* %145, i32 %147)
  br label %148

148:                                              ; preds = %135, %107
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = mul i32 2, %153
  %155 = call i32 @ui_out_spaces(%struct.ui_out* %152, i32 %154)
  br label %156

156:                                              ; preds = %151, %148
  %157 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %158 = call i32 @ui_out_field_string(%struct.ui_out* %157, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %159 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %160 = call i32 @ui_out_text(%struct.ui_out* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %161 = load %struct.command_line*, %struct.command_line** %7, align 8
  %162 = getelementptr inbounds %struct.command_line, %struct.command_line* %161, i32 0, i32 3
  %163 = load %struct.command_line*, %struct.command_line** %162, align 8
  store %struct.command_line* %163, %struct.command_line** %7, align 8
  br label %9

164:                                              ; preds = %101
  %165 = load %struct.command_line*, %struct.command_line** %7, align 8
  %166 = getelementptr inbounds %struct.command_line, %struct.command_line* %165, i32 0, i32 3
  %167 = load %struct.command_line*, %struct.command_line** %166, align 8
  store %struct.command_line* %167, %struct.command_line** %7, align 8
  br label %9

168:                                              ; preds = %9
  ret void
}

declare dso_local i32 @ui_out_spaces(%struct.ui_out*, i32) #1

declare dso_local i32 @ui_out_field_string(%struct.ui_out*, i32*, i8*) #1

declare dso_local i32 @ui_out_text(%struct.ui_out*, i8*) #1

declare dso_local i32 @ui_out_field_fmt(%struct.ui_out*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
