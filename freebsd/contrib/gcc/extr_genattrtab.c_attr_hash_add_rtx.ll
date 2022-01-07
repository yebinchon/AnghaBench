; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_hash_add_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_hash_add_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_hash = type { i32, %struct.attr_hash*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@hash_obstack = common dso_local global i32 0, align 4
@attr_hash_table = common dso_local global %struct.attr_hash** null, align 8
@RTL_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @attr_hash_add_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attr_hash_add_rtx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.attr_hash*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @hash_obstack, align 4
  %7 = call %struct.attr_hash* @obstack_alloc(i32 %6, i32 24)
  store %struct.attr_hash* %7, %struct.attr_hash** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %10 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %13 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.attr_hash**, %struct.attr_hash*** @attr_hash_table, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @RTL_HASH_SIZE, align 4
  %18 = srem i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.attr_hash*, %struct.attr_hash** %15, i64 %19
  %21 = load %struct.attr_hash*, %struct.attr_hash** %20, align 8
  %22 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %23 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %22, i32 0, i32 1
  store %struct.attr_hash* %21, %struct.attr_hash** %23, align 8
  %24 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %25 = load %struct.attr_hash**, %struct.attr_hash*** @attr_hash_table, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RTL_HASH_SIZE, align 4
  %28 = srem i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.attr_hash*, %struct.attr_hash** %25, i64 %29
  store %struct.attr_hash* %24, %struct.attr_hash** %30, align 8
  ret void
}

declare dso_local %struct.attr_hash* @obstack_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
