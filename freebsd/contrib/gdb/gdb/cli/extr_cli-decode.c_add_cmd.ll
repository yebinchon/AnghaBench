; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i32, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i64, i32*, i32*, i32*, i32*, i64, %struct.cmd_list_element* }

@make_symbol_completion_list = common dso_local global i32 0, align 4
@not_set_cmd = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @add_cmd(i8* %0, i32 %1, void (i8*, i32)* %2, i8* %3, %struct.cmd_list_element** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cmd_list_element**, align 8
  %11 = alloca %struct.cmd_list_element*, align 8
  %12 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*, i32)* %2, void (i8*, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.cmd_list_element** %4, %struct.cmd_list_element*** %10, align 8
  %13 = call i64 @xmalloc(i32 176)
  %14 = inttoptr i64 %13 to %struct.cmd_list_element*
  store %struct.cmd_list_element* %14, %struct.cmd_list_element** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %10, align 8
  %17 = call i32 @delete_cmd(i8* %15, %struct.cmd_list_element** %16)
  %18 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %10, align 8
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %18, align 8
  %20 = icmp eq %struct.cmd_list_element* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %5
  %22 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %10, align 8
  %23 = load %struct.cmd_list_element*, %struct.cmd_list_element** %22, align 8
  %24 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21, %5
  %30 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %10, align 8
  %31 = load %struct.cmd_list_element*, %struct.cmd_list_element** %30, align 8
  %32 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %33 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %32, i32 0, i32 21
  store %struct.cmd_list_element* %31, %struct.cmd_list_element** %33, align 8
  %34 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %35 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %10, align 8
  store %struct.cmd_list_element* %34, %struct.cmd_list_element** %35, align 8
  br label %68

36:                                               ; preds = %21
  %37 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %10, align 8
  %38 = load %struct.cmd_list_element*, %struct.cmd_list_element** %37, align 8
  store %struct.cmd_list_element* %38, %struct.cmd_list_element** %12, align 8
  br label %39

39:                                               ; preds = %55, %36
  %40 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %41 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %40, i32 0, i32 21
  %42 = load %struct.cmd_list_element*, %struct.cmd_list_element** %41, align 8
  %43 = icmp ne %struct.cmd_list_element* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %46 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %45, i32 0, i32 21
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %46, align 8
  %48 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcmp(i8* %49, i8* %50)
  %52 = icmp sle i64 %51, 0
  br label %53

53:                                               ; preds = %44, %39
  %54 = phi i1 [ false, %39 ], [ %52, %44 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %57 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %56, i32 0, i32 21
  %58 = load %struct.cmd_list_element*, %struct.cmd_list_element** %57, align 8
  store %struct.cmd_list_element* %58, %struct.cmd_list_element** %12, align 8
  br label %39

59:                                               ; preds = %53
  %60 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %61 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %60, i32 0, i32 21
  %62 = load %struct.cmd_list_element*, %struct.cmd_list_element** %61, align 8
  %63 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %64 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %63, i32 0, i32 21
  store %struct.cmd_list_element* %62, %struct.cmd_list_element** %64, align 8
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %66 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %67 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %66, i32 0, i32 21
  store %struct.cmd_list_element* %65, %struct.cmd_list_element** %67, align 8
  br label %68

68:                                               ; preds = %59, %29
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %71 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %74 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %76 = load void (i8*, i32)*, void (i8*, i32)** %8, align 8
  %77 = call i32 @set_cmd_cfunc(%struct.cmd_list_element* %75, void (i8*, i32)* %76)
  %78 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %79 = call i32 @set_cmd_context(%struct.cmd_list_element* %78, i32* null)
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %82 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %84 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %83, i32 0, i32 20
  store i64 0, i64* %84, align 8
  %85 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %86 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %85, i32 0, i32 19
  store i32* null, i32** %86, align 8
  %87 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %88 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %87, i32 0, i32 18
  store i32* null, i32** %88, align 8
  %89 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %90 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %89, i32 0, i32 17
  store i32* null, i32** %90, align 8
  %91 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %92 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %91, i32 0, i32 16
  store i32* null, i32** %92, align 8
  %93 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %94 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %93, i32 0, i32 15
  store i64 0, i64* %94, align 8
  %95 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %96 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %95, i32 0, i32 14
  store i32* null, i32** %96, align 8
  %97 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %98 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %97, i32 0, i32 13
  store i32* null, i32** %98, align 8
  %99 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %100 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %99, i32 0, i32 12
  store i64 0, i64* %100, align 8
  %101 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %102 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %101, i32 0, i32 11
  store i64 0, i64* %102, align 8
  %103 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %104 = load i32, i32* @make_symbol_completion_list, align 4
  %105 = call i32 @set_cmd_completer(%struct.cmd_list_element* %103, i32 %104)
  %106 = load i32, i32* @not_set_cmd, align 4
  %107 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %108 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %107, i32 0, i32 10
  store i32 %106, i32* %108, align 8
  %109 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %110 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %109, i32 0, i32 9
  store i32* null, i32** %110, align 8
  %111 = load i32, i32* @var_boolean, align 4
  %112 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %113 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %115 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %114, i32 0, i32 7
  store i32* null, i32** %115, align 8
  %116 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %117 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %119 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %118, i32 0, i32 5
  store i32* null, i32** %119, align 8
  %120 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %121 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  %122 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  %123 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  ret %struct.cmd_list_element* %124
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @delete_cmd(i8*, %struct.cmd_list_element**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_cmd_cfunc(%struct.cmd_list_element*, void (i8*, i32)*) #1

declare dso_local i32 @set_cmd_context(%struct.cmd_list_element*, i32*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
