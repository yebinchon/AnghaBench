; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_remove_exception_handler_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_remove_exception_handler_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ehl_map_entry = type { i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@NO_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remove_exception_handler_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_exception_handler_label(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehl_map_entry**, align 8
  %4 = alloca %struct.ehl_map_entry, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @NO_INSERT, align 4
  %21 = call i64 @htab_find_slot(i32* %19, %struct.ehl_map_entry* %4, i32 %20)
  %22 = inttoptr i64 %21 to %struct.ehl_map_entry**
  store %struct.ehl_map_entry** %22, %struct.ehl_map_entry*** %3, align 8
  %23 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %3, align 8
  %24 = call i32 @gcc_assert(%struct.ehl_map_entry** %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %3, align 8
  %31 = bitcast %struct.ehl_map_entry** %30 to i8**
  %32 = call i32 @htab_clear_slot(i32* %29, i8** %31)
  br label %33

33:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @htab_find_slot(i32*, %struct.ehl_map_entry*, i32) #1

declare dso_local i32 @gcc_assert(%struct.ehl_map_entry**) #1

declare dso_local i32 @htab_clear_slot(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
