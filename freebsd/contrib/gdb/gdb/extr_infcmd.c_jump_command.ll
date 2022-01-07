; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_jump_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_jump_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symtab_and_line = type { i64, i64, i32 }
%struct.symbol = type { i32 }

@ERROR_NO_INFERIOR = common dso_local global i32 0, align 4
@event_loop_p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Asynchronous execution not supported on this target.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"starting address\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unreasonable jump request\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No source file has been specified.\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Line %d is not in `%s'.  Jump anyway? \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Not confirmed.\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"WARNING!!!  Destination is in unmapped overlay!  Jump anyway? \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Continuing at \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @jump_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.symtabs_and_lines, align 8
  %7 = alloca %struct.symtab_and_line, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @ERROR_NO_INFERIOR, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @strip_bg_char(i8** %3)
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i64, i64* @event_loop_p, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i64 (...) @target_can_async_p()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23, %20, %17
  %29 = load i64, i64* @event_loop_p, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = call i64 (...) @target_can_async_p()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @async_disable_stdin()
  br label %39

39:                                               ; preds = %37, %34, %31, %28
  %40 = load i8*, i8** %3, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @error_no_arg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** %3, align 8
  %46 = call { i32, %struct.symtab_and_line* } @decode_line_spec_1(i8* %45, i32 1)
  %47 = bitcast %struct.symtabs_and_lines* %11 to { i32, %struct.symtab_and_line* }*
  %48 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %47, i32 0, i32 0
  %49 = extractvalue { i32, %struct.symtab_and_line* } %46, 0
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %47, i32 0, i32 1
  %51 = extractvalue { i32, %struct.symtab_and_line* } %46, 1
  store %struct.symtab_and_line* %51, %struct.symtab_and_line** %50, align 8
  %52 = bitcast %struct.symtabs_and_lines* %6 to i8*
  %53 = bitcast %struct.symtabs_and_lines* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  %54 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %44
  %60 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 1
  %61 = load %struct.symtab_and_line*, %struct.symtab_and_line** %60, align 8
  %62 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %61, i64 0
  %63 = bitcast %struct.symtab_and_line* %7 to i8*
  %64 = bitcast %struct.symtab_and_line* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  %65 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 1
  %66 = load %struct.symtab_and_line*, %struct.symtab_and_line** %65, align 8
  %67 = call i32 @xfree(%struct.symtab_and_line* %66)
  %68 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71, %59
  %78 = call i32 @resolve_sal_pc(%struct.symtab_and_line* %7)
  %79 = call i32 (...) @get_current_frame()
  %80 = call %struct.symbol* @get_frame_function(i32 %79)
  store %struct.symbol* %80, %struct.symbol** %8, align 8
  %81 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.symbol* @find_pc_function(i64 %82)
  store %struct.symbol* %83, %struct.symbol** %9, align 8
  %84 = load %struct.symbol*, %struct.symbol** %8, align 8
  %85 = icmp ne %struct.symbol* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %77
  %87 = load %struct.symbol*, %struct.symbol** %9, align 8
  %88 = load %struct.symbol*, %struct.symbol** %8, align 8
  %89 = icmp ne %struct.symbol* %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.symbol*, %struct.symbol** %8, align 8
  %94 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %93)
  %95 = call i32 (i8*, ...) @query(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  br label %100

100:                                              ; preds = %99, %86, %77
  %101 = load %struct.symbol*, %struct.symbol** %9, align 8
  %102 = icmp ne %struct.symbol* %101, null
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load %struct.symbol*, %struct.symbol** %9, align 8
  %105 = call i32 @fixup_symbol_section(%struct.symbol* %104, i32 0)
  %106 = load %struct.symbol*, %struct.symbol** %9, align 8
  %107 = call i32 @SYMBOL_BFD_SECTION(%struct.symbol* %106)
  %108 = call i64 @section_is_overlay(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load %struct.symbol*, %struct.symbol** %9, align 8
  %112 = call i32 @SYMBOL_BFD_SECTION(%struct.symbol* %111)
  %113 = call i32 @section_is_mapped(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @query(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  br label %121

121:                                              ; preds = %120, %110, %103
  br label %122

122:                                              ; preds = %121, %100
  %123 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %5, align 8
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = call i32 @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i64, i64* %5, align 8
  %130 = load i32, i32* @gdb_stdout, align 4
  %131 = call i32 @print_address_numeric(i64 %129, i32 1, i32 %130)
  %132 = call i32 @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %133

133:                                              ; preds = %127, %122
  %134 = call i32 (...) @clear_proceed_status()
  %135 = load i64, i64* %5, align 8
  %136 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %137 = call i32 @proceed(i64 %135, i32 %136, i32 0)
  ret void
}

declare dso_local i32 @strip_bg_char(i8**) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @async_disable_stdin(...) #1

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_spec_1(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfree(%struct.symtab_and_line*) #1

declare dso_local i32 @resolve_sal_pc(%struct.symtab_and_line*) #1

declare dso_local %struct.symbol* @get_frame_function(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local %struct.symbol* @find_pc_function(i64) #1

declare dso_local i32 @query(i8*, ...) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @fixup_symbol_section(%struct.symbol*, i32) #1

declare dso_local i64 @section_is_overlay(i32) #1

declare dso_local i32 @SYMBOL_BFD_SECTION(%struct.symbol*) #1

declare dso_local i32 @section_is_mapped(i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @print_address_numeric(i64, i32, i32) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @proceed(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
