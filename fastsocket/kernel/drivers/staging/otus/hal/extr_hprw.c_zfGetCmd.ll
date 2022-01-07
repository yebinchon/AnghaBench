; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfGetCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfGetCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_CMD_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfGetCmd(i32* %0, i32* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @zmw_get_wlan_dev(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.zsHpPriv*, %struct.zsHpPriv** %17, align 8
  store %struct.zsHpPriv* %18, %struct.zsHpPriv** %13, align 8
  %19 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %20 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %23 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 3, i32* %6, align 4
  br label %96

27:                                               ; preds = %5
  %28 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %29 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %32 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %39 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %42 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %49 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %52 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %11, align 8
  store i32* %56, i32** %57, align 8
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %82, %27
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 2
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %66 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %69 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %64
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %58

85:                                               ; preds = %58
  %86 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %87 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  %90 = load i32, i32* @ZM_CMD_QUEUE_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = and i64 %89, %92
  %94 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %95 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %85, %26
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
