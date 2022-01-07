; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_show_from_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_show_from_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, i32, i32, i32, i32 }

@add_show_from_set.setstring = internal constant [5 x i8] c"Set \00", align 1
@.str = private unnamed_addr constant [6 x i8] c"Show \00", align 1
@show_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %0, %struct.cmd_list_element** %1) #0 {
  %3 = alloca %struct.cmd_list_element*, align 8
  %4 = alloca %struct.cmd_list_element**, align 8
  %5 = alloca i8*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %3, align 8
  store %struct.cmd_list_element** %1, %struct.cmd_list_element*** %4, align 8
  %6 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %7 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strncmp(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @add_show_from_set.setstring, i64 0, i64 0), i32 4)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %14 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 5
  %18 = sub i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i8* @concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null)
  store i8* %20, i8** %5, align 8
  %21 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %22 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @show_cmd, align 4
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %26 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %29 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %32 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %36 = call %struct.cmd_list_element* @add_set_or_show_cmd(i32 %23, i32 %24, i32 %27, i32 %30, i32 %33, i8* %34, %struct.cmd_list_element** %35)
  ret %struct.cmd_list_element* %36
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @concat(i8*, i32, i32*) #1

declare dso_local %struct.cmd_list_element* @add_set_or_show_cmd(i32, i32, i32, i32, i32, i8*, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
