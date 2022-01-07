; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_find_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_find_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i64, %struct.cmd_list_element* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_list_element* (i8*, i32, %struct.cmd_list_element*, i32, i32*)* @find_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_list_element* @find_cmd(i8* %0, i32 %1, %struct.cmd_list_element* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_list_element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cmd_list_element*, align 8
  %12 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cmd_list_element* %2, %struct.cmd_list_element** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %11, align 8
  %13 = load i32*, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %8, align 8
  store %struct.cmd_list_element* %14, %struct.cmd_list_element** %12, align 8
  br label %15

15:                                               ; preds = %52, %5
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %17 = icmp ne %struct.cmd_list_element* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %21 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @strncmp(i8* %19, i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %31 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29, %26
  %35 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  store %struct.cmd_list_element* %35, %struct.cmd_list_element** %11, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %40 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32*, i32** %10, align 8
  store i32 1, i32* %49, align 4
  br label %56

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %29, %18
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %54 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %53, i32 0, i32 2
  %55 = load %struct.cmd_list_element*, %struct.cmd_list_element** %54, align 8
  store %struct.cmd_list_element* %55, %struct.cmd_list_element** %12, align 8
  br label %15

56:                                               ; preds = %48, %15
  %57 = load %struct.cmd_list_element*, %struct.cmd_list_element** %11, align 8
  ret %struct.cmd_list_element* %57
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
