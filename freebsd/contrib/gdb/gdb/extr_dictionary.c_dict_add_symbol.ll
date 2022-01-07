; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dictionary.c_dict_add_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dictionary.c_dict_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32 }
%struct.symbol = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.dictionary*, %struct.symbol*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dict_add_symbol(%struct.dictionary* %0, %struct.symbol* %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %5 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %6 = call %struct.TYPE_2__* @DICT_VECTOR(%struct.dictionary* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.dictionary*, %struct.symbol*)*, i32 (%struct.dictionary*, %struct.symbol*)** %7, align 8
  %9 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %10 = load %struct.symbol*, %struct.symbol** %4, align 8
  %11 = call i32 %8(%struct.dictionary* %9, %struct.symbol* %10)
  ret void
}

declare dso_local %struct.TYPE_2__* @DICT_VECTOR(%struct.dictionary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
