; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_insert_insn_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_insert_insn_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_value = type { i32, i32, %struct.insn_ent* }
%struct.insn_ent = type { %struct.TYPE_2__*, %struct.insn_ent* }
%struct.TYPE_2__ = type { i32 }

@num_insn_ents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_value*, %struct.insn_ent*)* @insert_insn_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_insn_ent(%struct.attr_value* %0, %struct.insn_ent* %1) #0 {
  %3 = alloca %struct.attr_value*, align 8
  %4 = alloca %struct.insn_ent*, align 8
  store %struct.attr_value* %0, %struct.attr_value** %3, align 8
  store %struct.insn_ent* %1, %struct.insn_ent** %4, align 8
  %5 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %6 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %5, i32 0, i32 2
  %7 = load %struct.insn_ent*, %struct.insn_ent** %6, align 8
  %8 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %9 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %8, i32 0, i32 1
  store %struct.insn_ent* %7, %struct.insn_ent** %9, align 8
  %10 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %11 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %12 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %11, i32 0, i32 2
  store %struct.insn_ent* %10, %struct.insn_ent** %12, align 8
  %13 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %14 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %18 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %25 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* @num_insn_ents, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @num_insn_ents, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
