; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stringpool.c_gt_pch_save_stringpool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stringpool.c_gt_pch_save_stringpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@spd = common dso_local global %struct.TYPE_3__* null, align 8
@ident_hash = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt_pch_save_stringpool() #0 {
  %1 = call i8* @ggc_alloc(i32 24)
  %2 = bitcast i8* %1 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** @spd, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ident_hash, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spd, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ident_hash, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spd, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spd, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 1, %16
  %18 = trunc i64 %17 to i32
  %19 = call i8* @ggc_alloc(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spd, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spd, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ident_hash, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spd, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i8* %24, i32 %27, i32 %33)
  ret void
}

declare dso_local i8* @ggc_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
