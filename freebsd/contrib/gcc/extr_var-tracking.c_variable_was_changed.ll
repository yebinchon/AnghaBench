; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_variable_was_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_variable_was_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@emit_notes = common dso_local global i64 0, align 8
@changed_variables = common dso_local global i64 0, align 8
@INSERT = common dso_local global i32 0, align 4
@var_pool = common dso_local global i32 0, align 4
@NO_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @variable_was_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @variable_was_changed(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @VARIABLE_HASH_VAL(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @emit_notes, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  %17 = load i64, i64* @changed_variables, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @INSERT, align 4
  %23 = call i8** @htab_find_slot_with_hash(i64 %17, i32 %20, i32 %21, i32 %22)
  %24 = bitcast i8** %23 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %24, %struct.TYPE_4__*** %6, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load i32, i32* @var_pool, align 4
  %34 = call %struct.TYPE_4__* @pool_alloc(i32 %33)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NO_INSERT, align 4
  %52 = call i8** @htab_find_slot_with_hash(i64 %46, i32 %49, i32 %50, i32 %51)
  store i8** %52, i8*** %8, align 8
  %53 = load i8**, i8*** %8, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %32
  %56 = load i64, i64* %4, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = call i32 @htab_clear_slot(i64 %56, i8** %57)
  br label %59

59:                                               ; preds = %55, %32
  br label %63

60:                                               ; preds = %27, %16
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %62, align 8
  br label %63

63:                                               ; preds = %60, %59
  br label %87

64:                                               ; preds = %2
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @gcc_assert(i64 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NO_INSERT, align 4
  %78 = call i8** @htab_find_slot_with_hash(i64 %72, i32 %75, i32 %76, i32 %77)
  store i8** %78, i8*** %9, align 8
  %79 = load i8**, i8*** %9, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i64, i64* %4, align 8
  %83 = load i8**, i8*** %9, align 8
  %84 = call i32 @htab_clear_slot(i64 %82, i8** %83)
  br label %85

85:                                               ; preds = %81, %71
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %63
  ret void
}

declare dso_local i32 @VARIABLE_HASH_VAL(i32) #1

declare dso_local i8** @htab_find_slot_with_hash(i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @pool_alloc(i32) #1

declare dso_local i32 @htab_clear_slot(i64, i8**) #1

declare dso_local i32 @gcc_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
