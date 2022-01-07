; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_input_open_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_input_open_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro = type { i32, i32, i32 }
%struct.input = type { i32, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@INPUT_STRING = common dso_local global i32 0, align 4
@inputs = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macro*)* @input_open_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_open_macro(%struct.macro* %0) #0 {
  %2 = alloca %struct.macro*, align 8
  %3 = alloca %struct.input*, align 8
  store %struct.macro* %0, %struct.macro** %2, align 8
  %4 = call i8* @malloc(i32 32)
  %5 = bitcast i8* %4 to %struct.input*
  store %struct.input* %5, %struct.input** %3, align 8
  %6 = icmp eq %struct.input* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @report(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @INPUT_STRING, align 4
  %11 = load %struct.input*, %struct.input** %3, align 8
  %12 = getelementptr inbounds %struct.input, %struct.input* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.macro*, %struct.macro** %2, align 8
  %14 = getelementptr inbounds %struct.macro, %struct.macro* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.input*, %struct.input** %3, align 8
  %17 = getelementptr inbounds %struct.input, %struct.input* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.macro*, %struct.macro** %2, align 8
  %19 = getelementptr inbounds %struct.macro, %struct.macro* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @malloc(i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.input*, %struct.input** %3, align 8
  %24 = getelementptr inbounds %struct.input, %struct.input* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load %struct.input*, %struct.input** %3, align 8
  %28 = call i32 @free(%struct.input* %27)
  %29 = call i32 @report(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %9
  %31 = load %struct.input*, %struct.input** %3, align 8
  %32 = getelementptr inbounds %struct.input, %struct.input* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.macro*, %struct.macro** %2, align 8
  %35 = getelementptr inbounds %struct.macro, %struct.macro* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.macro*, %struct.macro** %2, align 8
  %38 = getelementptr inbounds %struct.macro, %struct.macro* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.input*, %struct.input** %3, align 8
  %42 = getelementptr inbounds %struct.input, %struct.input* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.input*, %struct.input** %3, align 8
  %45 = getelementptr inbounds %struct.input, %struct.input* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.macro*, %struct.macro** %2, align 8
  %47 = getelementptr inbounds %struct.macro, %struct.macro* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.input*, %struct.input** %3, align 8
  %50 = getelementptr inbounds %struct.input, %struct.input* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.input*, %struct.input** %3, align 8
  %52 = load i32, i32* @link, align 4
  %53 = call i32 @LIST_INSERT_HEAD(i32* @inputs, %struct.input* %51, i32 %52)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @free(%struct.input*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
