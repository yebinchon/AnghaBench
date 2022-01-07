; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_setshow_cmd_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_setshow_cmd_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@set_cmd = common dso_local global i32 0, align 4
@show_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_setshow_cmd_full(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i32* %6, i32* %7, %struct.cmd_list_element** %8, %struct.cmd_list_element** %9, %struct.cmd_list_element** %10, %struct.cmd_list_element** %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.cmd_list_element**, align 8
  %22 = alloca %struct.cmd_list_element**, align 8
  %23 = alloca %struct.cmd_list_element**, align 8
  %24 = alloca %struct.cmd_list_element**, align 8
  %25 = alloca %struct.cmd_list_element*, align 8
  %26 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store %struct.cmd_list_element** %8, %struct.cmd_list_element*** %21, align 8
  store %struct.cmd_list_element** %9, %struct.cmd_list_element*** %22, align 8
  store %struct.cmd_list_element** %10, %struct.cmd_list_element*** %23, align 8
  store %struct.cmd_list_element** %11, %struct.cmd_list_element*** %24, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* @set_cmd, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i8*, i8** %16, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %21, align 8
  %34 = call %struct.cmd_list_element* @add_set_or_show_cmd(i8* %27, i32 %28, i32 %29, i32 %30, i8* %31, i8* %32, %struct.cmd_list_element** %33)
  store %struct.cmd_list_element* %34, %struct.cmd_list_element** %25, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %12
  %38 = load %struct.cmd_list_element*, %struct.cmd_list_element** %25, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %12
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* @show_cmd, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %22, align 8
  %49 = call %struct.cmd_list_element* @add_set_or_show_cmd(i8* %42, i32 %43, i32 %44, i32 %45, i8* %46, i8* %47, %struct.cmd_list_element** %48)
  store %struct.cmd_list_element* %49, %struct.cmd_list_element** %26, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %26, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %53, i32* %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %23, align 8
  %58 = icmp ne %struct.cmd_list_element** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.cmd_list_element*, %struct.cmd_list_element** %25, align 8
  %61 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %23, align 8
  store %struct.cmd_list_element* %60, %struct.cmd_list_element** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %24, align 8
  %64 = icmp ne %struct.cmd_list_element** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.cmd_list_element*, %struct.cmd_list_element** %26, align 8
  %67 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %24, align 8
  store %struct.cmd_list_element* %66, %struct.cmd_list_element** %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  ret void
}

declare dso_local %struct.cmd_list_element* @add_set_or_show_cmd(i8*, i32, i32, i32, i8*, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
