; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.expression = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.value* (%struct.type*, %struct.expression*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, %struct.expression*, i32*, i32)* @evaluate_subexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @evaluate_subexp(%struct.type* %0, %struct.expression* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.expression*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.expression* %1, %struct.expression** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.expression*, %struct.expression** %6, align 8
  %10 = getelementptr inbounds %struct.expression, %struct.expression* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.value* (%struct.type*, %struct.expression*, i32*, i32)*, %struct.value* (%struct.type*, %struct.expression*, i32*, i32)** %14, align 8
  %16 = load %struct.type*, %struct.type** %5, align 8
  %17 = load %struct.expression*, %struct.expression** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.value* %15(%struct.type* %16, %struct.expression* %17, i32* %18, i32 %19)
  ret %struct.value* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
