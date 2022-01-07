; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_alias_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_add_alias_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, %struct.cmd_list_element*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @add_alias_cmd(i8* %0, i8* %1, i32 %2, i32 %3, %struct.cmd_list_element** %4) #0 {
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cmd_list_element**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cmd_list_element*, align 8
  %14 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.cmd_list_element** %4, %struct.cmd_list_element*** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %16, 1
  %18 = call i64 @alloca(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strcpy(i8* %20, i8* %21)
  %23 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %11, align 8
  %24 = load %struct.cmd_list_element*, %struct.cmd_list_element** %23, align 8
  %25 = call %struct.cmd_list_element* @lookup_cmd(i8** %12, %struct.cmd_list_element* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1, i32 1)
  store %struct.cmd_list_element* %25, %struct.cmd_list_element** %13, align 8
  %26 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %27 = icmp eq %struct.cmd_list_element* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %11, align 8
  %31 = call i32 @delete_cmd(i8* %29, %struct.cmd_list_element** %30)
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %6, align 8
  br label %72

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %36 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %11, align 8
  %39 = call %struct.cmd_list_element* @add_cmd(i8* %33, i32 %34, i32* null, i32 %37, %struct.cmd_list_element** %38)
  store %struct.cmd_list_element* %39, %struct.cmd_list_element** %14, align 8
  %40 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %41 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %44 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %46 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %49 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %51 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %54 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %56 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %59 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %61 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %64 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %67 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %69 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  %70 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %69, i32 0, i32 1
  store %struct.cmd_list_element* %68, %struct.cmd_list_element** %70, align 8
  %71 = load %struct.cmd_list_element*, %struct.cmd_list_element** %14, align 8
  store %struct.cmd_list_element* %71, %struct.cmd_list_element** %6, align 8
  br label %72

72:                                               ; preds = %32, %28
  %73 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  ret %struct.cmd_list_element* %73
}

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.cmd_list_element* @lookup_cmd(i8**, %struct.cmd_list_element*, i8*, i32, i32) #1

declare dso_local i32 @delete_cmd(i8*, %struct.cmd_list_element**) #1

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, i32*, i32, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
