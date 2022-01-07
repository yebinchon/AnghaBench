; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c__initialize_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c__initialize_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@class_vars = common dso_local global i32 0, align 4
@mem_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [251 x i8] c"Define attributes for memory region.\0AUsage: mem <lo addr> <hi addr> [<mode> <width> <cache>], \0Awhere <mode>  may be rw (read/write), ro (read-only) or wo (write-only), \0A      <width> may be 8, 16, 32, or 64, and \0A      <cache> may be cache or nocache\00", align 1
@mem_enable_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [169 x i8] c"Enable memory region.\0AArguments are the code numbers of the memory regions to enable.\0AUsage: enable mem <code number>\0ADo \22info mem\22 to see current list of code numbers.\00", align 1
@enablelist = common dso_local global i32 0, align 4
@mem_disable_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [172 x i8] c"Disable memory region.\0AArguments are the code numbers of the memory regions to disable.\0AUsage: disable mem <code number>\0ADo \22info mem\22 to see current list of code numbers.\00", align 1
@disablelist = common dso_local global i32 0, align 4
@mem_delete_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [169 x i8] c"Delete memory region.\0AArguments are the code numbers of the memory regions to delete.\0AUsage: delete mem <code number>\0ADo \22info mem\22 to see current list of code numbers.\00", align 1
@deletelist = common dso_local global i32 0, align 4
@mem_info_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Memory region attributes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_mem() #0 {
  %1 = load i32, i32* @class_vars, align 4
  %2 = load i32, i32* @mem_command, align 4
  %3 = call i32 @add_com(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @class_vars, align 4
  %5 = load i32, i32* @mem_enable_command, align 4
  %6 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.2, i64 0, i64 0), i32* @enablelist)
  %7 = load i32, i32* @class_vars, align 4
  %8 = load i32, i32* @mem_disable_command, align 4
  %9 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.3, i64 0, i64 0), i32* @disablelist)
  %10 = load i32, i32* @class_vars, align 4
  %11 = load i32, i32* @mem_delete_command, align 4
  %12 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.4, i64 0, i64 0), i32* @deletelist)
  %13 = load i32, i32* @mem_info_command, align 4
  %14 = call i32 @add_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
