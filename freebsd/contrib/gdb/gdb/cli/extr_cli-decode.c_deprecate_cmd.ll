; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_deprecate_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_deprecate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, i8* }

@CMD_DEPRECATED = common dso_local global i32 0, align 4
@DEPRECATED_WARN_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @deprecate_cmd(%struct.cmd_list_element* %0, i8* %1) #0 {
  %3 = alloca %struct.cmd_list_element*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @CMD_DEPRECATED, align 4
  %6 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %9 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %17 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  %20 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %19, i32 0, i32 1
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.cmd_list_element*, %struct.cmd_list_element** %3, align 8
  ret %struct.cmd_list_element* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
