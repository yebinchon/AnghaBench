; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_attr.c_dwarf_add_AT_targ_address_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_attr.c_dwarf_add_AT_targ_address_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i8*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_BADADDR = common dso_local global %struct.TYPE_13__* null, align 8
@DW_DLE_NONE = common dso_local global i64 0, align 8
@DW_FORM_addr = common dso_local global i32 0, align 4
@at_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @dwarf_add_AT_targ_address_b(i32* %0, %struct.TYPE_12__* %1, i32 %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %6
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %24 = call i32 @DWARF_SET_ERROR(i32* %21, i32* %22, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %7, align 8
  br label %59

26:                                               ; preds = %17
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @_dwarf_attr_alloc(%struct.TYPE_12__* %27, %struct.TYPE_13__** %14, i32* %28)
  %30 = load i64, i64* @DW_DLE_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DW_DLV_BADADDR, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %7, align 8
  br label %59

34:                                               ; preds = %26
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @DW_FORM_addr, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i8* %47, i8** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %56 = load i32, i32* @at_next, align 4
  %57 = call i32 @STAILQ_INSERT_TAIL(i32* %54, %struct.TYPE_13__* %55, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %7, align 8
  br label %59

59:                                               ; preds = %34, %32, %20
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %60
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i64 @_dwarf_attr_alloc(%struct.TYPE_12__*, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
