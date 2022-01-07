; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_die_and_siblings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_die_and_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cu = type { i32 }
%struct.die_info = type { i64, %struct.die_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.die_info* (i8*, i32*, %struct.dwarf2_cu*, i8**, %struct.die_info*)* @read_die_and_siblings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.die_info* @read_die_and_siblings(i8* %0, i32* %1, %struct.dwarf2_cu* %2, i8** %3, %struct.die_info* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dwarf2_cu*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.die_info*, align 8
  %11 = alloca %struct.die_info*, align 8
  %12 = alloca %struct.die_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.die_info*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.die_info* %4, %struct.die_info** %10, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %13, align 8
  store %struct.die_info* null, %struct.die_info** %12, align 8
  store %struct.die_info* null, %struct.die_info** %11, align 8
  br label %16

16:                                               ; preds = %5, %41
  %17 = load i8*, i8** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %20 = load %struct.die_info*, %struct.die_info** %10, align 8
  %21 = call %struct.die_info* @read_die_and_children(i8* %17, i32* %18, %struct.dwarf2_cu* %19, i8** %13, %struct.die_info* %20)
  store %struct.die_info* %21, %struct.die_info** %14, align 8
  %22 = load %struct.die_info*, %struct.die_info** %11, align 8
  %23 = icmp ne %struct.die_info* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load %struct.die_info*, %struct.die_info** %14, align 8
  store %struct.die_info* %25, %struct.die_info** %11, align 8
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.die_info*, %struct.die_info** %14, align 8
  %28 = load %struct.die_info*, %struct.die_info** %12, align 8
  %29 = getelementptr inbounds %struct.die_info, %struct.die_info* %28, i32 0, i32 1
  store %struct.die_info* %27, %struct.die_info** %29, align 8
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct.die_info*, %struct.die_info** %14, align 8
  %32 = getelementptr inbounds %struct.die_info, %struct.die_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** %13, align 8
  %37 = load i8**, i8*** %9, align 8
  store i8* %36, i8** %37, align 8
  %38 = load %struct.die_info*, %struct.die_info** %11, align 8
  ret %struct.die_info* %38

39:                                               ; preds = %30
  %40 = load %struct.die_info*, %struct.die_info** %14, align 8
  store %struct.die_info* %40, %struct.die_info** %12, align 8
  br label %41

41:                                               ; preds = %39
  br label %16
}

declare dso_local %struct.die_info* @read_die_and_children(i8*, i32*, %struct.dwarf2_cu*, i8**, %struct.die_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
