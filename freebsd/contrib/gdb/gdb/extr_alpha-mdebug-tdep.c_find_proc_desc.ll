; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-mdebug-tdep.c_find_proc_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-mdebug-tdep.c_find_proc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }

@MIPS_EFI_SYMBOL_NAME = common dso_local global i32 0, align 4
@LABEL_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64)* @find_proc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @find_proc_desc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.block* @block_for_pc(i64 %7)
  store %struct.block* %8, %struct.block** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  store %struct.symbol* null, %struct.symbol** %5, align 8
  %9 = load %struct.block*, %struct.block** %3, align 8
  %10 = icmp ne %struct.block* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @find_pc_partial_function(i64 %12, i32* null, i64* %6, i32* null)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.block*, %struct.block** %3, align 8
  %16 = call i64 @BLOCK_START(%struct.block* %15)
  %17 = icmp sgt i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store %struct.symbol* null, %struct.symbol** %5, align 8
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @MIPS_EFI_SYMBOL_NAME, align 4
  %21 = load %struct.block*, %struct.block** %3, align 8
  %22 = load i32, i32* @LABEL_DOMAIN, align 4
  %23 = call %struct.symbol* @lookup_symbol(i32 %20, %struct.block* %21, i32 %22, i32 0, i32* null)
  store %struct.symbol* %23, %struct.symbol** %5, align 8
  br label %24

24:                                               ; preds = %19, %18
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.symbol*, %struct.symbol** %5, align 8
  %27 = icmp ne %struct.symbol* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.symbol*, %struct.symbol** %5, align 8
  %30 = call i64 @SYMBOL_VALUE(%struct.symbol* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %40
}

declare dso_local %struct.block* @block_for_pc(i64) #1

declare dso_local i32 @find_pc_partial_function(i64, i32*, i64*, i32*) #1

declare dso_local i64 @BLOCK_START(%struct.block*) #1

declare dso_local %struct.symbol* @lookup_symbol(i32, %struct.block*, i32, i32, i32*) #1

declare dso_local i64 @SYMBOL_VALUE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
