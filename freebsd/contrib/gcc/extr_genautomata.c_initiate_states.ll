; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@description = common dso_local global %struct.TYPE_9__* null, align 8
@unit_decl_t = common dso_local global i32 0, align 4
@units_array = common dso_local global %struct.TYPE_8__** null, align 8
@dm_unit = common dso_local global i64 0, align 8
@max_cycles_num = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@els_in_cycle_reserv = common dso_local global i32 0, align 4
@els_in_reservs = common dso_local global i32 0, align 4
@curr_unique_state_num = common dso_local global i64 0, align 8
@state_hash = common dso_local global i32 0, align 4
@state_eq_p = common dso_local global i32 0, align 4
@state_table = common dso_local global i32 0, align 4
@temp_reserv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initiate_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initiate_states() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @unit_decl_t, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_8__** @XNEWVEC(i32 %8, i32 %11)
  store %struct.TYPE_8__** %12, %struct.TYPE_8__*** @units_array, align 8
  br label %14

13:                                               ; preds = %0
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** @units_array, align 8
  br label %14

14:                                               ; preds = %13, %7
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %44, %14
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %1, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @dm_unit, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %36 = call %struct.TYPE_8__* @DECL_UNIT(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @units_array, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = call %struct.TYPE_8__* @DECL_UNIT(%struct.TYPE_7__* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 %41
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %42, align 8
  br label %43

43:                                               ; preds = %34, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %15

47:                                               ; preds = %15
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* @max_cycles_num, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* @CHAR_BIT, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = add i64 %54, %57
  %59 = sub i64 %58, 1
  %60 = load i32, i32* @CHAR_BIT, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = udiv i64 %59, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @els_in_cycle_reserv, align 4
  %65 = load i32, i32* @els_in_cycle_reserv, align 4
  %66 = load i32, i32* @max_cycles_num, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* @els_in_reservs, align 4
  store i64 0, i64* @curr_unique_state_num, align 8
  %68 = call i32 (...) @initiate_alt_states()
  %69 = load i32, i32* @state_hash, align 4
  %70 = load i32, i32* @state_eq_p, align 4
  %71 = call i32 @htab_create(i32 1500, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* @state_table, align 4
  %72 = call i32 (...) @alloc_empty_reserv_sets()
  store i32 %72, i32* @temp_reserv, align 4
  ret void
}

declare dso_local %struct.TYPE_8__** @XNEWVEC(i32, i32) #1

declare dso_local %struct.TYPE_8__* @DECL_UNIT(%struct.TYPE_7__*) #1

declare dso_local i32 @initiate_alt_states(...) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local i32 @alloc_empty_reserv_sets(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
