; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c_dwarf_add_expr_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_expr.c_dwarf_add_expr_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_add_expr_gen(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %17 = call i32 @DWARF_SET_ERROR(i32* null, i32* %15, i32 %16)
  %18 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %18, i32* %6, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32* @_dwarf_add_expr(%struct.TYPE_4__* %20, i32 %21, i32 %22, i32 %23, i32* %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %27, %14
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32* @_dwarf_add_expr(%struct.TYPE_4__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
