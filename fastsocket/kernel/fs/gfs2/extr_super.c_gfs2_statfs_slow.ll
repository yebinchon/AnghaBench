; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_statfs_change_host = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_holder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_ASYNC = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*)* @gfs2_statfs_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_statfs_slow(%struct.gfs2_sbd* %0, %struct.gfs2_statfs_change_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_statfs_change_host*, align 8
  %6 = alloca %struct.gfs2_rgrpd*, align 8
  %7 = alloca %struct.gfs2_holder*, align 8
  %8 = alloca %struct.gfs2_holder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.gfs2_statfs_change_host* %1, %struct.gfs2_statfs_change_host** %5, align 8
  store i32 64, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %15 = call i32 @memset(%struct.gfs2_statfs_change_host* %14, i32 0, i32 4)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gfs2_holder* @kcalloc(i32 %16, i32 8, i32 %17)
  store %struct.gfs2_holder* %18, %struct.gfs2_holder** %7, align 8
  %19 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %20 = icmp ne %struct.gfs2_holder* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %113

24:                                               ; preds = %2
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %26 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_first(%struct.gfs2_sbd* %25)
  store %struct.gfs2_rgrpd* %26, %struct.gfs2_rgrpd** %6, align 8
  br label %27

27:                                               ; preds = %107, %24
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %100, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %28
  %33 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %33, i64 %35
  store %struct.gfs2_holder* %36, %struct.gfs2_holder** %8, align 8
  %37 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %38 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %32
  %42 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %43 = call i64 @gfs2_glock_poll(%struct.gfs2_holder* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %47 = call i32 @gfs2_glock_wait(%struct.gfs2_holder* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %52 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %12, align 4
  br label %68

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %59 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %64 = call i32 @statfs_slow_fill(i32 %62, %struct.gfs2_statfs_change_host* %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %57, %54
  %66 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %67 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %66)
  br label %68

68:                                               ; preds = %65, %50
  br label %69

69:                                               ; preds = %68, %41, %32
  %70 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %71 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %92

75:                                               ; preds = %69
  %76 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %77 = icmp ne %struct.gfs2_rgrpd* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %83 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @LM_ST_SHARED, align 4
  %86 = load i32, i32* @GL_ASYNC, align 4
  %87 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %88 = call i32 @gfs2_glock_nq_init(i32 %84, i32 %85, i32 %86, %struct.gfs2_holder* %87)
  store i32 %88, i32* %12, align 4
  %89 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %90 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd* %89)
  store %struct.gfs2_rgrpd* %90, %struct.gfs2_rgrpd** %6, align 8
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %81, %78, %75
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* @current, align 4
  %94 = call i64 @signal_pending(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @ERESTARTSYS, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %28

103:                                              ; preds = %28
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %109

107:                                              ; preds = %103
  %108 = call i32 (...) @yield()
  br label %27

109:                                              ; preds = %106
  %110 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %111 = call i32 @kfree(%struct.gfs2_holder* %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %21
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @memset(%struct.gfs2_statfs_change_host*, i32, i32) #1

declare dso_local %struct.gfs2_holder* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_first(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_glock_poll(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_wait(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @statfs_slow_fill(i32, %struct.gfs2_statfs_change_host*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @kfree(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
