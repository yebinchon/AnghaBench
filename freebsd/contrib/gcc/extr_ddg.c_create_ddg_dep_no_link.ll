; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_create_ddg_dep_no_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_create_ddg_dep_no_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@NULL_RTX = common dso_local global i32 0, align 4
@ANTI_DEP = common dso_local global i64 0, align 8
@REG_DEP_ANTI = common dso_local global i32 0, align 4
@OUTPUT_DEP = common dso_local global i64 0, align 8
@REG_DEP_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i32, i32)* @create_ddg_dep_no_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ddg_dep_no_link(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NULL_RTX, align 4
  %20 = call i32 @alloc_INSN_LIST(i32 %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @ANTI_DEP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @REG_DEP_ANTI, align 4
  %27 = call i32 @PUT_REG_NOTE_KIND(i32 %25, i32 %26)
  br label %37

28:                                               ; preds = %6
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @OUTPUT_DEP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @REG_DEP_OUTPUT, align 4
  %35 = call i32 @PUT_REG_NOTE_KIND(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @insn_cost(i32 %40, i32 %41, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @free_INSN_LIST_node(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @create_ddg_edge(%struct.TYPE_6__* %48, %struct.TYPE_6__* %49, i64 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @add_backarc_to_ddg(i32 %58, i32 %59)
  br label %65

61:                                               ; preds = %37
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @add_edge_to_ddg(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  ret void
}

declare dso_local i32 @alloc_INSN_LIST(i32, i32) #1

declare dso_local i32 @PUT_REG_NOTE_KIND(i32, i32) #1

declare dso_local i32 @insn_cost(i32, i32, i32) #1

declare dso_local i32 @free_INSN_LIST_node(i32) #1

declare dso_local i32 @create_ddg_edge(%struct.TYPE_6__*, %struct.TYPE_6__*, i64, i32, i32, i32) #1

declare dso_local i32 @add_backarc_to_ddg(i32, i32) #1

declare dso_local i32 @add_edge_to_ddg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
