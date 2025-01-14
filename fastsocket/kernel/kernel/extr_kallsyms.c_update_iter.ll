; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_update_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_update_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kallsym_iter = type { i64, i32 }

@kallsyms_num_syms = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kallsym_iter*, i64)* @update_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_iter(%struct.kallsym_iter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kallsym_iter*, align 8
  %5 = alloca i64, align 8
  store %struct.kallsym_iter* %0, %struct.kallsym_iter** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @kallsyms_num_syms, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %12 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %14 = call i32 @get_ksymbol_mod(%struct.kallsym_iter* %13)
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %18 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @reset_iter(%struct.kallsym_iter* %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %27 = call i64 @get_ksymbol_core(%struct.kallsym_iter* %26)
  %28 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %29 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load %struct.kallsym_iter*, %struct.kallsym_iter** %4, align 8
  %35 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @get_ksymbol_mod(%struct.kallsym_iter*) #1

declare dso_local i32 @reset_iter(%struct.kallsym_iter*, i64) #1

declare dso_local i64 @get_ksymbol_core(%struct.kallsym_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
