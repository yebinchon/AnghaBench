; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpIsDfsChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpIsDfsChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@ZM_REG_FLAG_CHANNEL_DFS = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_REG_FLAG_CHANNEL_DFS_CLEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfHpIsDfsChannel(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @ZM_REG_FLAG_CHANNEL_DFS, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = call i32 (...) @zmw_declare_for_critical_section()
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @zmw_enter_critical_section(i32* %11)
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  br label %44

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %13

44:                                               ; preds = %31, %13
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @zmw_leave_critical_section(i32* %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @ZM_REG_FLAG_CHANNEL_DFS, align 8
  %49 = load i64, i64* @ZM_REG_FLAG_CHANNEL_DFS_CLEAR, align 8
  %50 = or i64 %48, %49
  %51 = and i64 %47, %50
  ret i64 %51
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
