; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_add_equivalence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_add_equivalence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@vr_value = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @add_equivalence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_equivalence(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @SSA_NAME_VERSION(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vr_value, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %9, i64 %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bitmap_set_bit(i32 %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bitmap_ior_into(i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %19, %2
  ret void
}

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @bitmap_ior_into(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
