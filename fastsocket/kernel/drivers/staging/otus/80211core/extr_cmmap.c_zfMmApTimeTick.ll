; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfMmApTimeTick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfMmApTimeTick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfMmApTimeTick(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @zmw_get_wlan_dev(i32* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ZM_MODE_AP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 127
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @zfApAgingSta(i32* %19)
  br label %40

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 31
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @zfQueueAge(i32* %25, i32 %29, i32 %32, i32 10000)
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %18
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfApAgingSta(i32*) #1

declare dso_local i32 @zfQueueAge(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
