; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_abbrev_prefix_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_abbrev_prefix_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i32, i32, %struct.cmd_list_element** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @add_abbrev_prefix_cmd(i8* %0, i32 %1, void (i8*, i32)* %2, i8* %3, %struct.cmd_list_element** %4, i8* %5, i32 %6, %struct.cmd_list_element** %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (i8*, i32)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cmd_list_element**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cmd_list_element**, align 8
  %17 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store void (i8*, i32)* %2, void (i8*, i32)** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.cmd_list_element** %4, %struct.cmd_list_element*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.cmd_list_element** %7, %struct.cmd_list_element*** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load void (i8*, i32)*, void (i8*, i32)** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %16, align 8
  %23 = call %struct.cmd_list_element* @add_cmd(i8* %18, i32 %19, void (i8*, i32)* %20, i8* %21, %struct.cmd_list_element** %22)
  store %struct.cmd_list_element* %23, %struct.cmd_list_element** %17, align 8
  %24 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %13, align 8
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %17, align 8
  %26 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %25, i32 0, i32 3
  store %struct.cmd_list_element** %24, %struct.cmd_list_element*** %26, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load %struct.cmd_list_element*, %struct.cmd_list_element** %17, align 8
  %29 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.cmd_list_element*, %struct.cmd_list_element** %17, align 8
  %32 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cmd_list_element*, %struct.cmd_list_element** %17, align 8
  %34 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %33, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = load %struct.cmd_list_element*, %struct.cmd_list_element** %17, align 8
  ret %struct.cmd_list_element* %35
}

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, void (i8*, i32)*, i8*, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
