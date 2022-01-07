; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_bg_wbufs_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_bg_wbufs_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"synchronize\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot sync write-buffer, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_bg_wbufs_sync(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_wbuf*, align 8
  %7 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EROFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %13
  %24 = call i32 @dbg_io(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %75, %23
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.ubifs_wbuf* %38, %struct.ubifs_wbuf** %6, align 8
  %39 = call i32 (...) @cond_resched()
  %40 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %40, i32 0, i32 0
  %42 = call i64 @mutex_is_locked(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %75

45:                                               ; preds = %31
  %46 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %47 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %46, i32 0, i32 0
  %48 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mutex_lock_nested(i32* %47, i32 %50)
  %52 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %45
  %57 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %58 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %75

60:                                               ; preds = %45
  %61 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %62 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %64 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @ubifs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %71, i32 %72)
  br label %79

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %56, %44
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %25

78:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %110

79:                                               ; preds = %68, %20
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store %struct.ubifs_wbuf* %93, %struct.ubifs_wbuf** %7, align 8
  %94 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %95 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %94, i32 0, i32 0
  %96 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %97 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mutex_lock_nested(i32* %95, i32 %98)
  %100 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %101 = call i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf* %100)
  %102 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %103 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %86
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %78, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dbg_io(i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_err(i8*, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
