; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_get_bb_original.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_get_bb_original.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.htab_bb_copy_original_entry = type { i32, i32 }

@original_copy_bb_pool = common dso_local global i32 0, align 4
@bb_original = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @get_bb_original(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.htab_bb_copy_original_entry*, align 8
  %5 = alloca %struct.htab_bb_copy_original_entry, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load i32, i32* @original_copy_bb_pool, align 4
  %7 = call i32 @gcc_assert(i32 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @bb_original, align 4
  %13 = call i64 @htab_find(i32 %12, %struct.htab_bb_copy_original_entry* %5)
  %14 = inttoptr i64 %13 to %struct.htab_bb_copy_original_entry*
  store %struct.htab_bb_copy_original_entry* %14, %struct.htab_bb_copy_original_entry** %4, align 8
  %15 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %4, align 8
  %16 = icmp ne %struct.htab_bb_copy_original_entry* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %4, align 8
  %19 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_5__* @BASIC_BLOCK(i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %2, align 8
  br label %23

22:                                               ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %23

23:                                               ; preds = %22, %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %24
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @htab_find(i32, %struct.htab_bb_copy_original_entry*) #1

declare dso_local %struct.TYPE_5__* @BASIC_BLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
