; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_obj_symbol_new_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_obj_symbol_new_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_obj_sy = type { i32*, i32* }

@ECOFF_DEBUGGING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_obj_symbol_new_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.elf_obj_sy*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.elf_obj_sy* @symbol_get_obj(i32* %4)
  store %struct.elf_obj_sy* %5, %struct.elf_obj_sy** %3, align 8
  %6 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %3, align 8
  %7 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %6, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = load %struct.elf_obj_sy*, %struct.elf_obj_sy** %3, align 8
  %9 = getelementptr inbounds %struct.elf_obj_sy, %struct.elf_obj_sy* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  ret void
}

declare dso_local %struct.elf_obj_sy* @symbol_get_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
