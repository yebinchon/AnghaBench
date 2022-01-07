; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.poll_table_struct = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(file=0x%p, wait=0x%p)\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"returning 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @vwsnd_audio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vwsnd_audio_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FMODE_READ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.TYPE_4__* [ %21, %19 ], [ null, %22 ]
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %6, align 8
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FMODE_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi %struct.TYPE_4__* [ %33, %31 ], [ null, %34 ]
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %39 = call i32 @DBGEV(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.file* %37, %struct.poll_table_struct* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i1 [ true, %35 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.file*, %struct.file** %3, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %56 = call i32 @poll_wait(%struct.file* %52, i32* %54, %struct.poll_table_struct* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = call i64 @swb_inc_u(%struct.TYPE_4__* %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* @POLLIN, align 4
  %62 = load i32, i32* @POLLRDNORM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66, %45
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load %struct.file*, %struct.file** %3, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %75 = call i32 @poll_wait(%struct.file* %71, i32* %73, %struct.poll_table_struct* %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = call i64 @swb_inc_u(%struct.TYPE_4__* %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80, %70
  %85 = load i32, i32* @POLLOUT, align 4
  %86 = load i32, i32* @POLLWRNORM, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @DBGPV(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @DBGEV(i8*, %struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i64 @swb_inc_u(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @DBGPV(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
