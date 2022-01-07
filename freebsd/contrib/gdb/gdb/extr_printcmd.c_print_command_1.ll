; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32 }
%struct.cleanup = type { i32 }
%struct.value = type { i32 }
%struct.format_data = type { i8, i32, i64 }
%struct.type = type { i32 }

@inspect_it = common dso_local global i32 0, align 4
@last_format = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"print\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@TYPE_CODE_VOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"\19(gdb-makebuffer \22%s\22  %d '(\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"$%d = \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\22) )\18\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @print_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_command_1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.expression*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.format_data, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.format_data, align 8
  %14 = alloca %struct.type*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.cleanup* null, %struct.cleanup** %8, align 8
  store i8 0, i8* %9, align 1
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* @inspect_it, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* @last_format, align 1
  %28 = call { i64, i64 } @decode_format(i8** %4, i8 signext %27, i32 0)
  %29 = bitcast %struct.format_data* %13 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i64, i64 } %28, 0
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i64, i64 } %28, 1
  store i64 %33, i64* %32, align 8
  %34 = bitcast %struct.format_data* %11 to i8*
  %35 = bitcast %struct.format_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = bitcast %struct.format_data* %11 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @validate_format(i64 %38, i64 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.format_data, %struct.format_data* %11, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  store i8 %43, i8* %9, align 1
  store i8 %43, i8* @last_format, align 1
  br label %48

44:                                               ; preds = %19, %3
  %45 = getelementptr inbounds %struct.format_data, %struct.format_data* %11, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.format_data, %struct.format_data* %11, i32 0, i32 0
  store i8 0, i8* %46, align 8
  %47 = getelementptr inbounds %struct.format_data, %struct.format_data* %11, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %24
  %49 = load i8*, i8** %4, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = call %struct.expression* @parse_expression(i8* %57)
  store %struct.expression* %58, %struct.expression** %7, align 8
  %59 = load i32, i32* @free_current_contents, align 4
  %60 = call %struct.cleanup* @make_cleanup(i32 %59, %struct.expression** %7)
  store %struct.cleanup* %60, %struct.cleanup** %8, align 8
  store i32 1, i32* %12, align 4
  %61 = load %struct.expression*, %struct.expression** %7, align 8
  %62 = call %struct.value* @evaluate_expression(%struct.expression* %61)
  store %struct.value* %62, %struct.value** %10, align 8
  br label %65

63:                                               ; preds = %51, %48
  %64 = call %struct.value* @access_value_history(i32 0)
  store %struct.value* %64, %struct.value** %10, align 8
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load %struct.value*, %struct.value** %10, align 8
  %70 = icmp ne %struct.value* %69, null
  br i1 %70, label %71, label %134

71:                                               ; preds = %68
  %72 = load %struct.value*, %struct.value** %10, align 8
  %73 = call i64 @VALUE_TYPE(%struct.value* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %134

75:                                               ; preds = %71
  %76 = load %struct.value*, %struct.value** %10, align 8
  %77 = call i64 @VALUE_TYPE(%struct.value* %76)
  %78 = call i64 @TYPE_CODE(i64 %77)
  %79 = load i64, i64* @TYPE_CODE_VOID, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %134

81:                                               ; preds = %75, %65
  %82 = load %struct.value*, %struct.value** %10, align 8
  %83 = call i32 @record_latest_value(%struct.value* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.value*, %struct.value** %10, align 8
  %89 = call i64 @VALUE_TYPE(%struct.value* %88)
  %90 = call i32 @annotate_value_history_begin(i32 %87, i64 %89)
  br label %95

91:                                               ; preds = %81
  %92 = load %struct.value*, %struct.value** %10, align 8
  %93 = call i64 @VALUE_TYPE(%struct.value* %92)
  %94 = call i32 @annotate_value_begin(i64 %93)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 %100)
  br label %109

102:                                              ; preds = %95
  %103 = load i32, i32* %15, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %98
  %110 = load i32, i32* %15, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (...) @annotate_value_history_value()
  br label %114

114:                                              ; preds = %112, %109
  %115 = load %struct.value*, %struct.value** %10, align 8
  %116 = load i8, i8* %9, align 1
  %117 = getelementptr inbounds %struct.format_data, %struct.format_data* %11, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @gdb_stdout, align 4
  %120 = call i32 @print_formatted(%struct.value* %115, i8 signext %116, i64 %118, i32 %119)
  %121 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* %15, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = call i32 (...) @annotate_value_history_end()
  br label %128

126:                                              ; preds = %114
  %127 = call i32 (...) @annotate_value_end()
  br label %128

128:                                              ; preds = %126, %124
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  br label %134

134:                                              ; preds = %133, %75, %71, %68
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %139 = call i32 @do_cleanups(%struct.cleanup* %138)
  br label %140

140:                                              ; preds = %137, %134
  store i32 0, i32* @inspect_it, align 4
  ret void
}

declare dso_local { i64, i64 } @decode_format(i8**, i8 signext, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @validate_format(i64, i64, i8*) #1

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local %struct.value* @access_value_history(i32) #1

declare dso_local i64 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(i64) #1

declare dso_local i32 @record_latest_value(%struct.value*) #1

declare dso_local i32 @annotate_value_history_begin(i32, i64) #1

declare dso_local i32 @annotate_value_begin(i64) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @annotate_value_history_value(...) #1

declare dso_local i32 @print_formatted(%struct.value*, i8 signext, i64, i32) #1

declare dso_local i32 @annotate_value_history_end(...) #1

declare dso_local i32 @annotate_value_end(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
