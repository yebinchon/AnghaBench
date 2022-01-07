; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_unsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_unsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_addr_list = type { i32, i32, i64, %struct.dev_addr_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dev_addr_unsync(%struct.dev_addr_list** %0, i32* %1, %struct.dev_addr_list** %2, i32* %3) #0 {
  %5 = alloca %struct.dev_addr_list**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dev_addr_list**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dev_addr_list*, align 8
  %10 = alloca %struct.dev_addr_list*, align 8
  store %struct.dev_addr_list** %0, %struct.dev_addr_list*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.dev_addr_list** %2, %struct.dev_addr_list*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  %12 = load %struct.dev_addr_list*, %struct.dev_addr_list** %11, align 8
  store %struct.dev_addr_list* %12, %struct.dev_addr_list** %9, align 8
  br label %13

13:                                               ; preds = %45, %4
  %14 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %15 = icmp ne %struct.dev_addr_list* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %18 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %17, i32 0, i32 3
  %19 = load %struct.dev_addr_list*, %struct.dev_addr_list** %18, align 8
  store %struct.dev_addr_list* %19, %struct.dev_addr_list** %10, align 8
  %20 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %21 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %28 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %31 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @__dev_addr_delete(%struct.dev_addr_list** %25, i32* %26, i32 %29, i32 %32, i32 0)
  %34 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %35 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %39 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  %42 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @__dev_addr_delete(%struct.dev_addr_list** %36, i32* %37, i32 %40, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %24, %16
  %46 = load %struct.dev_addr_list*, %struct.dev_addr_list** %10, align 8
  store %struct.dev_addr_list* %46, %struct.dev_addr_list** %9, align 8
  br label %13

47:                                               ; preds = %13
  ret void
}

declare dso_local i32 @__dev_addr_delete(%struct.dev_addr_list**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
