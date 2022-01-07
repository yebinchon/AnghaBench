; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_source_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_source_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { i64, i32, %struct.macro_table* }
%struct.macro_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_source_file* (%struct.macro_table*, i8*)* @new_source_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_source_file* @new_source_file(%struct.macro_table* %0, i8* %1) #0 {
  %3 = alloca %struct.macro_table*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.macro_source_file*, align 8
  store %struct.macro_table* %0, %struct.macro_table** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.macro_table*, %struct.macro_table** %3, align 8
  %7 = call %struct.macro_source_file* @macro_alloc(i32 24, %struct.macro_table* %6)
  store %struct.macro_source_file* %7, %struct.macro_source_file** %5, align 8
  %8 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %9 = call i32 @memset(%struct.macro_source_file* %8, i32 0, i32 24)
  %10 = load %struct.macro_table*, %struct.macro_table** %3, align 8
  %11 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %12 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %11, i32 0, i32 2
  store %struct.macro_table* %10, %struct.macro_table** %12, align 8
  %13 = load %struct.macro_table*, %struct.macro_table** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @macro_bcache_str(%struct.macro_table* %13, i8* %14)
  %16 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %17 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %19 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  ret %struct.macro_source_file* %20
}

declare dso_local %struct.macro_source_file* @macro_alloc(i32, %struct.macro_table*) #1

declare dso_local i32 @memset(%struct.macro_source_file*, i32, i32) #1

declare dso_local i32 @macro_bcache_str(%struct.macro_table*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
