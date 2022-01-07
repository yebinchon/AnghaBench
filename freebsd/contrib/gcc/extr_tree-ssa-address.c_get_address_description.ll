; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_get_address_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_get_address_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_address_description(i32 %0, %struct.mem_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_address*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.mem_address* %1, %struct.mem_address** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TMR_SYMBOL(i32 %5)
  %7 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %8 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TMR_BASE(i32 %9)
  %11 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %12 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TMR_INDEX(i32 %13)
  %15 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %16 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TMR_STEP(i32 %17)
  %19 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %20 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TMR_OFFSET(i32 %21)
  %23 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %24 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @TMR_SYMBOL(i32) #1

declare dso_local i32 @TMR_BASE(i32) #1

declare dso_local i32 @TMR_INDEX(i32) #1

declare dso_local i32 @TMR_STEP(i32) #1

declare dso_local i32 @TMR_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
