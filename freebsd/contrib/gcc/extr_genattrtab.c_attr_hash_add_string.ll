; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_hash_add_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_hash_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_hash = type { i32, %struct.attr_hash*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@hash_obstack = common dso_local global i32 0, align 4
@attr_hash_table = common dso_local global %struct.attr_hash** null, align 8
@RTL_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @attr_hash_add_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attr_hash_add_string(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.attr_hash*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @hash_obstack, align 4
  %7 = call %struct.attr_hash* @obstack_alloc(i32 %6, i32 24)
  store %struct.attr_hash* %7, %struct.attr_hash** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 0, %8
  %10 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %11 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %14 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  %16 = load %struct.attr_hash**, %struct.attr_hash*** @attr_hash_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RTL_HASH_SIZE, align 4
  %19 = srem i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.attr_hash*, %struct.attr_hash** %16, i64 %20
  %22 = load %struct.attr_hash*, %struct.attr_hash** %21, align 8
  %23 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %24 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %23, i32 0, i32 1
  store %struct.attr_hash* %22, %struct.attr_hash** %24, align 8
  %25 = load %struct.attr_hash*, %struct.attr_hash** %5, align 8
  %26 = load %struct.attr_hash**, %struct.attr_hash*** @attr_hash_table, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @RTL_HASH_SIZE, align 4
  %29 = srem i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.attr_hash*, %struct.attr_hash** %26, i64 %30
  store %struct.attr_hash* %25, %struct.attr_hash** %31, align 8
  ret void
}

declare dso_local %struct.attr_hash* @obstack_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
