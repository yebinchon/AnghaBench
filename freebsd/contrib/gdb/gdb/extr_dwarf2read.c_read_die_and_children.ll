; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_die_and_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_die_and_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cu = type { i32 }
%struct.die_info = type { %struct.die_info*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.die_info* (i8*, i32*, %struct.dwarf2_cu*, i8**, %struct.die_info*)* @read_die_and_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.die_info* @read_die_and_children(i8* %0, i32* %1, %struct.dwarf2_cu* %2, i8** %3, %struct.die_info* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dwarf2_cu*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.die_info*, align 8
  %11 = alloca %struct.die_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.die_info* %4, %struct.die_info** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %17 = call i8* @read_full_die(%struct.die_info** %11, i32* %14, i8* %15, %struct.dwarf2_cu* %16, i32* %13)
  store i8* %17, i8** %12, align 8
  %18 = load %struct.die_info*, %struct.die_info** %11, align 8
  %19 = getelementptr inbounds %struct.die_info, %struct.die_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.die_info*, %struct.die_info** %11, align 8
  %22 = call i32 @store_in_ref_table(i32 %20, %struct.die_info* %21)
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %5
  %26 = load i8*, i8** %12, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load %struct.die_info*, %struct.die_info** %11, align 8
  %31 = call i32* @read_die_and_siblings(i8* %26, i32* %27, %struct.dwarf2_cu* %28, i8** %29, %struct.die_info* %30)
  %32 = load %struct.die_info*, %struct.die_info** %11, align 8
  %33 = getelementptr inbounds %struct.die_info, %struct.die_info* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  br label %39

34:                                               ; preds = %5
  %35 = load %struct.die_info*, %struct.die_info** %11, align 8
  %36 = getelementptr inbounds %struct.die_info, %struct.die_info* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i8**, i8*** %9, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %25
  %40 = load %struct.die_info*, %struct.die_info** %11, align 8
  %41 = getelementptr inbounds %struct.die_info, %struct.die_info* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.die_info*, %struct.die_info** %10, align 8
  %43 = load %struct.die_info*, %struct.die_info** %11, align 8
  %44 = getelementptr inbounds %struct.die_info, %struct.die_info* %43, i32 0, i32 0
  store %struct.die_info* %42, %struct.die_info** %44, align 8
  %45 = load %struct.die_info*, %struct.die_info** %11, align 8
  ret %struct.die_info* %45
}

declare dso_local i8* @read_full_die(%struct.die_info**, i32*, i8*, %struct.dwarf2_cu*, i32*) #1

declare dso_local i32 @store_in_ref_table(i32, %struct.die_info*) #1

declare dso_local i32* @read_die_and_siblings(i8*, i32*, %struct.dwarf2_cu*, i8**, %struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
