; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module.c_free_module.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_module.c_free_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.module = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@__unlink_module = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*)* @free_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_module(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %3 = load %struct.module*, %struct.module** %2, align 8
  %4 = call i32 @trace_module_free(%struct.module* %3)
  %5 = load i32, i32* @__unlink_module, align 4
  %6 = load %struct.module*, %struct.module** %2, align 8
  %7 = call i32 @stop_machine(i32 %5, %struct.module* %6, i32* null)
  %8 = load %struct.module*, %struct.module** %2, align 8
  %9 = call i32 @remove_notes_attrs(%struct.module* %8)
  %10 = load %struct.module*, %struct.module** %2, align 8
  %11 = call i32 @remove_sect_attrs(%struct.module* %10)
  %12 = load %struct.module*, %struct.module** %2, align 8
  %13 = call i32 @mod_kobject_remove(%struct.module* %12)
  %14 = load %struct.module*, %struct.module** %2, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ddebug_remove_module(i32 %16)
  %18 = load %struct.module*, %struct.module** %2, align 8
  %19 = call i32 @module_arch_cleanup(%struct.module* %18)
  %20 = load %struct.module*, %struct.module** %2, align 8
  %21 = call i32 @module_unload_free(%struct.module* %20)
  %22 = load %struct.module*, %struct.module** %2, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.module*, %struct.module** %2, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @destroy_params(i32 %24, i32 %27)
  %29 = load %struct.module*, %struct.module** %2, align 8
  %30 = load %struct.module*, %struct.module** %2, align 8
  %31 = getelementptr inbounds %struct.module, %struct.module* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @module_free(%struct.module* %29, i32 %32)
  %34 = load %struct.module*, %struct.module** %2, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.module*, %struct.module** %2, align 8
  %39 = getelementptr inbounds %struct.module, %struct.module* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.module*, %struct.module** %2, align 8
  %44 = getelementptr inbounds %struct.module, %struct.module* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @percpu_modfree(i64 %45)
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.module*, %struct.module** %2, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.module*, %struct.module** %2, align 8
  %52 = getelementptr inbounds %struct.module, %struct.module* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lockdep_free_key_range(i32 %50, i32 %53)
  %55 = load %struct.module*, %struct.module** %2, align 8
  %56 = load %struct.module*, %struct.module** %2, align 8
  %57 = getelementptr inbounds %struct.module, %struct.module* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @module_free(%struct.module* %55, i32 %58)
  ret void
}

declare dso_local i32 @trace_module_free(%struct.module*) #1

declare dso_local i32 @stop_machine(i32, %struct.module*, i32*) #1

declare dso_local i32 @remove_notes_attrs(%struct.module*) #1

declare dso_local i32 @remove_sect_attrs(%struct.module*) #1

declare dso_local i32 @mod_kobject_remove(%struct.module*) #1

declare dso_local i32 @ddebug_remove_module(i32) #1

declare dso_local i32 @module_arch_cleanup(%struct.module*) #1

declare dso_local i32 @module_unload_free(%struct.module*) #1

declare dso_local i32 @destroy_params(i32, i32) #1

declare dso_local i32 @module_free(%struct.module*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @percpu_modfree(i64) #1

declare dso_local i32 @lockdep_free_key_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
