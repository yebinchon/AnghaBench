; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfPutCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfPutCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@ZM_CMD_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CMD queue full!!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfPutCmd(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @zmw_get_wlan_dev(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.zsHpPriv*, %struct.zsHpPriv** %17, align 8
  store %struct.zsHpPriv* %18, %struct.zsHpPriv** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %21 = icmp sle i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @zm_assert(i32 %22)
  %24 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %25 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @ZM_CMD_QUEUE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %32 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %105

37:                                               ; preds = %5
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %40 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %43 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %38, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %50 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %53 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %48, i32* %57, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %60 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %63 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32* %58, i32** %67, align 8
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %92, %37
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 2
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %80 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %83 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %78, i32* %91, align 4
  br label %92

92:                                               ; preds = %73
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %68

95:                                               ; preds = %68
  %96 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %97 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* @ZM_CMD_QUEUE_SIZE, align 4
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %99, %101
  %103 = load %struct.zsHpPriv*, %struct.zsHpPriv** %13, align 8
  %104 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %95, %35
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
