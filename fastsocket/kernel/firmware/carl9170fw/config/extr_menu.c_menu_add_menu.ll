; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_menu.c_menu_add_menu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_menu.c_menu_add_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@current_entry = common dso_local global %struct.menu* null, align 8
@last_entry_ptr = common dso_local global i32* null, align 8
@current_menu = common dso_local global %struct.menu* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.menu* @menu_add_menu() #0 {
  %1 = call i32 (...) @menu_end_entry()
  %2 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %3 = getelementptr inbounds %struct.menu, %struct.menu* %2, i32 0, i32 0
  store i32* %3, i32** @last_entry_ptr, align 8
  %4 = load %struct.menu*, %struct.menu** @current_entry, align 8
  store %struct.menu* %4, %struct.menu** @current_menu, align 8
  ret %struct.menu* %4
}

declare dso_local i32 @menu_end_entry(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
