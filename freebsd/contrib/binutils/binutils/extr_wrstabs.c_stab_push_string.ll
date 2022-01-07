; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_push_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_push_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.stab_type_stack* }
%struct.stab_type_stack = type { i64, i32, %struct.stab_type_stack*, i32*, i32*, i32*, i32*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_write_handle*, i8*, i64, i32, i32)* @stab_push_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_push_string(%struct.stab_write_handle* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.stab_write_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stab_type_stack*, align 8
  store %struct.stab_write_handle* %0, %struct.stab_write_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i64 @xmalloc(i32 64)
  %13 = inttoptr i64 %12 to %struct.stab_type_stack*
  store %struct.stab_type_stack* %13, %struct.stab_type_stack** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @xstrdup(i8* %14)
  %16 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %17 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %20 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %23 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %26 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %28 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %27, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %30 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %32 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %34 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %36 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %35, i32 0, i32 0
  %37 = load %struct.stab_type_stack*, %struct.stab_type_stack** %36, align 8
  %38 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %39 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %38, i32 0, i32 2
  store %struct.stab_type_stack* %37, %struct.stab_type_stack** %39, align 8
  %40 = load %struct.stab_type_stack*, %struct.stab_type_stack** %11, align 8
  %41 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %42 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %41, i32 0, i32 0
  store %struct.stab_type_stack* %40, %struct.stab_type_stack** %42, align 8
  %43 = load i32, i32* @TRUE, align 4
  ret i32 %43
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
