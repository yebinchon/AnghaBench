; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_sec_merge_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_sec_merge_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_merge_hash_entry = type { %struct.sec_merge_hash_entry*, %struct.sec_merge_sec_info* }
%struct.sec_merge_hash = type { %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry*, i32 }
%struct.sec_merge_sec_info = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sec_merge_hash_entry* (%struct.sec_merge_hash*, i8*, i32, %struct.sec_merge_sec_info*)* @sec_merge_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sec_merge_hash_entry* @sec_merge_add(%struct.sec_merge_hash* %0, i8* %1, i32 %2, %struct.sec_merge_sec_info* %3) #0 {
  %5 = alloca %struct.sec_merge_hash_entry*, align 8
  %6 = alloca %struct.sec_merge_hash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sec_merge_sec_info*, align 8
  %10 = alloca %struct.sec_merge_hash_entry*, align 8
  store %struct.sec_merge_hash* %0, %struct.sec_merge_hash** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sec_merge_sec_info* %3, %struct.sec_merge_sec_info** %9, align 8
  %11 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call %struct.sec_merge_hash_entry* @sec_merge_hash_lookup(%struct.sec_merge_hash* %11, i8* %12, i32 %13, i32 %14)
  store %struct.sec_merge_hash_entry* %15, %struct.sec_merge_hash_entry** %10, align 8
  %16 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %17 = icmp eq %struct.sec_merge_hash_entry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.sec_merge_hash_entry* null, %struct.sec_merge_hash_entry** %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %21 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %20, i32 0, i32 1
  %22 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %21, align 8
  %23 = icmp eq %struct.sec_merge_sec_info* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %26 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %9, align 8
  %30 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %31 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %30, i32 0, i32 1
  store %struct.sec_merge_sec_info* %29, %struct.sec_merge_sec_info** %31, align 8
  %32 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %33 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %32, i32 0, i32 1
  %34 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %33, align 8
  %35 = icmp eq %struct.sec_merge_hash_entry* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %38 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %39 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %38, i32 0, i32 1
  store %struct.sec_merge_hash_entry* %37, %struct.sec_merge_hash_entry** %39, align 8
  br label %46

40:                                               ; preds = %24
  %41 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %42 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %43 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %42, i32 0, i32 0
  %44 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %43, align 8
  %45 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %44, i32 0, i32 0
  store %struct.sec_merge_hash_entry* %41, %struct.sec_merge_hash_entry** %45, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  %48 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %49 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %48, i32 0, i32 0
  store %struct.sec_merge_hash_entry* %47, %struct.sec_merge_hash_entry** %49, align 8
  br label %50

50:                                               ; preds = %46, %19
  %51 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %10, align 8
  store %struct.sec_merge_hash_entry* %51, %struct.sec_merge_hash_entry** %5, align 8
  br label %52

52:                                               ; preds = %50, %18
  %53 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  ret %struct.sec_merge_hash_entry* %53
}

declare dso_local %struct.sec_merge_hash_entry* @sec_merge_hash_lookup(%struct.sec_merge_hash*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
