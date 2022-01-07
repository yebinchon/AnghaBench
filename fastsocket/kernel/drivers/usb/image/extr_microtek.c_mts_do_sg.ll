; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_do_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_do_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Processing fragment %d of %d\0A\00", align 1
@context = common dso_local global %struct.TYPE_5__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mts_do_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mts_do_sg(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @MTS_INT_INIT()
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @scsi_sg_count(%struct.TYPE_4__* %14)
  %16 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @DID_ABORT, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @DID_ERROR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = shl i32 %30, 16
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = call i32 @mts_transfer_cleanup(%struct.urb* %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call %struct.scatterlist* @scsi_sglist(%struct.TYPE_4__* %41)
  store %struct.scatterlist* %42, %struct.scatterlist** %3, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i64 %54
  %56 = call i32 @sg_virt(%struct.scatterlist* %55)
  %57 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i64 %60
  %62 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @context, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @scsi_sg_count(%struct.TYPE_4__* %70)
  %72 = sext i32 %71 to i64
  %73 = icmp eq i64 %67, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, void (%struct.urb*)* @mts_data_done, void (%struct.urb*)* @mts_do_sg
  %76 = call i32 @mts_int_submit_urb(%struct.urb* %47, i32 %50, i32 %56, i32 %63, void (%struct.urb*)* %75)
  ret void
}

declare dso_local i32 @MTS_INT_INIT(...) #1

declare dso_local i32 @MTS_DEBUG(i8*, i64, i32) #1

declare dso_local i32 @scsi_sg_count(%struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mts_transfer_cleanup(%struct.urb*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.TYPE_4__*) #1

declare dso_local i32 @mts_int_submit_urb(%struct.urb*, i32, i32, i32, void (%struct.urb*)*) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local void @mts_data_done(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
