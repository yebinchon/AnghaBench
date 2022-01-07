; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exec_domain.c___set_personality.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exec_domain.c___set_personality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.exec_domain = type { i32 }
%struct.TYPE_3__ = type { %struct.exec_domain* }

@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__set_personality(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.exec_domain*, align 8
  %5 = alloca %struct.exec_domain*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.exec_domain* @lookup_exec_domain(i32 %6)
  store %struct.exec_domain* %7, %struct.exec_domain** %4, align 8
  %8 = load %struct.exec_domain*, %struct.exec_domain** %4, align 8
  %9 = call %struct.TYPE_3__* (...) @current_thread_info()
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.exec_domain*, %struct.exec_domain** %10, align 8
  %12 = icmp eq %struct.exec_domain* %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.exec_domain*, %struct.exec_domain** %4, align 8
  %18 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @module_put(i32 %19)
  store i32 0, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call %struct.TYPE_3__* (...) @current_thread_info()
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.exec_domain*, %struct.exec_domain** %26, align 8
  store %struct.exec_domain* %27, %struct.exec_domain** %5, align 8
  %28 = load %struct.exec_domain*, %struct.exec_domain** %4, align 8
  %29 = call %struct.TYPE_3__* (...) @current_thread_info()
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.exec_domain* %28, %struct.exec_domain** %30, align 8
  %31 = load %struct.exec_domain*, %struct.exec_domain** %5, align 8
  %32 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @module_put(i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %21, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.exec_domain* @lookup_exec_domain(i32) #1

declare dso_local %struct.TYPE_3__* @current_thread_info(...) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
