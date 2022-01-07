; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_register_dump_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_register_dump_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_opt_pass = type { i32, i32 }

@TODO_set_props = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_opt_pass*, i32, i32)* @register_dump_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_dump_files(%struct.tree_opt_pass* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_opt_pass*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tree_opt_pass* %0, %struct.tree_opt_pass** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %9 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @TODO_set_props, align 4
  %13 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %14 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @register_dump_files_1(%struct.tree_opt_pass* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @register_dump_files_1(%struct.tree_opt_pass*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
