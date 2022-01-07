; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lalr.c_set_accessing_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lalr.c_set_accessing_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_3__* }

@nstates = common dso_local global i32 0, align 4
@Value_t = common dso_local global i32 0, align 4
@accessing_symbol = common dso_local global i32* null, align 8
@first_state = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_accessing_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_accessing_symbol() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @nstates, align 4
  %3 = load i32, i32* @Value_t, align 4
  %4 = call i32* @NEW2(i32 %2, i32 %3)
  store i32* %4, i32** @accessing_symbol, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @first_state, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %1, align 8
  br label %6

6:                                                ; preds = %18, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** @accessing_symbol, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %12, i32* %17, align 4
  br label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %1, align 8
  br label %6

22:                                               ; preds = %6
  ret void
}

declare dso_local i32* @NEW2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
