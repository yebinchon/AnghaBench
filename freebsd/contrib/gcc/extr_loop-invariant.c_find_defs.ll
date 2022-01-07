; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_find_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_find_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_3__ = type { i32 }

@df = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, %struct.TYPE_3__**)* @find_defs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_defs(%struct.loop* %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %4, align 8
  %7 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.loop*, %struct.loop** %3, align 8
  %11 = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bitmap_set_bit(i32 %15, i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* @df, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @df_set_blocks(i32 %28, i32 %29)
  %31 = load i32, i32* @df, align 4
  %32 = call i32 @df_analyze(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @BITMAP_FREE(i32 %33)
  ret void
}

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @df_set_blocks(i32, i32) #1

declare dso_local i32 @df_analyze(i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
