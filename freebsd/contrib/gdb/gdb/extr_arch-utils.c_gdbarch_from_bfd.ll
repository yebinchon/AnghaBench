; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_gdbarch_from_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_gdbarch_from_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32* }

@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gdbarch* @gdbarch_from_bfd(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_info, align 8
  store i32* %0, i32** %2, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  store %struct.gdbarch* %6, %struct.gdbarch** %3, align 8
  %7 = call i32 @gdbarch_info_init(%struct.gdbarch_info* %5)
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %10 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.gdbarch* @gdbarch_find_by_info(i32* %11)
  ret %struct.gdbarch* %12
}

declare dso_local i32 @gdbarch_info_init(%struct.gdbarch_info*) #1

declare dso_local %struct.gdbarch* @gdbarch_find_by_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
