; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.menu*, i32, i32, i32, %struct.symbol* }
%struct.symbol = type { i32 }

@current_menu = common dso_local global i32 0, align 4
@current_file = common dso_local global i32 0, align 4
@last_entry_ptr = common dso_local global %struct.menu** null, align 8
@current_entry = common dso_local global %struct.menu* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_add_entry(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.menu*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = call %struct.menu* @malloc(i32 32)
  store %struct.menu* %4, %struct.menu** %3, align 8
  %5 = load %struct.menu*, %struct.menu** %3, align 8
  %6 = call i32 @memset(%struct.menu* %5, i32 0, i32 32)
  %7 = load %struct.symbol*, %struct.symbol** %2, align 8
  %8 = load %struct.menu*, %struct.menu** %3, align 8
  %9 = getelementptr inbounds %struct.menu, %struct.menu* %8, i32 0, i32 4
  store %struct.symbol* %7, %struct.symbol** %9, align 8
  %10 = load i32, i32* @current_menu, align 4
  %11 = load %struct.menu*, %struct.menu** %3, align 8
  %12 = getelementptr inbounds %struct.menu, %struct.menu* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @current_file, align 4
  %14 = load %struct.menu*, %struct.menu** %3, align 8
  %15 = getelementptr inbounds %struct.menu, %struct.menu* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = call i32 (...) @zconf_lineno()
  %17 = load %struct.menu*, %struct.menu** %3, align 8
  %18 = getelementptr inbounds %struct.menu, %struct.menu* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.menu*, %struct.menu** %3, align 8
  %20 = load %struct.menu**, %struct.menu*** @last_entry_ptr, align 8
  store %struct.menu* %19, %struct.menu** %20, align 8
  %21 = load %struct.menu*, %struct.menu** %3, align 8
  %22 = getelementptr inbounds %struct.menu, %struct.menu* %21, i32 0, i32 0
  store %struct.menu** %22, %struct.menu*** @last_entry_ptr, align 8
  %23 = load %struct.menu*, %struct.menu** %3, align 8
  store %struct.menu* %23, %struct.menu** @current_entry, align 8
  ret void
}

declare dso_local %struct.menu* @malloc(i32) #1

declare dso_local i32 @memset(%struct.menu*, i32, i32) #1

declare dso_local i32 @zconf_lineno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
