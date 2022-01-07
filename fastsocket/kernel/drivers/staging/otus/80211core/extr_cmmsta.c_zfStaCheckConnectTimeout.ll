; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaCheckConnectTimeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaCheckConnectTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i32, i32, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_STA_CONN_STATE_AUTH_OPEN = common dso_local global i64 0, align 8
@ZM_STA_CONN_STATE_AUTH_SHARE_1 = common dso_local global i64 0, align 8
@ZM_STA_CONN_STATE_AUTH_SHARE_2 = common dso_local global i64 0, align 8
@ZM_STA_CONN_STATE_ASSOCIATE = common dso_local global i64 0, align 8
@ZM_INTERVAL_CONNECT_TIMEOUT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ZM_STA_CONN_STATE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"connect timeout, state = \00", align 1
@ZM_AUTH_MODE_AUTO = common dso_local global i64 0, align 8
@ZM_STATUS_MEDIA_DISCONNECT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaCheckConnectTimeout(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = call i32 (...) @zmw_declare_for_critical_section()
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %118

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @zfStaIsConnecting(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %118

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @zmw_enter_critical_section(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_OPEN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_SHARE_1, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_SHARE_2, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZM_STA_CONN_STATE_ASSOCIATE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %40, %33, %26, %17
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  %56 = load i64, i64* @ZM_INTERVAL_CONNECT_TIMEOUT, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %47
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load i64, i64* @FALSE, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %64
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i64, i64* @ZM_STA_CONN_STATE_NONE, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %89)
  br label %95

91:                                               ; preds = %47
  br label %92

92:                                               ; preds = %91, %40
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @zmw_leave_critical_section(i32* %93)
  br label %118

95:                                               ; preds = %81
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @zmw_leave_critical_section(i32* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ZM_AUTH_MODE_AUTO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %95
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_TIMEOUT, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @zfStaConnectFail(i32* %111, i32 %112, i32 %116, i32 2)
  br label %118

118:                                              ; preds = %110, %92, %16, %11
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfStaIsConnecting(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfStaConnectFail(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
