; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c_dwarf_add_expr_addr_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c_dwarf_add_expr_addr_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct._Dwarf_P_Expr_Entry = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i32 0, align 4
@DW_OP_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_add_expr_addr_b(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct._Dwarf_P_Expr_Entry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %16 = call i32 @DWARF_SET_ERROR(i32* null, i32* %14, i32 %15)
  %17 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %17, i32* %5, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = load i32, i32* @DW_OP_addr, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct._Dwarf_P_Expr_Entry* @_dwarf_add_expr(%struct.TYPE_4__* %19, i32 %20, i32 %21, i32 0, i32* %22)
  store %struct._Dwarf_P_Expr_Entry* %23, %struct._Dwarf_P_Expr_Entry** %10, align 8
  %24 = icmp eq %struct._Dwarf_P_Expr_Entry* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %26, i32* %5, align 4
  br label %34

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = load %struct._Dwarf_P_Expr_Entry*, %struct._Dwarf_P_Expr_Entry** %10, align 8
  %30 = getelementptr inbounds %struct._Dwarf_P_Expr_Entry, %struct._Dwarf_P_Expr_Entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %25, %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local %struct._Dwarf_P_Expr_Entry* @_dwarf_add_expr(%struct.TYPE_4__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
