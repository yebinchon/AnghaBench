; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_execute_control_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_execute_control_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i32, i32, %struct.command_line*, %struct.command_line**, i32 }
%struct.expression = type opaque
%struct.cleanup = type { i32 }
%struct.value = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@invalid_control = common dso_local global i32 0, align 4
@free_current_contents = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid control type in command structure.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_control_command(%struct.command_line* %0) #0 {
  %2 = alloca %struct.command_line*, align 8
  %3 = alloca %struct.expression*, align 8
  %4 = alloca %struct.command_line*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.command_line* %0, %struct.command_line** %2, align 8
  %12 = load i32, i32* @null_cleanup, align 4
  %13 = call %struct.cleanup* @make_cleanup(i32 %12, i8** null)
  store %struct.cleanup* %13, %struct.cleanup** %5, align 8
  %14 = load i32, i32* @invalid_control, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.command_line*, %struct.command_line** %2, align 8
  %16 = getelementptr inbounds %struct.command_line, %struct.command_line* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %161 [
    i32 129, label %18
    i32 131, label %34
    i32 132, label %34
    i32 128, label %38
    i32 130, label %103
  ]

18:                                               ; preds = %1
  %19 = load %struct.command_line*, %struct.command_line** %2, align 8
  %20 = getelementptr inbounds %struct.command_line, %struct.command_line* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @insert_args(i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %163

26:                                               ; preds = %18
  %27 = load i32, i32* @free_current_contents, align 4
  %28 = call %struct.cleanup* @make_cleanup(i32 %27, i8** %10)
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @execute_command(i8* %29, i32 0)
  %31 = load %struct.command_line*, %struct.command_line** %2, align 8
  %32 = getelementptr inbounds %struct.command_line, %struct.command_line* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  br label %163

34:                                               ; preds = %1, %1
  %35 = load %struct.command_line*, %struct.command_line** %2, align 8
  %36 = getelementptr inbounds %struct.command_line, %struct.command_line* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  br label %163

38:                                               ; preds = %1
  %39 = load %struct.command_line*, %struct.command_line** %2, align 8
  %40 = getelementptr inbounds %struct.command_line, %struct.command_line* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @insert_args(i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %163

46:                                               ; preds = %38
  %47 = load i32, i32* @free_current_contents, align 4
  %48 = call %struct.cleanup* @make_cleanup(i32 %47, i8** %10)
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @parse_expression(i8* %49)
  %51 = bitcast i8* %50 to %struct.expression*
  store %struct.expression* %51, %struct.expression** %3, align 8
  %52 = load i32, i32* @free_current_contents, align 4
  %53 = bitcast %struct.expression** %3 to i8**
  %54 = call %struct.cleanup* @make_cleanup(i32 %52, i8** %53)
  store i32 129, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %97, %46
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = load i32, i32* @QUIT, align 4
  %60 = call %struct.value* (...) @value_mark()
  store %struct.value* %60, %struct.value** %7, align 8
  %61 = load %struct.expression*, %struct.expression** %3, align 8
  %62 = bitcast %struct.expression* %61 to i8*
  %63 = call %struct.value* @evaluate_expression(i8* %62)
  store %struct.value* %63, %struct.value** %6, align 8
  %64 = load %struct.value*, %struct.value** %6, align 8
  %65 = call i32 @value_true(%struct.value* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.value*, %struct.value** %7, align 8
  %67 = call i32 @value_free_to_mark(%struct.value* %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %98

71:                                               ; preds = %58
  %72 = load %struct.command_line*, %struct.command_line** %2, align 8
  %73 = getelementptr inbounds %struct.command_line, %struct.command_line* %72, i32 0, i32 3
  %74 = load %struct.command_line**, %struct.command_line*** %73, align 8
  %75 = load %struct.command_line*, %struct.command_line** %74, align 8
  store %struct.command_line* %75, %struct.command_line** %4, align 8
  br label %76

76:                                               ; preds = %93, %71
  %77 = load %struct.command_line*, %struct.command_line** %4, align 8
  %78 = icmp ne %struct.command_line* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load %struct.command_line*, %struct.command_line** %4, align 8
  %81 = call i32 @execute_control_command(%struct.command_line* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @invalid_control, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 132
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %79
  store i32 0, i32* %8, align 4
  br label %97

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 131
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %97

93:                                               ; preds = %89
  %94 = load %struct.command_line*, %struct.command_line** %4, align 8
  %95 = getelementptr inbounds %struct.command_line, %struct.command_line* %94, i32 0, i32 2
  %96 = load %struct.command_line*, %struct.command_line** %95, align 8
  store %struct.command_line* %96, %struct.command_line** %4, align 8
  br label %76

97:                                               ; preds = %92, %88, %76
  br label %55

98:                                               ; preds = %70, %55
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 132
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 129, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %98
  br label %163

103:                                              ; preds = %1
  %104 = load %struct.command_line*, %struct.command_line** %2, align 8
  %105 = getelementptr inbounds %struct.command_line, %struct.command_line* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @insert_args(i32 %106)
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %163

111:                                              ; preds = %103
  %112 = load i32, i32* @free_current_contents, align 4
  %113 = call %struct.cleanup* @make_cleanup(i32 %112, i8** %10)
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @parse_expression(i8* %114)
  %116 = bitcast i8* %115 to %struct.expression*
  store %struct.expression* %116, %struct.expression** %3, align 8
  %117 = load i32, i32* @free_current_contents, align 4
  %118 = bitcast %struct.expression** %3 to i8**
  %119 = call %struct.cleanup* @make_cleanup(i32 %117, i8** %118)
  store %struct.command_line* null, %struct.command_line** %4, align 8
  store i32 129, i32* %9, align 4
  %120 = call %struct.value* (...) @value_mark()
  store %struct.value* %120, %struct.value** %7, align 8
  %121 = load %struct.expression*, %struct.expression** %3, align 8
  %122 = bitcast %struct.expression* %121 to i8*
  %123 = call %struct.value* @evaluate_expression(i8* %122)
  store %struct.value* %123, %struct.value** %6, align 8
  %124 = load %struct.value*, %struct.value** %6, align 8
  %125 = call i32 @value_true(%struct.value* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %111
  %128 = load %struct.command_line*, %struct.command_line** %2, align 8
  %129 = getelementptr inbounds %struct.command_line, %struct.command_line* %128, i32 0, i32 3
  %130 = load %struct.command_line**, %struct.command_line*** %129, align 8
  %131 = load %struct.command_line*, %struct.command_line** %130, align 8
  store %struct.command_line* %131, %struct.command_line** %4, align 8
  br label %144

132:                                              ; preds = %111
  %133 = load %struct.command_line*, %struct.command_line** %2, align 8
  %134 = getelementptr inbounds %struct.command_line, %struct.command_line* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.command_line*, %struct.command_line** %2, align 8
  %139 = getelementptr inbounds %struct.command_line, %struct.command_line* %138, i32 0, i32 3
  %140 = load %struct.command_line**, %struct.command_line*** %139, align 8
  %141 = getelementptr inbounds %struct.command_line*, %struct.command_line** %140, i64 1
  %142 = load %struct.command_line*, %struct.command_line** %141, align 8
  store %struct.command_line* %142, %struct.command_line** %4, align 8
  br label %143

143:                                              ; preds = %137, %132
  br label %144

144:                                              ; preds = %143, %127
  %145 = load %struct.value*, %struct.value** %7, align 8
  %146 = call i32 @value_free_to_mark(%struct.value* %145)
  br label %147

147:                                              ; preds = %156, %144
  %148 = load %struct.command_line*, %struct.command_line** %4, align 8
  %149 = icmp ne %struct.command_line* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.command_line*, %struct.command_line** %4, align 8
  %152 = call i32 @execute_control_command(%struct.command_line* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 129
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %160

156:                                              ; preds = %150
  %157 = load %struct.command_line*, %struct.command_line** %4, align 8
  %158 = getelementptr inbounds %struct.command_line, %struct.command_line* %157, i32 0, i32 2
  %159 = load %struct.command_line*, %struct.command_line** %158, align 8
  store %struct.command_line* %159, %struct.command_line** %4, align 8
  br label %147

160:                                              ; preds = %155, %147
  br label %163

161:                                              ; preds = %1
  %162 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %160, %110, %102, %45, %34, %26, %25
  %164 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %165 = call i32 @do_cleanups(%struct.cleanup* %164)
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i8**) #1

declare dso_local i8* @insert_args(i32) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i8* @parse_expression(i8*) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local %struct.value* @evaluate_expression(i8*) #1

declare dso_local i32 @value_true(%struct.value*) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
