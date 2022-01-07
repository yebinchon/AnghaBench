; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwb-debug.c_uwb_dbg_add_rc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwb-debug.c_uwb_dbg_add_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i8*, i32, i32, i8*, i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.uwb_rc* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@uwb_dbg_channel_changed = common dso_local global i32 0, align 4
@uwb_dbg_new_rsv = common dso_local global i32 0, align 4
@root_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@command_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"reservations\00", align 1
@reservations_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"drp_avail\00", align 1
@drp_avail_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_dbg_add_rc(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.TYPE_7__* @kzalloc(i32 4, i32 %3)
  %5 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %6 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %5, i32 0, i32 0
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %8 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %111

12:                                               ; preds = %1
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 8
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 6
  %27 = call i32 @uwb_pal_init(%struct.TYPE_6__* %26)
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %29 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %30 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store %struct.uwb_rc* %28, %struct.uwb_rc** %33, align 8
  %34 = load i32, i32* @uwb_dbg_channel_changed, align 4
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* @uwb_dbg_new_rsv, align 4
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %42 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  %46 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %47 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = call i32 @uwb_pal_register(%struct.TYPE_6__* %49)
  %51 = load i64, i64* @root_dir, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %111

53:                                               ; preds = %12
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %55 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @dev_name(i32* %56)
  %58 = load i64, i64* @root_dir, align 8
  %59 = call i32 @debugfs_create_dir(i32 %57, i64 %58)
  %60 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %61 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %65 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %70 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 128, i32 %68, %struct.uwb_rc* %69, i32* @command_fops)
  %71 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %72 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  store i8* %70, i8** %74, align 8
  %75 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %76 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %81 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %79, %struct.uwb_rc* %80, i32* @reservations_fops)
  %82 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %83 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store i8* %81, i8** %85, align 8
  %86 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %87 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %92 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 420, i32 %90, i32* %94)
  %96 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %97 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  store i32 %95, i32* %99, align 4
  %100 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %101 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %106 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %104, %struct.uwb_rc* %105, i32* @drp_avail_fops)
  %107 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %108 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %11, %53, %12
  ret void
}

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uwb_pal_init(%struct.TYPE_6__*) #1

declare dso_local i32 @uwb_pal_register(%struct.TYPE_6__*) #1

declare dso_local i32 @debugfs_create_dir(i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.uwb_rc*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
