; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exec_domain.c_register_exec_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exec_domain.c_register_exec_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec_domain = type { %struct.exec_domain* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@exec_domains_lock = common dso_local global i32 0, align 4
@exec_domains = common dso_local global %struct.exec_domain* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_exec_domain(%struct.exec_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exec_domain*, align 8
  %4 = alloca %struct.exec_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.exec_domain* %0, %struct.exec_domain** %3, align 8
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %9 = icmp eq %struct.exec_domain* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %15 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %14, i32 0, i32 0
  %16 = load %struct.exec_domain*, %struct.exec_domain** %15, align 8
  %17 = icmp ne %struct.exec_domain* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %13
  %22 = call i32 @write_lock(i32* @exec_domains_lock)
  %23 = load %struct.exec_domain*, %struct.exec_domain** @exec_domains, align 8
  store %struct.exec_domain* %23, %struct.exec_domain** %4, align 8
  br label %24

24:                                               ; preds = %33, %21
  %25 = load %struct.exec_domain*, %struct.exec_domain** %4, align 8
  %26 = icmp ne %struct.exec_domain* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.exec_domain*, %struct.exec_domain** %4, align 8
  %29 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %30 = icmp eq %struct.exec_domain* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %42

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.exec_domain*, %struct.exec_domain** %4, align 8
  %35 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %34, i32 0, i32 0
  %36 = load %struct.exec_domain*, %struct.exec_domain** %35, align 8
  store %struct.exec_domain* %36, %struct.exec_domain** %4, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.exec_domain*, %struct.exec_domain** @exec_domains, align 8
  %39 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  %40 = getelementptr inbounds %struct.exec_domain, %struct.exec_domain* %39, i32 0, i32 0
  store %struct.exec_domain* %38, %struct.exec_domain** %40, align 8
  %41 = load %struct.exec_domain*, %struct.exec_domain** %3, align 8
  store %struct.exec_domain* %41, %struct.exec_domain** @exec_domains, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = call i32 @write_unlock(i32* @exec_domains_lock)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %18, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
