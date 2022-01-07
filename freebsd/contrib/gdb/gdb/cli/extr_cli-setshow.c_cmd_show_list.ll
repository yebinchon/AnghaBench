; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-setshow.c_cmd_show_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-setshow.c_cmd_show_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i64, i8*, %struct.cmd_list_element**, i32, %struct.cmd_list_element* }
%struct.cleanup = type { i32 }

@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"showlist\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"optionlist\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@show_cmd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_show_list(%struct.cmd_list_element* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_list_element*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca %struct.cleanup*, align 8
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @uiout, align 4
  %11 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %11, %struct.cleanup** %7, align 8
  br label %12

12:                                               ; preds = %70, %3
  %13 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %14 = icmp ne %struct.cmd_list_element* %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %12
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %17 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %16, i32 0, i32 3
  %18 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %17, align 8
  %19 = icmp ne %struct.cmd_list_element** %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %22 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @uiout, align 4
  %27 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %27, %struct.cleanup** %8, align 8
  %28 = load i32, i32* @uiout, align 4
  %29 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %30 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  %33 = call i32 @ui_out_field_string(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %35 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %34, i32 0, i32 3
  %36 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %35, align 8
  %37 = load %struct.cmd_list_element*, %struct.cmd_list_element** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %40 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  call void @cmd_show_list(%struct.cmd_list_element* %37, i32 %38, i8* %42)
  %43 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %44 = call i32 @do_cleanups(%struct.cleanup* %43)
  br label %45

45:                                               ; preds = %25, %20, %15
  %46 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %47 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @show_cmd, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load i32, i32* @uiout, align 4
  %53 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cleanup* %53, %struct.cleanup** %9, align 8
  %54 = load i32, i32* @uiout, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @ui_out_text(i32 %54, i8* %55)
  %57 = load i32, i32* @uiout, align 4
  %58 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %59 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @ui_out_field_string(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @uiout, align 4
  %63 = call i32 @ui_out_text(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %66 = call i32 @do_setshow_command(i8* null, i32 %64, %struct.cmd_list_element* %65)
  %67 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %68 = call i32 @do_cleanups(%struct.cleanup* %67)
  br label %69

69:                                               ; preds = %51, %45
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  %72 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %71, i32 0, i32 5
  %73 = load %struct.cmd_list_element*, %struct.cmd_list_element** %72, align 8
  store %struct.cmd_list_element* %73, %struct.cmd_list_element** %4, align 8
  br label %12

74:                                               ; preds = %12
  %75 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %76 = call i32 @do_cleanups(%struct.cleanup* %75)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @do_setshow_command(i8*, i32, %struct.cmd_list_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
