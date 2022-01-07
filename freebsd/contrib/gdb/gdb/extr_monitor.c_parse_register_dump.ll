; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_parse_register_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_parse_register_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32, i8*, i32)* }
%struct.re_registers = type { i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"MON Parsing  register dump\0A\00", align 1
@register_pattern = common dso_local global i32 0, align 4
@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @parse_register_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_register_dump(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.re_registers, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 @monitor_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %2, %19
  %12 = call i32 @memset(%struct.re_registers* %9, i32 0, i32 16)
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @re_search(i32* @register_pattern, i8* %13, i32 %14, i32 0, i32 %15, %struct.re_registers* %9)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %73

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %39, %43
  store i32 %44, i32* %6, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8* %51, i8** %8, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 %54(i8* %55, i32 %56, i8* %57, i32 %58)
  %60 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %3, align 8
  %67 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %11

73:                                               ; preds = %18
  ret void
}

declare dso_local i32 @monitor_debug(i8*) #1

declare dso_local i32 @memset(%struct.re_registers*, i32, i32) #1

declare dso_local i32 @re_search(i32*, i8*, i32, i32, i32, %struct.re_registers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
