; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_S_SET_WEAKREFD.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_S_SET_WEAKREFD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.local_symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_SET_WEAKREFD(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_6__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = bitcast %struct.TYPE_6__* %7 to %struct.local_symbol*
  %9 = call %struct.TYPE_6__* @local_symbol_convert(%struct.local_symbol* %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %2, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call i32 @S_SET_WEAK(%struct.TYPE_6__* %13)
  ret void
}

declare dso_local i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @local_symbol_convert(%struct.local_symbol*) #1

declare dso_local i32 @S_SET_WEAK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
