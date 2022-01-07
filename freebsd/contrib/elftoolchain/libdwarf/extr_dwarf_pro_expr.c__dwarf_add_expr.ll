; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c__dwarf_add_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c__dwarf_add_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Dwarf_P_Expr_Entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@DW_DLE_NONE = common dso_local global i64 0, align 8
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@ee_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._Dwarf_P_Expr_Entry* (%struct.TYPE_5__*, i32, i8*, i8*, i32*)* @_dwarf_add_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._Dwarf_P_Expr_Entry* @_dwarf_add_expr(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct._Dwarf_P_Expr_Entry*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct._Dwarf_P_Expr_Entry*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32* [ %20, %17 ], [ null, %21 ]
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @_dwarf_loc_expr_add_atom(i32* %26, i32* null, i32* null, i32 %27, i8* %28, i8* %29, i32* %14, i32* %30)
  %32 = load i64, i64* @DW_DLE_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store %struct._Dwarf_P_Expr_Entry* null, %struct._Dwarf_P_Expr_Entry** %6, align 8
  br label %79

35:                                               ; preds = %22
  %36 = load i32, i32* %14, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = call %struct._Dwarf_P_Expr_Entry* @calloc(i32 1, i32 32)
  store %struct._Dwarf_P_Expr_Entry* %40, %struct._Dwarf_P_Expr_Entry** %12, align 8
  %41 = icmp eq %struct._Dwarf_P_Expr_Entry* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @DW_DLE_MEMORY, align 4
  %46 = call i32 @DWARF_SET_ERROR(i32* %43, i32* %44, i32 %45)
  store %struct._Dwarf_P_Expr_Entry* null, %struct._Dwarf_P_Expr_Entry** %6, align 8
  br label %79

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %12, align 8
  %51 = load i32, i32* @ee_next, align 4
  %52 = call i32 @STAILQ_INSERT_TAIL(i32* %49, %struct._Dwarf_P_Expr_Entry* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %12, align 8
  %55 = getelementptr inbounds %struct._Dwarf_P_Expr_Entry, %struct._Dwarf_P_Expr_Entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %12, align 8
  %59 = getelementptr inbounds %struct._Dwarf_P_Expr_Entry, %struct._Dwarf_P_Expr_Entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %12, align 8
  %63 = getelementptr inbounds %struct._Dwarf_P_Expr_Entry, %struct._Dwarf_P_Expr_Entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %12, align 8
  %69 = getelementptr inbounds %struct._Dwarf_P_Expr_Entry, %struct._Dwarf_P_Expr_Entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %12, align 8
  store %struct._Dwarf_P_Expr_Entry* %78, %struct._Dwarf_P_Expr_Entry** %6, align 8
  br label %79

79:                                               ; preds = %47, %42, %34
  %80 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %6, align 8
  ret %struct._Dwarf_P_Expr_Entry* %80
}

declare dso_local i64 @_dwarf_loc_expr_add_atom(i32*, i32*, i32*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct._Dwarf_P_Expr_Entry* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct._Dwarf_P_Expr_Entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
