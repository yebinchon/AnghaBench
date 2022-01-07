; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dictionary.c_dict_iter_name_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dictionary.c_dict_iter_name_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.dictionary = type { i32 }
%struct.dict_iterator = type { i32 }
%struct.TYPE_2__ = type { %struct.symbol* (%struct.dictionary*, i8*, %struct.dict_iterator*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @dict_iter_name_first(%struct.dictionary* %0, i8* %1, %struct.dict_iterator* %2) #0 {
  %4 = alloca %struct.dictionary*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dict_iterator*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dict_iterator* %2, %struct.dict_iterator** %6, align 8
  %7 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %8 = call %struct.TYPE_2__* @DICT_VECTOR(%struct.dictionary* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.symbol* (%struct.dictionary*, i8*, %struct.dict_iterator*)*, %struct.symbol* (%struct.dictionary*, i8*, %struct.dict_iterator*)** %9, align 8
  %11 = load %struct.dictionary*, %struct.dictionary** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.dict_iterator*, %struct.dict_iterator** %6, align 8
  %14 = call %struct.symbol* %10(%struct.dictionary* %11, i8* %12, %struct.dict_iterator* %13)
  ret %struct.symbol* %14
}

declare dso_local %struct.TYPE_2__* @DICT_VECTOR(%struct.dictionary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
