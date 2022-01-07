; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_remove_insn_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_remove_insn_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_value = type { i64, i32, %struct.insn_ent* }
%struct.insn_ent = type { %struct.TYPE_2__*, %struct.insn_ent* }
%struct.TYPE_2__ = type { i32 }

@num_insn_ents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_value*, %struct.insn_ent*)* @remove_insn_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_insn_ent(%struct.attr_value* %0, %struct.insn_ent* %1) #0 {
  %3 = alloca %struct.attr_value*, align 8
  %4 = alloca %struct.insn_ent*, align 8
  %5 = alloca %struct.insn_ent*, align 8
  store %struct.attr_value* %0, %struct.attr_value** %3, align 8
  store %struct.insn_ent* %1, %struct.insn_ent** %4, align 8
  %6 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %7 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %6, i32 0, i32 2
  %8 = load %struct.insn_ent*, %struct.insn_ent** %7, align 8
  %9 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %10 = icmp eq %struct.insn_ent* %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %13 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %12, i32 0, i32 1
  %14 = load %struct.insn_ent*, %struct.insn_ent** %13, align 8
  %15 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %16 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %15, i32 0, i32 2
  store %struct.insn_ent* %14, %struct.insn_ent** %16, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %19 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %18, i32 0, i32 2
  %20 = load %struct.insn_ent*, %struct.insn_ent** %19, align 8
  store %struct.insn_ent* %20, %struct.insn_ent** %5, align 8
  br label %21

21:                                               ; preds = %28, %17
  %22 = load %struct.insn_ent*, %struct.insn_ent** %5, align 8
  %23 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %22, i32 0, i32 1
  %24 = load %struct.insn_ent*, %struct.insn_ent** %23, align 8
  %25 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %26 = icmp ne %struct.insn_ent* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.insn_ent*, %struct.insn_ent** %5, align 8
  %30 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %29, i32 0, i32 1
  %31 = load %struct.insn_ent*, %struct.insn_ent** %30, align 8
  store %struct.insn_ent* %31, %struct.insn_ent** %5, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %34 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %33, i32 0, i32 1
  %35 = load %struct.insn_ent*, %struct.insn_ent** %34, align 8
  %36 = load %struct.insn_ent*, %struct.insn_ent** %5, align 8
  %37 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %36, i32 0, i32 1
  store %struct.insn_ent* %35, %struct.insn_ent** %37, align 8
  br label %38

38:                                               ; preds = %32, %11
  %39 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %40 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %44 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %51 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* @num_insn_ents, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* @num_insn_ents, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
