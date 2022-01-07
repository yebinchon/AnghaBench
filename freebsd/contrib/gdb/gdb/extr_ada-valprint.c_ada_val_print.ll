; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_val_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_val_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.ada_val_print_args = type { i8*, i32, i32, i32, i32, i32, %struct.ui_file*, i32, %struct.type* }

@ada_val_print_stub = common dso_local global i32 0, align 4
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_val_print(%struct.type* %0, i8* %1, i32 %2, i32 %3, %struct.ui_file* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ui_file*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ada_val_print_args, align 8
  store %struct.type* %0, %struct.type** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.ui_file* %4, %struct.ui_file** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.type*, %struct.type** %10, align 8
  %21 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 8
  store %struct.type* %20, %struct.type** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %12, align 4
  %25 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 7
  store i32 %26, i32* %27, align 8
  %28 = load %struct.ui_file*, %struct.ui_file** %14, align 8
  %29 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 6
  store %struct.ui_file* %28, %struct.ui_file** %29, align 8
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %16, align 4
  %33 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %17, align 4
  %35 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %18, align 4
  %37 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %19, i32 0, i32 5
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @ada_val_print_stub, align 4
  %39 = load i32, i32* @RETURN_MASK_ALL, align 4
  %40 = call i32 @catch_errors(i32 %38, %struct.ada_val_print_args* %19, i32* null, i32 %39)
  ret i32 %40
}

declare dso_local i32 @catch_errors(i32, %struct.ada_val_print_args*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
