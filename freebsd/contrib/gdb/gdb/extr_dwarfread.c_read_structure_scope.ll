; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_structure_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_structure_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i32 }
%struct.objfile = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }

@cu_language = common dso_local global i64 0, align 8
@language_cplus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, i8*, i8*, %struct.objfile*)* @read_structure_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_structure_scope(%struct.dieinfo* %0, i8* %1, i8* %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.dieinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.type*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %12 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.objfile*, %struct.objfile** %8, align 8
  %16 = call %struct.type* @struct_type(%struct.dieinfo* %12, i8* %13, i8* %14, %struct.objfile* %15)
  store %struct.type* %16, %struct.type** %9, align 8
  %17 = load %struct.type*, %struct.type** %9, align 8
  %18 = call i32 @TYPE_STUB(%struct.type* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  %21 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %22 = load %struct.objfile*, %struct.objfile** %8, align 8
  %23 = call %struct.symbol* @new_symbol(%struct.dieinfo* %21, %struct.objfile* %22)
  store %struct.symbol* %23, %struct.symbol** %10, align 8
  %24 = load %struct.symbol*, %struct.symbol** %10, align 8
  %25 = icmp ne %struct.symbol* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %27, %struct.type** %11, align 8
  %28 = load i64, i64* @cu_language, align 8
  %29 = load i64, i64* @language_cplus, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %33 = load %struct.objfile*, %struct.objfile** %8, align 8
  %34 = load %struct.type*, %struct.type** %9, align 8
  %35 = call i32 @synthesize_typedef(%struct.dieinfo* %32, %struct.objfile* %33, %struct.type* %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %4
  ret void
}

declare dso_local %struct.type* @struct_type(%struct.dieinfo*, i8*, i8*, %struct.objfile*) #1

declare dso_local i32 @TYPE_STUB(%struct.type*) #1

declare dso_local %struct.symbol* @new_symbol(%struct.dieinfo*, %struct.objfile*) #1

declare dso_local i32 @synthesize_typedef(%struct.dieinfo*, %struct.objfile*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
