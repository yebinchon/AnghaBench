; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_allocpercpu.c_percpu_populate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_allocpercpu.c_percpu_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_data = type { i8** }

@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i32)* @percpu_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @percpu_populate(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.percpu_data*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.percpu_data* @__percpu_disguise(i8* %11)
  store %struct.percpu_data* %12, %struct.percpu_data** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cpu_to_node(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (...) @cache_line_size()
  %17 = call i64 @roundup(i64 %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.percpu_data*, %struct.percpu_data** %9, align 8
  %19 = getelementptr inbounds %struct.percpu_data, %struct.percpu_data* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @BUG_ON(i8* %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @node_online(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = call i8* @kmalloc_node(i64 %30, i32 %33, i32 %34)
  %36 = load %struct.percpu_data*, %struct.percpu_data** %9, align 8
  %37 = getelementptr inbounds %struct.percpu_data, %struct.percpu_data* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %35, i8** %41, align 8
  br label %52

42:                                               ; preds = %4
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @kzalloc(i64 %43, i32 %44)
  %46 = load %struct.percpu_data*, %struct.percpu_data** %9, align 8
  %47 = getelementptr inbounds %struct.percpu_data, %struct.percpu_data* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %42, %29
  %53 = load %struct.percpu_data*, %struct.percpu_data** %9, align 8
  %54 = getelementptr inbounds %struct.percpu_data, %struct.percpu_data* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  ret i8* %59
}

declare dso_local %struct.percpu_data* @__percpu_disguise(i8*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @BUG_ON(i8*) #1

declare dso_local i64 @node_online(i32) #1

declare dso_local i8* @kmalloc_node(i64, i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
