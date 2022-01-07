; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_do_displays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_do_displays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { %struct.display* }

@display_chain = common dso_local global %struct.display* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_displays() #0 {
  %1 = alloca %struct.display*, align 8
  %2 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %2, %struct.display** %1, align 8
  br label %3

3:                                                ; preds = %9, %0
  %4 = load %struct.display*, %struct.display** %1, align 8
  %5 = icmp ne %struct.display* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load %struct.display*, %struct.display** %1, align 8
  %8 = call i32 @do_one_display(%struct.display* %7)
  br label %9

9:                                                ; preds = %6
  %10 = load %struct.display*, %struct.display** %1, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 0
  %12 = load %struct.display*, %struct.display** %11, align 8
  store %struct.display* %12, %struct.display** %1, align 8
  br label %3

13:                                               ; preds = %3
  ret void
}

declare dso_local i32 @do_one_display(%struct.display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
