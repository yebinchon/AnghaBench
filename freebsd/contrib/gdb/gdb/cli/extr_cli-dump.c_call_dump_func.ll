; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_call_dump_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_call_dump_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }
%struct.dump_context = type { i32, i32 (i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd_list_element*, i8*, i32)* @call_dump_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_dump_func(%struct.cmd_list_element* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cmd_list_element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dump_context*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %9 = call %struct.dump_context* @get_cmd_context(%struct.cmd_list_element* %8)
  store %struct.dump_context* %9, %struct.dump_context** %7, align 8
  %10 = load %struct.dump_context*, %struct.dump_context** %7, align 8
  %11 = getelementptr inbounds %struct.dump_context, %struct.dump_context* %10, i32 0, i32 1
  %12 = load i32 (i8*, i32)*, i32 (i8*, i32)** %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.dump_context*, %struct.dump_context** %7, align 8
  %15 = getelementptr inbounds %struct.dump_context, %struct.dump_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %12(i8* %13, i32 %16)
  ret void
}

declare dso_local %struct.dump_context* @get_cmd_context(%struct.cmd_list_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
