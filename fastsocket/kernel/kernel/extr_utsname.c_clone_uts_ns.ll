; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utsname.c_clone_uts_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utsname.c_clone_uts_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uts_namespace = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@uts_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uts_namespace* (%struct.uts_namespace*)* @clone_uts_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uts_namespace* @clone_uts_ns(%struct.uts_namespace* %0) #0 {
  %2 = alloca %struct.uts_namespace*, align 8
  %3 = alloca %struct.uts_namespace*, align 8
  %4 = alloca %struct.uts_namespace*, align 8
  %5 = alloca i32, align 4
  store %struct.uts_namespace* %0, %struct.uts_namespace** %3, align 8
  %6 = call %struct.uts_namespace* (...) @create_uts_ns()
  store %struct.uts_namespace* %6, %struct.uts_namespace** %4, align 8
  %7 = load %struct.uts_namespace*, %struct.uts_namespace** %4, align 8
  %8 = icmp ne %struct.uts_namespace* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.uts_namespace* @ERR_PTR(i32 %11)
  store %struct.uts_namespace* %12, %struct.uts_namespace** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.uts_namespace*, %struct.uts_namespace** %4, align 8
  %15 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %14, i32 0, i32 1
  %16 = call i32 @proc_alloc_inum(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.uts_namespace*, %struct.uts_namespace** %4, align 8
  %21 = call i32 @kfree(%struct.uts_namespace* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.uts_namespace* @ERR_PTR(i32 %22)
  store %struct.uts_namespace* %23, %struct.uts_namespace** %2, align 8
  br label %33

24:                                               ; preds = %13
  %25 = call i32 @down_read(i32* @uts_sem)
  %26 = load %struct.uts_namespace*, %struct.uts_namespace** %4, align 8
  %27 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %26, i32 0, i32 0
  %28 = load %struct.uts_namespace*, %struct.uts_namespace** %3, align 8
  %29 = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %28, i32 0, i32 0
  %30 = call i32 @memcpy(i32* %27, i32* %29, i32 4)
  %31 = call i32 @up_read(i32* @uts_sem)
  %32 = load %struct.uts_namespace*, %struct.uts_namespace** %4, align 8
  store %struct.uts_namespace* %32, %struct.uts_namespace** %2, align 8
  br label %33

33:                                               ; preds = %24, %19, %9
  %34 = load %struct.uts_namespace*, %struct.uts_namespace** %2, align 8
  ret %struct.uts_namespace* %34
}

declare dso_local %struct.uts_namespace* @create_uts_ns(...) #1

declare dso_local %struct.uts_namespace* @ERR_PTR(i32) #1

declare dso_local i32 @proc_alloc_inum(i32*) #1

declare dso_local i32 @kfree(%struct.uts_namespace*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
