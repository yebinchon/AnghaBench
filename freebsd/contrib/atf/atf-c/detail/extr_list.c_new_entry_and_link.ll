; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_new_entry_and_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_new_entry_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_entry = type { %struct.list_entry*, %struct.list_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_entry* (i8*, i32, %struct.list_entry*, %struct.list_entry*)* @new_entry_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_entry* @new_entry_and_link(i8* %0, i32 %1, %struct.list_entry* %2, %struct.list_entry* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_entry*, align 8
  %8 = alloca %struct.list_entry*, align 8
  %9 = alloca %struct.list_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.list_entry* %2, %struct.list_entry** %7, align 8
  store %struct.list_entry* %3, %struct.list_entry** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.list_entry* @new_entry(i8* %10, i32 %11)
  store %struct.list_entry* %12, %struct.list_entry** %9, align 8
  %13 = load %struct.list_entry*, %struct.list_entry** %9, align 8
  %14 = icmp ne %struct.list_entry* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.list_entry*, %struct.list_entry** %7, align 8
  %17 = load %struct.list_entry*, %struct.list_entry** %9, align 8
  %18 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %17, i32 0, i32 0
  store %struct.list_entry* %16, %struct.list_entry** %18, align 8
  %19 = load %struct.list_entry*, %struct.list_entry** %8, align 8
  %20 = load %struct.list_entry*, %struct.list_entry** %9, align 8
  %21 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %20, i32 0, i32 1
  store %struct.list_entry* %19, %struct.list_entry** %21, align 8
  %22 = load %struct.list_entry*, %struct.list_entry** %9, align 8
  %23 = load %struct.list_entry*, %struct.list_entry** %7, align 8
  %24 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %23, i32 0, i32 1
  store %struct.list_entry* %22, %struct.list_entry** %24, align 8
  %25 = load %struct.list_entry*, %struct.list_entry** %9, align 8
  %26 = load %struct.list_entry*, %struct.list_entry** %8, align 8
  %27 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %26, i32 0, i32 0
  store %struct.list_entry* %25, %struct.list_entry** %27, align 8
  br label %28

28:                                               ; preds = %15, %4
  %29 = load %struct.list_entry*, %struct.list_entry** %9, align 8
  ret %struct.list_entry* %29
}

declare dso_local %struct.list_entry* @new_entry(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
