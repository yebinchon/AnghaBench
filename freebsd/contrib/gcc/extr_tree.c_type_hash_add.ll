; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_hash_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_hash = type { i32, i32 }

@type_hash_table = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @type_hash_add(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.type_hash*, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call %struct.type_hash* @ggc_alloc(i32 8)
  store %struct.type_hash* %7, %struct.type_hash** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.type_hash*, %struct.type_hash** %5, align 8
  %10 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.type_hash*, %struct.type_hash** %5, align 8
  %13 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @type_hash_table, align 4
  %15 = load %struct.type_hash*, %struct.type_hash** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @INSERT, align 4
  %18 = call i8** @htab_find_slot_with_hash(i32 %14, %struct.type_hash* %15, i32 %16, i32 %17)
  store i8** %18, i8*** %6, align 8
  %19 = load %struct.type_hash*, %struct.type_hash** %5, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = bitcast i8** %20 to %struct.type_hash**
  store %struct.type_hash* %19, %struct.type_hash** %21, align 8
  ret void
}

declare dso_local %struct.type_hash* @ggc_alloc(i32) #1

declare dso_local i8** @htab_find_slot_with_hash(i32, %struct.type_hash*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
