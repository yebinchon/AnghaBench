; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_free_namespace_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_free_namespace_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.block = type { i32 }

@FIRST_LOCAL_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symtab*)* @free_namespace_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_namespace_block(%struct.symtab* %0) #0 {
  %2 = alloca %struct.symtab*, align 8
  %3 = alloca %struct.block*, align 8
  store %struct.symtab* %0, %struct.symtab** %2, align 8
  %4 = load %struct.symtab*, %struct.symtab** %2, align 8
  %5 = call i32 @BLOCKVECTOR(%struct.symtab* %4)
  %6 = load i32, i32* @FIRST_LOCAL_BLOCK, align 4
  %7 = call %struct.block* @BLOCKVECTOR_BLOCK(i32 %5, i32 %6)
  store %struct.block* %7, %struct.block** %3, align 8
  %8 = load %struct.block*, %struct.block** %3, align 8
  %9 = icmp ne %struct.block* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load %struct.block*, %struct.block** %3, align 8
  %13 = call i32 @BLOCK_DICT(%struct.block* %12)
  %14 = call i32 @dict_free(i32 %13)
  ret void
}

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(i32, i32) #1

declare dso_local i32 @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @dict_free(i32) #1

declare dso_local i32 @BLOCK_DICT(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
