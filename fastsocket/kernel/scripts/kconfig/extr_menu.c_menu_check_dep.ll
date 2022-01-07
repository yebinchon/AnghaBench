; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_check_dep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_check_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

@symbol_mod = common dso_local global i32 0, align 4
@modules_sym = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.expr*)* @menu_check_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @menu_check_dep(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %4 = load %struct.expr*, %struct.expr** %3, align 8
  %5 = icmp ne %struct.expr* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %7, %struct.expr** %2, align 8
  br label %53

8:                                                ; preds = %1
  %9 = load %struct.expr*, %struct.expr** %3, align 8
  %10 = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %50 [
    i32 130, label %12
    i32 129, label %21
    i32 131, label %21
    i32 128, label %38
  ]

12:                                               ; preds = %8
  %13 = load %struct.expr*, %struct.expr** %3, align 8
  %14 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.expr*, %struct.expr** %15, align 8
  %17 = call %struct.expr* @menu_check_dep(%struct.expr* %16)
  %18 = load %struct.expr*, %struct.expr** %3, align 8
  %19 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.expr* %17, %struct.expr** %20, align 8
  br label %51

21:                                               ; preds = %8, %8
  %22 = load %struct.expr*, %struct.expr** %3, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.expr*, %struct.expr** %24, align 8
  %26 = call %struct.expr* @menu_check_dep(%struct.expr* %25)
  %27 = load %struct.expr*, %struct.expr** %3, align 8
  %28 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.expr* %26, %struct.expr** %29, align 8
  %30 = load %struct.expr*, %struct.expr** %3, align 8
  %31 = getelementptr inbounds %struct.expr, %struct.expr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.expr*, %struct.expr** %32, align 8
  %34 = call %struct.expr* @menu_check_dep(%struct.expr* %33)
  %35 = load %struct.expr*, %struct.expr** %3, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.expr* %34, %struct.expr** %37, align 8
  br label %51

38:                                               ; preds = %8
  %39 = load %struct.expr*, %struct.expr** %3, align 8
  %40 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, @symbol_mod
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.expr*, %struct.expr** %3, align 8
  %46 = load i32, i32* @modules_sym, align 4
  %47 = call i32 @expr_alloc_symbol(i32 %46)
  %48 = call %struct.expr* @expr_alloc_and(%struct.expr* %45, i32 %47)
  store %struct.expr* %48, %struct.expr** %2, align 8
  br label %53

49:                                               ; preds = %38
  br label %51

50:                                               ; preds = %8
  br label %51

51:                                               ; preds = %50, %49, %21, %12
  %52 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %52, %struct.expr** %2, align 8
  br label %53

53:                                               ; preds = %51, %44, %6
  %54 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %54
}

declare dso_local %struct.expr* @expr_alloc_and(%struct.expr*, i32) #1

declare dso_local i32 @expr_alloc_symbol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
