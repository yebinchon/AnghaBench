; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c_dwarf_new_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c_dwarf_new_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_9__* null, align 8
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@pe_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @dwarf_new_expr(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %13 = call i32 @DWARF_SET_ERROR(%struct.TYPE_10__* %10, i32* %11, i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = call %struct.TYPE_9__* @calloc(i32 1, i32 4)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @DW_DLE_MEMORY, align 4
  %22 = call i32 @DWARF_SET_ERROR(%struct.TYPE_10__* %19, i32* %20, i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = call i32 @STAILQ_INIT(i32* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = load i32, i32* @pe_next, align 4
  %32 = call i32 @STAILQ_INSERT_TAIL(i32* %29, %struct.TYPE_9__* %30, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %3, align 8
  br label %37

37:                                               ; preds = %24, %18, %9
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %38
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
