; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_atf_list_append_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_atf_list_append_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.list_entry = type { %struct.list_entry*, %struct.list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atf_list_append_list(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.list_entry*, align 8
  %6 = alloca %struct.list_entry*, align 8
  %7 = alloca %struct.list_entry*, align 8
  %8 = alloca %struct.list_entry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.list_entry*
  store %struct.list_entry* %12, %struct.list_entry** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.list_entry*
  store %struct.list_entry* %16, %struct.list_entry** %8, align 8
  %17 = load %struct.list_entry*, %struct.list_entry** %7, align 8
  %18 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %17, i32 0, i32 0
  %19 = load %struct.list_entry*, %struct.list_entry** %18, align 8
  store %struct.list_entry* %19, %struct.list_entry** %5, align 8
  %20 = load %struct.list_entry*, %struct.list_entry** %8, align 8
  %21 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %20, i32 0, i32 1
  %22 = load %struct.list_entry*, %struct.list_entry** %21, align 8
  store %struct.list_entry* %22, %struct.list_entry** %6, align 8
  %23 = load %struct.list_entry*, %struct.list_entry** %7, align 8
  %24 = call i32 @delete_entry(%struct.list_entry* %23)
  %25 = load %struct.list_entry*, %struct.list_entry** %8, align 8
  %26 = call i32 @delete_entry(%struct.list_entry* %25)
  %27 = load %struct.list_entry*, %struct.list_entry** %6, align 8
  %28 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %29 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %28, i32 0, i32 1
  store %struct.list_entry* %27, %struct.list_entry** %29, align 8
  %30 = load %struct.list_entry*, %struct.list_entry** %5, align 8
  %31 = load %struct.list_entry*, %struct.list_entry** %6, align 8
  %32 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %31, i32 0, i32 0
  store %struct.list_entry* %30, %struct.list_entry** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  ret void
}

declare dso_local i32 @delete_entry(%struct.list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
