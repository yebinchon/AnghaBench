; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_definition_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_definition_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.macro_key = type { i32, %struct.macro_source_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_source_file* @macro_definition_location(%struct.macro_source_file* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.macro_source_file*, align 8
  %6 = alloca %struct.macro_source_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.macro_key*, align 8
  store %struct.macro_source_file* %0, %struct.macro_source_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.macro_source_file*, %struct.macro_source_file** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_3__* @find_definition(i8* %12, %struct.macro_source_file* %13, i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.macro_key*
  store %struct.macro_key* %22, %struct.macro_key** %11, align 8
  %23 = load %struct.macro_key*, %struct.macro_key** %11, align 8
  %24 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.macro_key*, %struct.macro_key** %11, align 8
  %28 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %27, i32 0, i32 1
  %29 = load %struct.macro_source_file*, %struct.macro_source_file** %28, align 8
  store %struct.macro_source_file* %29, %struct.macro_source_file** %5, align 8
  br label %31

30:                                               ; preds = %4
  store %struct.macro_source_file* null, %struct.macro_source_file** %5, align 8
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  ret %struct.macro_source_file* %32
}

declare dso_local %struct.TYPE_3__* @find_definition(i8*, %struct.macro_source_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
