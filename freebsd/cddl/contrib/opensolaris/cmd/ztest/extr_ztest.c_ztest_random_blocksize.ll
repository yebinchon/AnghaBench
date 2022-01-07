; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_random_blocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_random_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SPA_OLD_MAXBLOCKSHIFT = common dso_local global i32 0, align 4
@ztest_spa = common dso_local global %struct.TYPE_3__* null, align 8
@SPA_MAXBLOCKSIZE = common dso_local global i64 0, align 8
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ztest_random_blocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_random_blocksize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPA_OLD_MAXBLOCKSHIFT, align 4
  store i32 %3, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ztest_spa, align 8
  %5 = call i64 @spa_maxblocksize(%struct.TYPE_3__* %4)
  %6 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 20, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ztest_spa, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = add nsw i32 %14, 1
  %16 = call i32 @ztest_random(i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %17, %18
  %20 = shl i32 1, %19
  ret i32 %20
}

declare dso_local i64 @spa_maxblocksize(%struct.TYPE_3__*) #1

declare dso_local i32 @ztest_random(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
