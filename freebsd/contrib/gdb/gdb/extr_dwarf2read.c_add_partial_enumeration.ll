; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_enumeration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_enumeration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_die_info = type { i64, i32* }
%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32* }

@DW_TAG_enumerator = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"malformed enumerator DIE ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.partial_die_info*, i8*, %struct.dwarf2_cu*, i8*)* @add_partial_enumeration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_partial_enumeration(%struct.partial_die_info* %0, i8* %1, %struct.dwarf2_cu* %2, i8* %3) #0 {
  %5 = alloca %struct.partial_die_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dwarf2_cu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.partial_die_info, align 8
  store %struct.partial_die_info* %0, %struct.partial_die_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %13 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %12, i32 0, i32 0
  %14 = load %struct.objfile*, %struct.objfile** %13, align 8
  store %struct.objfile* %14, %struct.objfile** %9, align 8
  %15 = load %struct.objfile*, %struct.objfile** %9, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %19 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.partial_die_info*, %struct.partial_die_info** %5, align 8
  %24 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @add_partial_symbol(%struct.partial_die_info* %23, %struct.dwarf2_cu* %24, i8* %25)
  br label %27

27:                                               ; preds = %22, %4
  br label %28

28:                                               ; preds = %27, %52
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %32 = call i8* @read_partial_die(%struct.partial_die_info* %11, i32* %29, i8* %30, %struct.dwarf2_cu* %31)
  store i8* %32, i8** %6, align 8
  %33 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %53

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %11, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DW_TAG_enumerator, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %11, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %37
  %47 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @add_partial_symbol(%struct.partial_die_info* %11, %struct.dwarf2_cu* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %46
  br label %28

53:                                               ; preds = %36
  %54 = load i8*, i8** %6, align 8
  ret i8* %54
}

declare dso_local i32 @add_partial_symbol(%struct.partial_die_info*, %struct.dwarf2_cu*, i8*) #1

declare dso_local i8* @read_partial_die(%struct.partial_die_info*, i32*, i8*, %struct.dwarf2_cu*) #1

declare dso_local i32 @complaint(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
