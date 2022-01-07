; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_atf_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_atf_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.list_entry*, %struct.list_entry*, i64 }
%struct.list_entry = type { %struct.list_entry*, %struct.list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_list_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.list_entry*, align 8
  %5 = alloca %struct.list_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call %struct.list_entry* @new_entry(i32* null, i32 0)
  store %struct.list_entry* %6, %struct.list_entry** %4, align 8
  %7 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %8 = icmp eq %struct.list_entry* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @atf_no_memory_error()
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = call %struct.list_entry* @new_entry(i32* null, i32 0)
  store %struct.list_entry* %12, %struct.list_entry** %5, align 8
  %13 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %14 = icmp eq %struct.list_entry* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %17 = call i32 @free(%struct.list_entry* %16)
  %18 = call i32 (...) @atf_no_memory_error()
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %11
  %20 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %21 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %22 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %21, i32 0, i32 1
  store %struct.list_entry* %20, %struct.list_entry** %22, align 8
  %23 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %24 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %23, i32 0, i32 0
  store %struct.list_entry* null, %struct.list_entry** %24, align 8
  %25 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %26 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %25, i32 0, i32 1
  store %struct.list_entry* null, %struct.list_entry** %26, align 8
  %27 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %28 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %29 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %28, i32 0, i32 0
  store %struct.list_entry* %27, %struct.list_entry** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store %struct.list_entry* %32, %struct.list_entry** %34, align 8
  %35 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.list_entry* %35, %struct.list_entry** %37, align 8
  %38 = call i32 (...) @atf_no_error()
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %19, %15, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.list_entry* @new_entry(i32*, i32) #1

declare dso_local i32 @atf_no_memory_error(...) #1

declare dso_local i32 @free(%struct.list_entry*) #1

declare dso_local i32 @atf_no_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
