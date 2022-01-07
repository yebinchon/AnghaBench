; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_get_ksymbol_mod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_get_ksymbol_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kallsym_iter = type { i32, i32, i32, i32, i32, i64 }

@kallsyms_num_syms = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kallsym_iter*)* @get_ksymbol_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ksymbol_mod(%struct.kallsym_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kallsym_iter*, align 8
  store %struct.kallsym_iter* %0, %struct.kallsym_iter** %3, align 8
  %4 = load %struct.kallsym_iter*, %struct.kallsym_iter** %3, align 8
  %5 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @kallsyms_num_syms, align 8
  %8 = sub nsw i64 %6, %7
  %9 = load %struct.kallsym_iter*, %struct.kallsym_iter** %3, align 8
  %10 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %9, i32 0, i32 4
  %11 = load %struct.kallsym_iter*, %struct.kallsym_iter** %3, align 8
  %12 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %11, i32 0, i32 3
  %13 = load %struct.kallsym_iter*, %struct.kallsym_iter** %3, align 8
  %14 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.kallsym_iter*, %struct.kallsym_iter** %3, align 8
  %17 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kallsym_iter*, %struct.kallsym_iter** %3, align 8
  %20 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %19, i32 0, i32 0
  %21 = call i64 @module_get_kallsym(i64 %8, i32* %10, i32* %12, i32 %15, i32 %18, i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @module_get_kallsym(i64, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
