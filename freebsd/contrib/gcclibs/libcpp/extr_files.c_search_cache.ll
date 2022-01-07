; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_search_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_search_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_hash_entry = type { %struct.file_hash_entry*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_hash_entry* (%struct.file_hash_entry*, i32*)* @search_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_hash_entry* @search_cache(%struct.file_hash_entry* %0, i32* %1) #0 {
  %3 = alloca %struct.file_hash_entry*, align 8
  %4 = alloca i32*, align 8
  store %struct.file_hash_entry* %0, %struct.file_hash_entry** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %5

5:                                                ; preds = %16, %2
  %6 = load %struct.file_hash_entry*, %struct.file_hash_entry** %3, align 8
  %7 = icmp ne %struct.file_hash_entry* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.file_hash_entry*, %struct.file_hash_entry** %3, align 8
  %10 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %11, %12
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load %struct.file_hash_entry*, %struct.file_hash_entry** %3, align 8
  %18 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %17, i32 0, i32 0
  %19 = load %struct.file_hash_entry*, %struct.file_hash_entry** %18, align 8
  store %struct.file_hash_entry* %19, %struct.file_hash_entry** %3, align 8
  br label %5

20:                                               ; preds = %14
  %21 = load %struct.file_hash_entry*, %struct.file_hash_entry** %3, align 8
  ret %struct.file_hash_entry* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
