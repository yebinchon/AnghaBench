; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_record_minimal_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_record_minimal_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.objfile = type { i32 }

@mst_text = common dso_local global i32 0, align 4
@mst_file_text = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.minimal_symbol* (i8*, i32, i32, %struct.TYPE_4__*, %struct.objfile*)* @record_minimal_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.minimal_symbol* @record_minimal_symbol(i8* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3, %struct.objfile* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.objfile*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store %struct.objfile* %4, %struct.objfile** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @mst_text, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @mst_file_text, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %5
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @SMASH_TEXT_ADDRESS(i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = load %struct.objfile*, %struct.objfile** %10, align 8
  %30 = call %struct.minimal_symbol* @prim_record_minimal_symbol_and_info(i8* %22, i32 %23, i32 %24, i32* null, i32 %27, %struct.TYPE_4__* %28, %struct.objfile* %29)
  ret %struct.minimal_symbol* %30
}

declare dso_local i32 @SMASH_TEXT_ADDRESS(i32) #1

declare dso_local %struct.minimal_symbol* @prim_record_minimal_symbol_and_info(i8*, i32, i32, i32*, i32, %struct.TYPE_4__*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
