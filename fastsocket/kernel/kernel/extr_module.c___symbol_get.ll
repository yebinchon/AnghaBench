; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module.c___symbol_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module.c___symbol_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.kernel_symbol = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__symbol_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.kernel_symbol*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.kernel_symbol* @find_symbol(i8* %6, %struct.module** %3, i32* null, i32 1, i32 1)
  store %struct.kernel_symbol* %7, %struct.kernel_symbol** %4, align 8
  %8 = load %struct.kernel_symbol*, %struct.kernel_symbol** %4, align 8
  %9 = icmp ne %struct.kernel_symbol* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.module*, %struct.module** %3, align 8
  %12 = call i64 @strong_try_module_get(%struct.module* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.kernel_symbol* null, %struct.kernel_symbol** %4, align 8
  br label %15

15:                                               ; preds = %14, %10, %1
  %16 = call i32 (...) @preempt_enable()
  %17 = load %struct.kernel_symbol*, %struct.kernel_symbol** %4, align 8
  %18 = icmp ne %struct.kernel_symbol* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.kernel_symbol*, %struct.kernel_symbol** %4, align 8
  %21 = getelementptr inbounds %struct.kernel_symbol, %struct.kernel_symbol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i8* [ %23, %19 ], [ null, %24 ]
  ret i8* %26
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.kernel_symbol* @find_symbol(i8*, %struct.module**, i32*, i32, i32) #1

declare dso_local i64 @strong_try_module_get(%struct.module*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
