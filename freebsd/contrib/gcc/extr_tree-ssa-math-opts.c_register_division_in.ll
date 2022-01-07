; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_register_division_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_register_division_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.occurrence = type { i32, i32 }

@ENTRY_BLOCK_PTR = common dso_local global i32 0, align 4
@occ_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @register_division_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_division_in(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.occurrence*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.occurrence*
  store %struct.occurrence* %7, %struct.occurrence** %3, align 8
  %8 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %9 = icmp ne %struct.occurrence* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call %struct.occurrence* @occ_new(%struct.TYPE_4__* %11, i32* null)
  store %struct.occurrence* %12, %struct.occurrence** %3, align 8
  %13 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %14 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  %15 = call i32 @insert_bb(%struct.occurrence* %13, i32 %14, i32* @occ_head)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %18 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %20 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local %struct.occurrence* @occ_new(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @insert_bb(%struct.occurrence*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
