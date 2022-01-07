; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_change_sym_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_change_sym_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.symbol* }
%struct.symbol = type { i32 }

@COL_NO = common dso_local global i64 0, align 8
@no = common dso_local global i32 0, align 4
@COL_MOD = common dso_local global i64 0, align 8
@mod = common dso_local global i32 0, align 4
@COL_YES = common dso_local global i64 0, align 8
@yes = common dso_local global i32 0, align 4
@view_mode = common dso_local global i32 0, align 4
@FULL_VIEW = common dso_local global i32 0, align 4
@rootmenu = common dso_local global i32 0, align 4
@SPLIT_VIEW = common dso_local global i32 0, align 4
@browsed = common dso_local global i32* null, align 8
@SINGLE_VIEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*, i64)* @change_sym_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_sym_value(%struct.menu* %0, i64 %1) #0 {
  %3 = alloca %struct.menu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.menu*, %struct.menu** %3, align 8
  %9 = getelementptr inbounds %struct.menu, %struct.menu* %8, i32 0, i32 0
  %10 = load %struct.symbol*, %struct.symbol** %9, align 8
  store %struct.symbol* %10, %struct.symbol** %5, align 8
  %11 = load %struct.symbol*, %struct.symbol** %5, align 8
  %12 = icmp ne %struct.symbol* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %75

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @COL_NO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @no, align 4
  store i32 %19, i32* %7, align 4
  br label %35

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @COL_MOD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @mod, align 4
  store i32 %25, i32* %7, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @COL_YES, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @yes, align 4
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %26
  br label %75

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.symbol*, %struct.symbol** %5, align 8
  %37 = call i32 @sym_get_type(%struct.symbol* %36)
  switch i32 %37, label %74 [
    i32 132, label %38
    i32 128, label %38
    i32 130, label %73
    i32 131, label %73
    i32 129, label %73
  ]

38:                                               ; preds = %35, %35
  %39 = load %struct.symbol*, %struct.symbol** %5, align 8
  %40 = call i32 @sym_get_tristate_value(%struct.symbol* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.symbol*, %struct.symbol** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @sym_tristate_within_range(%struct.symbol* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @yes, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load %struct.symbol*, %struct.symbol** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @sym_set_tristate_value(%struct.symbol* %48, i32 %49)
  %51 = load i32, i32* @view_mode, align 4
  %52 = load i32, i32* @FULL_VIEW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @update_tree(i32* @rootmenu, i32* null)
  br label %72

56:                                               ; preds = %47
  %57 = load i32, i32* @view_mode, align 4
  %58 = load i32, i32* @SPLIT_VIEW, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32*, i32** @browsed, align 8
  %62 = call i32 @update_tree(i32* %61, i32* null)
  %63 = call i32 (...) @display_list()
  br label %71

64:                                               ; preds = %56
  %65 = load i32, i32* @view_mode, align 4
  %66 = load i32, i32* @SINGLE_VIEW, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (...) @display_tree_part()
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %54
  br label %75

73:                                               ; preds = %35, %35, %35
  br label %74

74:                                               ; preds = %35, %73
  br label %75

75:                                               ; preds = %13, %32, %74, %72
  ret void
}

declare dso_local i32 @sym_get_type(%struct.symbol*) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @sym_tristate_within_range(%struct.symbol*, i32) #1

declare dso_local i32 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @update_tree(i32*, i32*) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @display_tree_part(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
