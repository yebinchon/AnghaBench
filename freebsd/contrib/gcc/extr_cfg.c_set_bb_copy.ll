; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_set_bb_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_set_bb_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.htab_bb_copy_original_entry = type { i32, i32 }

@original_copy_bb_pool = common dso_local global i64 0, align 8
@bb_copy = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bb_copy(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.htab_bb_copy_original_entry**, align 8
  %6 = alloca %struct.htab_bb_copy_original_entry, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i64, i64* @original_copy_bb_pool, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @bb_copy, align 4
  %15 = load i32, i32* @INSERT, align 4
  %16 = call i64 @htab_find_slot(i32 %14, %struct.htab_bb_copy_original_entry* %6, i32 %15)
  %17 = inttoptr i64 %16 to %struct.htab_bb_copy_original_entry**
  store %struct.htab_bb_copy_original_entry** %17, %struct.htab_bb_copy_original_entry*** %5, align 8
  %18 = load %struct.htab_bb_copy_original_entry**, %struct.htab_bb_copy_original_entry*** %5, align 8
  %19 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %18, align 8
  %20 = icmp ne %struct.htab_bb_copy_original_entry* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.htab_bb_copy_original_entry**, %struct.htab_bb_copy_original_entry*** %5, align 8
  %26 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %25, align 8
  %27 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %44

28:                                               ; preds = %9
  %29 = load i64, i64* @original_copy_bb_pool, align 8
  %30 = call %struct.htab_bb_copy_original_entry* @pool_alloc(i64 %29)
  %31 = load %struct.htab_bb_copy_original_entry**, %struct.htab_bb_copy_original_entry*** %5, align 8
  store %struct.htab_bb_copy_original_entry* %30, %struct.htab_bb_copy_original_entry** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.htab_bb_copy_original_entry**, %struct.htab_bb_copy_original_entry*** %5, align 8
  %36 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %35, align 8
  %37 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.htab_bb_copy_original_entry**, %struct.htab_bb_copy_original_entry*** %5, align 8
  %42 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %41, align 8
  %43 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %28, %21
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

declare dso_local i64 @htab_find_slot(i32, %struct.htab_bb_copy_original_entry*, i32) #1

declare dso_local %struct.htab_bb_copy_original_entry* @pool_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
