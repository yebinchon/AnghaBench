; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_form_arcs_marked_by_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_form_arcs_marked_by_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32* }

@description = common dso_local global %struct.TYPE_15__* null, align 8
@dm_insn_reserv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @form_arcs_marked_by_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @form_arcs_marked_by_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @description, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %15, i64 %17
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %3, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @dm_insn_reserv, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call %struct.TYPE_16__* @DECL_INSN_RESERV(%struct.TYPE_12__* %26)
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %2, align 4
  %35 = call %struct.TYPE_13__* @first_out_arc(i32 %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %4, align 8
  br label %36

36:                                               ; preds = %60, %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = call i32 @gcc_assert(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %59, align 8
  br label %60

60:                                               ; preds = %39
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = call %struct.TYPE_13__* @next_out_arc(%struct.TYPE_13__* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %4, align 8
  br label %36

63:                                               ; preds = %36
  ret void
}

declare dso_local %struct.TYPE_16__* @DECL_INSN_RESERV(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @first_out_arc(i32) #1

declare dso_local i32 @gcc_assert(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @next_out_arc(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
