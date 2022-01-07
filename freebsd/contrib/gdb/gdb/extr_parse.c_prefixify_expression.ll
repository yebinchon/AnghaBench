; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_prefixify_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_prefixify_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression*)* @prefixify_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefixify_expression(%struct.expression* %0) #0 {
  %2 = alloca %struct.expression*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.expression*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %2, align 8
  %7 = load %struct.expression*, %struct.expression** %2, align 8
  %8 = getelementptr inbounds %struct.expression, %struct.expression* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @EXP_ELEM_TO_BYTES(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.expression*, %struct.expression** %2, align 8
  %15 = getelementptr inbounds %struct.expression, %struct.expression* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @alloca(i32 %17)
  %19 = inttoptr i64 %18 to %struct.expression*
  store %struct.expression* %19, %struct.expression** %4, align 8
  %20 = load %struct.expression*, %struct.expression** %4, align 8
  %21 = load %struct.expression*, %struct.expression** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @memcpy(%struct.expression* %20, %struct.expression* %21, i32 %22)
  %24 = load %struct.expression*, %struct.expression** %4, align 8
  %25 = load %struct.expression*, %struct.expression** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @prefixify_subexp(%struct.expression* %24, %struct.expression* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @EXP_ELEM_TO_BYTES(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(%struct.expression*, %struct.expression*, i32) #1

declare dso_local i32 @prefixify_subexp(%struct.expression*, %struct.expression*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
