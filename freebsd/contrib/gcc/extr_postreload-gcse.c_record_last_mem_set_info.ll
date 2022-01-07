; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_record_last_mem_set_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_record_last_mem_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modifies_mem = type { %struct.modifies_mem*, i32 }

@modifies_mem_obstack = common dso_local global i32 0, align 4
@modifies_mem_list = common dso_local global %struct.modifies_mem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @record_last_mem_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_last_mem_set_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.modifies_mem*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 @obstack_alloc(i32* @modifies_mem_obstack, i32 16)
  %5 = inttoptr i64 %4 to %struct.modifies_mem*
  store %struct.modifies_mem* %5, %struct.modifies_mem** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.modifies_mem*, %struct.modifies_mem** %3, align 8
  %8 = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.modifies_mem*, %struct.modifies_mem** @modifies_mem_list, align 8
  %10 = load %struct.modifies_mem*, %struct.modifies_mem** %3, align 8
  %11 = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %10, i32 0, i32 0
  store %struct.modifies_mem* %9, %struct.modifies_mem** %11, align 8
  %12 = load %struct.modifies_mem*, %struct.modifies_mem** %3, align 8
  store %struct.modifies_mem* %12, %struct.modifies_mem** @modifies_mem_list, align 8
  ret void
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
