; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_new_writequeue_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_new_writequeue_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writequeue_entry = type { %struct.connection*, i64, i64, i64, i64, i32 }
%struct.connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.writequeue_entry* (%struct.connection*, i32)* @new_writequeue_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.writequeue_entry* @new_writequeue_entry(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.writequeue_entry*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.writequeue_entry*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.writequeue_entry* @kmalloc(i32 48, i32 %7)
  store %struct.writequeue_entry* %8, %struct.writequeue_entry** %6, align 8
  %9 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %10 = icmp ne %struct.writequeue_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.writequeue_entry* null, %struct.writequeue_entry** %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @alloc_page(i32 %13)
  %15 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %16 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %18 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %23 = call i32 @kfree(%struct.writequeue_entry* %22)
  store %struct.writequeue_entry* null, %struct.writequeue_entry** %3, align 8
  br label %37

24:                                               ; preds = %12
  %25 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %26 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %28 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %30 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %32 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.connection*, %struct.connection** %4, align 8
  %34 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  %35 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %34, i32 0, i32 0
  store %struct.connection* %33, %struct.connection** %35, align 8
  %36 = load %struct.writequeue_entry*, %struct.writequeue_entry** %6, align 8
  store %struct.writequeue_entry* %36, %struct.writequeue_entry** %3, align 8
  br label %37

37:                                               ; preds = %24, %21, %11
  %38 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  ret %struct.writequeue_entry* %38
}

declare dso_local %struct.writequeue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @kfree(%struct.writequeue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
