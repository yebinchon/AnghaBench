; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_get_ext_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_get_ext_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.symbol* }
%struct.symbol = type { i64 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"CONFIG_%s:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@nohelp_text = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_get_ext_help(%struct.menu* %0, %struct.gstr* %1) #0 {
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.gstr*, align 8
  %5 = alloca %struct.symbol*, align 8
  store %struct.menu* %0, %struct.menu** %3, align 8
  store %struct.gstr* %1, %struct.gstr** %4, align 8
  %6 = load %struct.menu*, %struct.menu** %3, align 8
  %7 = getelementptr inbounds %struct.menu, %struct.menu* %6, i32 0, i32 0
  %8 = load %struct.symbol*, %struct.symbol** %7, align 8
  store %struct.symbol* %8, %struct.symbol** %5, align 8
  %9 = load %struct.menu*, %struct.menu** %3, align 8
  %10 = call i64 @menu_has_help(%struct.menu* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.symbol*, %struct.symbol** %5, align 8
  %14 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.gstr*, %struct.gstr** %4, align 8
  %19 = load %struct.symbol*, %struct.symbol** %5, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @str_printf(%struct.gstr* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.gstr*, %struct.gstr** %4, align 8
  %24 = load %struct.menu*, %struct.menu** %3, align 8
  %25 = call i32 @menu_get_help(%struct.menu* %24)
  %26 = call i8* @_(i32 %25)
  %27 = call i32 @str_append(%struct.gstr* %23, i8* %26)
  %28 = load %struct.gstr*, %struct.gstr** %4, align 8
  %29 = call i32 @str_append(%struct.gstr* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %17, %12
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.gstr*, %struct.gstr** %4, align 8
  %33 = load i8*, i8** @nohelp_text, align 8
  %34 = call i32 @str_append(%struct.gstr* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct.symbol*, %struct.symbol** %5, align 8
  %37 = icmp ne %struct.symbol* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.gstr*, %struct.gstr** %4, align 8
  %40 = load %struct.symbol*, %struct.symbol** %5, align 8
  %41 = call i32 @get_symbol_str(%struct.gstr* %39, %struct.symbol* %40)
  br label %42

42:                                               ; preds = %38, %35
  ret void
}

declare dso_local i64 @menu_has_help(%struct.menu*) #1

declare dso_local i32 @str_printf(%struct.gstr*, i8*, i64) #1

declare dso_local i32 @str_append(%struct.gstr*, i8*) #1

declare dso_local i8* @_(i32) #1

declare dso_local i32 @menu_get_help(%struct.menu*) #1

declare dso_local i32 @get_symbol_str(%struct.gstr*, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
