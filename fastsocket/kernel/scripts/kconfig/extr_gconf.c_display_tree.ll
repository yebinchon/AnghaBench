; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_display_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_display_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32, %struct.symbol*, %struct.property*, %struct.menu*, %struct.menu* }
%struct.symbol = type { i32, i32 }
%struct.property = type { i32 }

@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@indent = common dso_local global i32 0, align 4
@current = common dso_local global %struct.menu* null, align 8
@P_UNKNOWN = common dso_local global i32 0, align 4
@SYMBOL_CHANGED = common dso_local global i32 0, align 4
@view_mode = common dso_local global i64 0, align 8
@SPLIT_VIEW = common dso_local global i64 0, align 8
@MENU_ROOT = common dso_local global i32 0, align 4
@tree = common dso_local global i64 0, align 8
@tree1 = common dso_local global i64 0, align 8
@tree2 = common dso_local global i64 0, align 8
@show_all = common dso_local global i64 0, align 8
@FULL_VIEW = common dso_local global i64 0, align 8
@P_MENU = common dso_local global i32 0, align 4
@SINGLE_VIEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @display_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_tree(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %2, align 8
  %7 = load %struct.menu*, %struct.menu** %2, align 8
  %8 = icmp eq %struct.menu* %7, @rootmenu
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* @indent, align 4
  store %struct.menu* @rootmenu, %struct.menu** @current, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.menu*, %struct.menu** %2, align 8
  %12 = getelementptr inbounds %struct.menu, %struct.menu* %11, i32 0, i32 4
  %13 = load %struct.menu*, %struct.menu** %12, align 8
  store %struct.menu* %13, %struct.menu** %5, align 8
  br label %14

14:                                               ; preds = %126, %10
  %15 = load %struct.menu*, %struct.menu** %5, align 8
  %16 = icmp ne %struct.menu* %15, null
  br i1 %16, label %17, label %130

17:                                               ; preds = %14
  %18 = load %struct.menu*, %struct.menu** %5, align 8
  %19 = getelementptr inbounds %struct.menu, %struct.menu* %18, i32 0, i32 2
  %20 = load %struct.property*, %struct.property** %19, align 8
  store %struct.property* %20, %struct.property** %4, align 8
  %21 = load %struct.menu*, %struct.menu** %5, align 8
  %22 = getelementptr inbounds %struct.menu, %struct.menu* %21, i32 0, i32 1
  %23 = load %struct.symbol*, %struct.symbol** %22, align 8
  store %struct.symbol* %23, %struct.symbol** %3, align 8
  %24 = load %struct.property*, %struct.property** %4, align 8
  %25 = icmp ne %struct.property* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.property*, %struct.property** %4, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @P_UNKNOWN, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  store i32 %33, i32* %6, align 4
  %34 = load %struct.symbol*, %struct.symbol** %3, align 8
  %35 = icmp ne %struct.symbol* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @SYMBOL_CHANGED, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.symbol*, %struct.symbol** %3, align 8
  %40 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = load i64, i64* @view_mode, align 8
  %45 = load i64, i64* @SPLIT_VIEW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.menu*, %struct.menu** %5, align 8
  %49 = getelementptr inbounds %struct.menu, %struct.menu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MENU_ROOT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* @tree, align 8
  %56 = load i64, i64* @tree1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %126

59:                                               ; preds = %54, %47, %43
  %60 = load i64, i64* @view_mode, align 8
  %61 = load i64, i64* @SPLIT_VIEW, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.menu*, %struct.menu** %5, align 8
  %65 = getelementptr inbounds %struct.menu, %struct.menu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MENU_ROOT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i64, i64* @tree, align 8
  %72 = load i64, i64* @tree2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %126

75:                                               ; preds = %70, %63, %59
  %76 = load %struct.menu*, %struct.menu** %5, align 8
  %77 = call i64 @menu_is_visible(%struct.menu* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* @show_all, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %75
  %83 = load %struct.menu*, %struct.menu** %5, align 8
  %84 = load %struct.menu*, %struct.menu** %5, align 8
  %85 = call i32 @fill_row(%struct.menu* %84)
  %86 = call i32 @place_node(%struct.menu* %83, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i64, i64* @view_mode, align 8
  %89 = load i64, i64* @FULL_VIEW, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @P_MENU, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i64, i64* @tree, align 8
  %97 = load i64, i64* @tree2, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %126

100:                                              ; preds = %95, %91, %87
  %101 = load i64, i64* @view_mode, align 8
  %102 = load i64, i64* @SINGLE_VIEW, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.menu*, %struct.menu** %2, align 8
  %106 = getelementptr inbounds %struct.menu, %struct.menu* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MENU_ROOT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %104, %100
  %112 = load i64, i64* @view_mode, align 8
  %113 = load i64, i64* @FULL_VIEW, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* @view_mode, align 8
  %117 = load i64, i64* @SPLIT_VIEW, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115, %111, %104
  %120 = load i32, i32* @indent, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @indent, align 4
  %122 = load %struct.menu*, %struct.menu** %5, align 8
  call void @display_tree(%struct.menu* %122)
  %123 = load i32, i32* @indent, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* @indent, align 4
  br label %125

125:                                              ; preds = %119, %115
  br label %126

126:                                              ; preds = %125, %99, %74, %58
  %127 = load %struct.menu*, %struct.menu** %5, align 8
  %128 = getelementptr inbounds %struct.menu, %struct.menu* %127, i32 0, i32 3
  %129 = load %struct.menu*, %struct.menu** %128, align 8
  store %struct.menu* %129, %struct.menu** %5, align 8
  br label %14

130:                                              ; preds = %14
  ret void
}

declare dso_local i64 @menu_is_visible(%struct.menu*) #1

declare dso_local i32 @place_node(%struct.menu*, i32) #1

declare dso_local i32 @fill_row(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
