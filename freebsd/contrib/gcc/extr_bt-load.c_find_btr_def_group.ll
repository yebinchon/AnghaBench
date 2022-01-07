; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_find_btr_def_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_find_btr_def_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__*, i32 }

@migrate_btrl_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, %struct.TYPE_7__*)* @find_btr_def_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_btr_def_group(%struct.TYPE_6__** %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @insn_sets_btr_p(i32 %9, i32 1, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @single_set(i32 %15)
  %17 = call i32 @SET_SRC(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %5, align 8
  br label %20

20:                                               ; preds = %32, %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @rtx_equal_p(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %36

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  br label %20

36:                                               ; preds = %30, %20
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = call %struct.TYPE_6__* @obstack_alloc(i32* @migrate_btrl_obstack, i32 4)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %51, align 8
  br label %52

52:                                               ; preds = %39, %36
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %63, align 8
  br label %67

64:                                               ; preds = %2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %66, align 8
  br label %67

67:                                               ; preds = %64, %52
  ret void
}

declare dso_local i64 @insn_sets_btr_p(i32, i32, i32*) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local %struct.TYPE_6__* @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
