; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_elt_intern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_write_exp_elt_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internalvar = type { i32 }
%union.exp_element = type { %struct.internalvar* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_exp_elt_intern(%struct.internalvar* %0) #0 {
  %2 = alloca %struct.internalvar*, align 8
  %3 = alloca %union.exp_element, align 8
  store %struct.internalvar* %0, %struct.internalvar** %2, align 8
  %4 = load %struct.internalvar*, %struct.internalvar** %2, align 8
  %5 = bitcast %union.exp_element* %3 to %struct.internalvar**
  store %struct.internalvar* %4, %struct.internalvar** %5, align 8
  %6 = getelementptr inbounds %union.exp_element, %union.exp_element* %3, i32 0, i32 0
  %7 = load %struct.internalvar*, %struct.internalvar** %6, align 8
  %8 = call i32 @write_exp_elt(%struct.internalvar* %7)
  ret void
}

declare dso_local i32 @write_exp_elt(%struct.internalvar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
