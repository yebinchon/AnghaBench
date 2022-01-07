; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_fetch_indirect_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_fetch_indirect_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dwarf_section }
%struct.dwarf_section = type { i64, i32*, i64 }

@debug_displays = common dso_local global %struct.TYPE_2__* null, align 8
@str = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"<no .debug_str section>\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"DW_FORM_strp offset too big: %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"<offset is too big>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @fetch_indirect_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fetch_indirect_string(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dwarf_section*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_displays, align 8
  %6 = load i64, i64* @str, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.dwarf_section* %8, %struct.dwarf_section** %4, align 8
  %9 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %10 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %17 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = sub i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %23 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @warn(i8* %27, i64 %28)
  %30 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  br label %38

31:                                               ; preds = %15
  %32 = load %struct.dwarf_section*, %struct.dwarf_section** %4, align 8
  %33 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %31, %26, %13
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @warn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
