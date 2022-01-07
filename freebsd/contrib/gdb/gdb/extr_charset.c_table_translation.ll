; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_table_translation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_table_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translation = type { i8*, i8*, i8* (i8*, i32)*, i32 (i8*, i32, i32*)*, i8*, i32, i8*, i8* }

@table_convert_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.translation* (i8*, i8*, i32*, i8* (i8*, i32)*, i8*, i32 (i8*, i32, i32*)*, i8*)* @table_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.translation* @table_translation(i8* %0, i8* %1, i32* %2, i8* (i8*, i32)* %3, i8* %4, i32 (i8*, i32, i32*)* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8* (i8*, i32)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i32, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.translation*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* (i8*, i32)* %3, i8* (i8*, i32)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i32, i32*)* %5, i32 (i8*, i32, i32*)** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = call %struct.translation* @xmalloc(i32 64)
  store %struct.translation* %16, %struct.translation** %15, align 8
  %17 = load %struct.translation*, %struct.translation** %15, align 8
  %18 = call i32 @memset(%struct.translation* %17, i32 0, i32 64)
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.translation*, %struct.translation** %15, align 8
  %21 = getelementptr inbounds %struct.translation, %struct.translation* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.translation*, %struct.translation** %15, align 8
  %24 = getelementptr inbounds %struct.translation, %struct.translation* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8* (i8*, i32)*, i8* (i8*, i32)** %11, align 8
  %26 = load %struct.translation*, %struct.translation** %15, align 8
  %27 = getelementptr inbounds %struct.translation, %struct.translation* %26, i32 0, i32 2
  store i8* (i8*, i32)* %25, i8* (i8*, i32)** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.translation*, %struct.translation** %15, align 8
  %30 = getelementptr inbounds %struct.translation, %struct.translation* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %13, align 8
  %32 = load %struct.translation*, %struct.translation** %15, align 8
  %33 = getelementptr inbounds %struct.translation, %struct.translation* %32, i32 0, i32 3
  store i32 (i8*, i32, i32*)* %31, i32 (i8*, i32, i32*)** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.translation*, %struct.translation** %15, align 8
  %36 = getelementptr inbounds %struct.translation, %struct.translation* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @table_convert_char, align 4
  %38 = load %struct.translation*, %struct.translation** %15, align 8
  %39 = getelementptr inbounds %struct.translation, %struct.translation* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.translation*, %struct.translation** %15, align 8
  %43 = getelementptr inbounds %struct.translation, %struct.translation* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.translation*, %struct.translation** %15, align 8
  ret %struct.translation* %44
}

declare dso_local %struct.translation* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.translation*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
