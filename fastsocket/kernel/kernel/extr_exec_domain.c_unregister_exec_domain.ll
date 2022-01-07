; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exec_domain.c_unregister_exec_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exec_domain.c_unregister_exec_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec_domain = type { %struct.exec_domain* }

@exec_domains = common dso_local global %struct.exec_domain* null, align 8
@exec_domains_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_exec_domain(%struct.exec_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exec_domain*, align 8
  %4 = alloca %struct.exec_domain**, align 8
  store %struct.exec_domain* %0, %struct.exec_domain** %3, align 8
  store %struct.exec_domain** @exec_domains, %struct.exec_domain*** %4, align 8
  %5 = call i32 @write_lock(i32* @exec_domains_lock)
  store %struct.exec_domain** @exec_domains, %struct.exec_domain*** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.exec_domain**, %struct.exec_domain*** %4, align 8
  %8 = load %struct.exec_domain*, %struct.exec_domain** %7, align 8
  %9 = icmp ne %struct.exec_domain* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %12 = load %struct.exec_domain**, %struct.exec_domain*** %4, align 8
  %13 = load %struct.exec_domain*, %struct.exec_domain** %12, align 8
  %14 = icmp eq %struct.exec_domain* %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %25

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.exec_domain**, %struct.exec_domain*** %4, align 8
  %19 = load %struct.exec_domain*, %struct.exec_domain** %18, align 8
  %20 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %19, i32 0, i32 0
  store %struct.exec_domain** %20, %struct.exec_domain*** %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = call i32 @write_unlock(i32* @exec_domains_lock)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %15
  %26 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %27 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %26, i32 0, i32 0
  %28 = load %struct.exec_domain*, %struct.exec_domain** %27, align 8
  %29 = load %struct.exec_domain**, %struct.exec_domain*** %4, align 8
  store %struct.exec_domain* %28, %struct.exec_domain** %29, align 8
  %30 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %31 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %30, i32 0, i32 0
  store %struct.exec_domain* null, %struct.exec_domain** %31, align 8
  %32 = call i32 @write_unlock(i32* @exec_domains_lock)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
