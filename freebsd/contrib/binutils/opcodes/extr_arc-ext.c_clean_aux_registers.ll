; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-ext.c_clean_aux_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-ext.c_clean_aux_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExtAuxRegister = type { %struct.ExtAuxRegister*, %struct.ExtAuxRegister* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ExtAuxRegister*)* @clean_aux_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_aux_registers(%struct.ExtAuxRegister* %0) #0 {
  %2 = alloca %struct.ExtAuxRegister*, align 8
  store %struct.ExtAuxRegister* %0, %struct.ExtAuxRegister** %2, align 8
  %3 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %2, align 8
  %4 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %3, i32 0, i32 1
  %5 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %4, align 8
  %6 = icmp ne %struct.ExtAuxRegister* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %2, align 8
  %9 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %8, i32 0, i32 1
  %10 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %9, align 8
  call void @clean_aux_registers(%struct.ExtAuxRegister* %10)
  %11 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %2, align 8
  %12 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %11, i32 0, i32 0
  %13 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %12, align 8
  %14 = call i32 @free(%struct.ExtAuxRegister* %13)
  %15 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %2, align 8
  %16 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %15, i32 0, i32 1
  %17 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %16, align 8
  %18 = call i32 @free(%struct.ExtAuxRegister* %17)
  %19 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %2, align 8
  %20 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %19, i32 0, i32 1
  store %struct.ExtAuxRegister* null, %struct.ExtAuxRegister** %20, align 8
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %2, align 8
  %23 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %22, i32 0, i32 0
  %24 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %23, align 8
  %25 = call i32 @free(%struct.ExtAuxRegister* %24)
  br label %26

26:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @free(%struct.ExtAuxRegister*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
