; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c__initialize_cli_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c__initialize_cli_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@class_vars = common dso_local global i32 0, align 4
@dump_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Dump target code/data to a local file.\00", align 1
@dump_cmdlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dump \00", align 1
@cmdlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@append_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Append target code/data to a local file.\00", align 1
@append_cmdlist = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"append \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@dump_memory_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [192 x i8] c"Write contents of memory to a raw binary file.\0AArguments are FILE START STOP.  Writes the contents of memory within the\0Arange [START .. STOP) to the specifed FILE in raw target ordered bytes.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@dump_value_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [169 x i8] c"Write the value of an expression to a raw binary file.\0AArguments are FILE EXPRESSION.  Writes the value of EXPRESSION to\0Athe specified FILE in raw target ordered bytes.\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"srec\00", align 1
@all_commands = common dso_local global i32 0, align 4
@srec_dump_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Write target code/data to an srec file.\00", align 1
@srec_cmdlist = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"dump srec \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ihex\00", align 1
@ihex_dump_command = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"Write target code/data to an intel hex file.\00", align 1
@ihex_cmdlist = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"dump ihex \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"tekhex\00", align 1
@tekhex_dump_command = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"Write target code/data to a tekhex file.\00", align 1
@tekhex_cmdlist = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"dump tekhex \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@binary_dump_command = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [45 x i8] c"Write target code/data to a raw binary file.\00", align 1
@binary_dump_cmdlist = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"dump binary \00", align 1
@binary_append_command = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [46 x i8] c"Append target code/data to a raw binary file.\00", align 1
@binary_append_cmdlist = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"append binary \00", align 1
@dump_srec_memory = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [174 x i8] c"Write contents of memory to an srec file.\0AArguments are FILE START STOP.  Writes the contents of memory\0Awithin the range [START .. STOP) to the specifed FILE in srec format.\00", align 1
@dump_srec_value = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [151 x i8] c"Write the value of an expression to an srec file.\0AArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\0Ato the specified FILE in srec format.\00", align 1
@dump_ihex_memory = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [179 x i8] c"Write contents of memory to an ihex file.\0AArguments are FILE START STOP.  Writes the contents of memory within\0Athe range [START .. STOP) to the specifed FILE in intel hex format.\00", align 1
@dump_ihex_value = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [156 x i8] c"Write the value of an expression to an ihex file.\0AArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\0Ato the specified FILE in intel hex format.\00", align 1
@dump_tekhex_memory = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [177 x i8] c"Write contents of memory to a tekhex file.\0AArguments are FILE START STOP.  Writes the contents of memory\0Awithin the range [START .. STOP) to the specifed FILE in tekhex format.\00", align 1
@dump_tekhex_value = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [154 x i8] c"Write the value of an expression to a tekhex file.\0AArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\0Ato the specified FILE in tekhex format.\00", align 1
@dump_binary_memory = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [181 x i8] c"Write contents of memory to a raw binary file.\0AArguments are FILE START STOP.  Writes the contents of memory\0Awithin the range [START .. STOP) to the specifed FILE in binary format.\00", align 1
@dump_binary_value = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [169 x i8] c"Write the value of an expression to a raw binary file.\0AArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\0Ato the specified FILE in raw target ordered bytes.\00", align 1
@append_binary_memory = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [193 x i8] c"Append contents of memory to a raw binary file.\0AArguments are FILE START STOP.  Writes the contents of memory within the\0Arange [START .. STOP) to the specifed FILE in raw target ordered bytes.\00", align 1
@append_binary_value = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [170 x i8] c"Append the value of an expression to a raw binary file.\0AArguments are FILE EXPRESSION.  Writes the value of EXPRESSION\0Ato the specified FILE in raw target ordered bytes.\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@restore_command = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [308 x i8] c"Restore the contents of FILE to target memory.\0AArguments are FILE OFFSET START END where all except FILE are optional.\0AOFFSET will be added to the base address of the file (default zero).\0AIf START and END are given, only the file contents within that range\0A(file relative) will be restored to target memory.\00", align 1
@filename_completer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_cli_dump() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_vars, align 4
  %3 = load i32, i32* @dump_command, align 4
  %4 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* @dump_cmdlist, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @cmdlist)
  %5 = load i32, i32* @class_vars, align 4
  %6 = load i32, i32* @append_command, align 4
  %7 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32* @append_cmdlist, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* @cmdlist)
  %8 = load i32, i32* @dump_memory_command, align 4
  %9 = call i32 @add_dump_command(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.7, i64 0, i64 0))
  %10 = load i32, i32* @dump_value_command, align 4
  %11 = call i32 @add_dump_command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %10, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.9, i64 0, i64 0))
  %12 = load i32, i32* @all_commands, align 4
  %13 = load i32, i32* @srec_dump_command, align 4
  %14 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %12, i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32* @srec_cmdlist, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 0, i32* @dump_cmdlist)
  %15 = load i32, i32* @all_commands, align 4
  %16 = load i32, i32* @ihex_dump_command, align 4
  %17 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32* @ihex_cmdlist, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 0, i32* @dump_cmdlist)
  %18 = load i32, i32* @all_commands, align 4
  %19 = load i32, i32* @tekhex_dump_command, align 4
  %20 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32* @tekhex_cmdlist, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 0, i32* @dump_cmdlist)
  %21 = load i32, i32* @all_commands, align 4
  %22 = load i32, i32* @binary_dump_command, align 4
  %23 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32* @binary_dump_cmdlist, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 0, i32* @dump_cmdlist)
  %24 = load i32, i32* @all_commands, align 4
  %25 = load i32, i32* @binary_append_command, align 4
  %26 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i32* @binary_append_cmdlist, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 0, i32* @append_cmdlist)
  %27 = load i32, i32* @all_commands, align 4
  %28 = load i32, i32* @dump_srec_memory, align 4
  %29 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %27, i32 %28, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.24, i64 0, i64 0), i32* @srec_cmdlist)
  %30 = load i32, i32* @all_commands, align 4
  %31 = load i32, i32* @dump_srec_value, align 4
  %32 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %30, i32 %31, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.25, i64 0, i64 0), i32* @srec_cmdlist)
  %33 = load i32, i32* @all_commands, align 4
  %34 = load i32, i32* @dump_ihex_memory, align 4
  %35 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %33, i32 %34, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.26, i64 0, i64 0), i32* @ihex_cmdlist)
  %36 = load i32, i32* @all_commands, align 4
  %37 = load i32, i32* @dump_ihex_value, align 4
  %38 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %36, i32 %37, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.27, i64 0, i64 0), i32* @ihex_cmdlist)
  %39 = load i32, i32* @all_commands, align 4
  %40 = load i32, i32* @dump_tekhex_memory, align 4
  %41 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %39, i32 %40, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.28, i64 0, i64 0), i32* @tekhex_cmdlist)
  %42 = load i32, i32* @all_commands, align 4
  %43 = load i32, i32* @dump_tekhex_value, align 4
  %44 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %42, i32 %43, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.29, i64 0, i64 0), i32* @tekhex_cmdlist)
  %45 = load i32, i32* @all_commands, align 4
  %46 = load i32, i32* @dump_binary_memory, align 4
  %47 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32 %46, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.30, i64 0, i64 0), i32* @binary_dump_cmdlist)
  %48 = load i32, i32* @all_commands, align 4
  %49 = load i32, i32* @dump_binary_value, align 4
  %50 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %48, i32 %49, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.31, i64 0, i64 0), i32* @binary_dump_cmdlist)
  %51 = load i32, i32* @all_commands, align 4
  %52 = load i32, i32* @append_binary_memory, align 4
  %53 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %51, i32 %52, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.32, i64 0, i64 0), i32* @binary_append_cmdlist)
  %54 = load i32, i32* @all_commands, align 4
  %55 = load i32, i32* @append_binary_value, align 4
  %56 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %54, i32 %55, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.33, i64 0, i64 0), i32* @binary_append_cmdlist)
  %57 = load i32, i32* @class_vars, align 4
  %58 = load i32, i32* @restore_command, align 4
  %59 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 %57, i32 %58, i8* getelementptr inbounds ([308 x i8], [308 x i8]* @.str.35, i64 0, i64 0))
  store %struct.cmd_list_element* %59, %struct.cmd_list_element** %1, align 8
  %60 = load i32, i32* @filename_completer, align 4
  %61 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %62 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_dump_command(i8*, i32, i8*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
