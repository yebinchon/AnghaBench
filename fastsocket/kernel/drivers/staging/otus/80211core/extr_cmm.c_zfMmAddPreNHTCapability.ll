; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfMmAddPreNHTCapability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfMmAddPreNHTCapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ZM_WLAN_PREN2_EID_HTCAPABILITY = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_14__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfMmAddPreNHTCapability(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ZM_WLAN_PREN2_EID_HTCAPABILITY, align 4
  %15 = call i32 @zmw_buf_writeb(i32* %10, i32* %11, i32 %12, i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZM_MODE_AP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @zmw_buf_writeb(i32* %22, i32* %23, i32 %24, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %52, %21
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 26
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @zmw_buf_writeb(i32* %37, i32* %38, i32 %39, i32 %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %33

55:                                               ; preds = %33
  br label %91

56:                                               ; preds = %3
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @zmw_buf_writeb(i32* %57, i32* %58, i32 %59, i32 %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %87, %56
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 26
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @zmw_buf_writeb(i32* %72, i32* %73, i32 %74, i32 %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %68

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_buf_writeb(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
