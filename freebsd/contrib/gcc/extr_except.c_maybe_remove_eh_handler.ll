; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_maybe_remove_eh_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_maybe_remove_eh_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ehl_map_entry = type { %struct.eh_region*, i32 }
%struct.eh_region = type { i64, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@NO_INSERT = common dso_local global i32 0, align 4
@ERT_MUST_NOT_THROW = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_remove_eh_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehl_map_entry**, align 8
  %4 = alloca %struct.ehl_map_entry, align 8
  %5 = alloca %struct.eh_region*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NO_INSERT, align 4
  %22 = call i64 @htab_find_slot(i32 %20, %struct.ehl_map_entry* %4, i32 %21)
  %23 = inttoptr i64 %22 to %struct.ehl_map_entry**
  store %struct.ehl_map_entry** %23, %struct.ehl_map_entry*** %3, align 8
  %24 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %3, align 8
  %25 = icmp ne %struct.ehl_map_entry** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %56

27:                                               ; preds = %13
  %28 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %3, align 8
  %29 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %28, align 8
  %30 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %29, i32 0, i32 0
  %31 = load %struct.eh_region*, %struct.eh_region** %30, align 8
  store %struct.eh_region* %31, %struct.eh_region** %5, align 8
  %32 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %33 = icmp ne %struct.eh_region* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %56

35:                                               ; preds = %27
  %36 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %37 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ERT_MUST_NOT_THROW, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %3, align 8
  %48 = bitcast %struct.ehl_map_entry** %47 to i8**
  %49 = call i32 @htab_clear_slot(i32 %46, i8** %48)
  %50 = load i32, i32* @NULL_RTX, align 4
  %51 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %52 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %56

53:                                               ; preds = %35
  %54 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %55 = call i32 @remove_eh_handler(%struct.eh_region* %54)
  br label %56

56:                                               ; preds = %12, %26, %34, %53, %41
  ret void
}

declare dso_local i64 @htab_find_slot(i32, %struct.ehl_map_entry*, i32) #1

declare dso_local i32 @htab_clear_slot(i32, i8**) #1

declare dso_local i32 @remove_eh_handler(%struct.eh_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
