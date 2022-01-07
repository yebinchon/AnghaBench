; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_macro_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_macro_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_key = type { i32, i64, %struct.macro_source_file*, i32, %struct.macro_table* }
%struct.macro_table = type { i32 }
%struct.macro_source_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_key* (%struct.macro_table*, i8*, %struct.macro_source_file*, i32)* @new_macro_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_key* @new_macro_key(%struct.macro_table* %0, i8* %1, %struct.macro_source_file* %2, i32 %3) #0 {
  %5 = alloca %struct.macro_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.macro_source_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.macro_key*, align 8
  store %struct.macro_table* %0, %struct.macro_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.macro_source_file* %2, %struct.macro_source_file** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %11 = call %struct.macro_key* @macro_alloc(i32 40, %struct.macro_table* %10)
  store %struct.macro_key* %11, %struct.macro_key** %9, align 8
  %12 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  %13 = call i32 @memset(%struct.macro_key* %12, i32 0, i32 40)
  %14 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %15 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  %16 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %15, i32 0, i32 4
  store %struct.macro_table* %14, %struct.macro_table** %16, align 8
  %17 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @macro_bcache_str(%struct.macro_table* %17, i8* %18)
  %20 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  %21 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %23 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  %24 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %23, i32 0, i32 2
  store %struct.macro_source_file* %22, %struct.macro_source_file** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  %27 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  %29 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.macro_key*, %struct.macro_key** %9, align 8
  ret %struct.macro_key* %30
}

declare dso_local %struct.macro_key* @macro_alloc(i32, %struct.macro_table*) #1

declare dso_local i32 @memset(%struct.macro_key*, i32, i32) #1

declare dso_local i32 @macro_bcache_str(%struct.macro_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
