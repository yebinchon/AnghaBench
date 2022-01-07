; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_remove_useless_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_remove_useless_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64 }

@values_became_useless = common dso_local global i64 0, align 8
@cselib_hash_table = common dso_local global i32 0, align 4
@discard_useless_locs = common dso_local global i32 0, align 4
@first_containing_mem = common dso_local global %struct.TYPE_4__* null, align 8
@dummy_val = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@discard_useless_values = common dso_local global i32 0, align 4
@n_useless_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_useless_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_useless_values() #0 {
  %1 = alloca %struct.TYPE_4__**, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  br label %3

3:                                                ; preds = %7, %0
  store i64 0, i64* @values_became_useless, align 8
  %4 = load i32, i32* @cselib_hash_table, align 4
  %5 = load i32, i32* @discard_useless_locs, align 4
  %6 = call i32 @htab_traverse(i32 %4, i32 %5, i32 0)
  br label %7

7:                                                ; preds = %3
  %8 = load i64, i64* @values_became_useless, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %3, label %10

10:                                               ; preds = %7
  store %struct.TYPE_4__** @first_containing_mem, %struct.TYPE_4__*** %1, align 8
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %2, align 8
  br label %13

13:                                               ; preds = %28, %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, @dummy_val
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.TYPE_4__** %26, %struct.TYPE_4__*** %1, align 8
  br label %27

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %2, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %1, align 8
  store %struct.TYPE_4__* @dummy_val, %struct.TYPE_4__** %33, align 8
  %34 = load i32, i32* @cselib_hash_table, align 4
  %35 = load i32, i32* @discard_useless_values, align 4
  %36 = call i32 @htab_traverse(i32 %34, i32 %35, i32 0)
  %37 = load i32, i32* @n_useless_values, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @gcc_assert(i32 %40)
  ret void
}

declare dso_local i32 @htab_traverse(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
