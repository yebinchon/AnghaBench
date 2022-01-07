; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_die.c_dwarf_die_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_die.c_dwarf_die_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @dwarf_die_link(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = icmp eq %struct.TYPE_18__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %21 = call i32 @DWARF_SET_ERROR(i32* null, i32* %19, i32 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %7, align 8
  br label %54

23:                                               ; preds = %6
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %31 = call i32 @_dwarf_die_count_links(%struct.TYPE_18__* %27, %struct.TYPE_18__* %28, %struct.TYPE_18__* %29, %struct.TYPE_18__* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i32*, i32** %14, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %38 = call i32 @DWARF_SET_ERROR(i32* %35, i32* %36, i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %7, align 8
  br label %54

40:                                               ; preds = %23
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %7, align 8
  br label %54

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = call i32 @_dwarf_die_link(%struct.TYPE_18__* %47, %struct.TYPE_18__* %48, %struct.TYPE_18__* %49, %struct.TYPE_18__* %50, %struct.TYPE_18__* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %7, align 8
  br label %54

54:                                               ; preds = %46, %43, %34, %18
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  ret %struct.TYPE_18__* %55
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_die_count_links(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @_dwarf_die_link(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
