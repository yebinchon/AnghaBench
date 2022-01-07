; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_dump_subexp_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_dump_subexp_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.ui_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expression*, %struct.ui_file*, i32)* @dump_subexp_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_subexp_body(%struct.expression* %0, %struct.ui_file* %1, i32 %2) #0 {
  %4 = alloca %struct.expression*, align 8
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %4, align 8
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.expression*, %struct.expression** %4, align 8
  %8 = getelementptr inbounds %struct.expression, %struct.expression* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.expression*, %struct.ui_file*, i32)**
  %14 = load i32 (%struct.expression*, %struct.ui_file*, i32)*, i32 (%struct.expression*, %struct.ui_file*, i32)** %13, align 8
  %15 = load %struct.expression*, %struct.expression** %4, align 8
  %16 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %14(%struct.expression* %15, %struct.ui_file* %16, i32 %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
