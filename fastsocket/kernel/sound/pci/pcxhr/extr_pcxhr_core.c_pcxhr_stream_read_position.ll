; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_stream_read_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_stream_read_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i64 }
%struct.pcxhr_stream = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pcxhr_rmh = type { i64* }

@CMD_STREAM_SAMPLE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"stream %c%d : abs samples real(%ld) timer(%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, %struct.pcxhr_stream*)* @pcxhr_stream_read_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_stream_read_position(%struct.pcxhr_mgr* %0, %struct.pcxhr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.pcxhr_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcxhr_rmh, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store %struct.pcxhr_stream* %1, %struct.pcxhr_stream** %5, align 8
  %10 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %11 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %19 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  br label %24

24:                                               ; preds = %17, %16
  %25 = phi i32 [ 1, %16 ], [ %23, %17 ]
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @CMD_STREAM_SAMPLE_COUNT, align 4
  %27 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %7, i32 %26)
  %28 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %29 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %34 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %7, i32 %32, i32 %37, i32 0, i32 %38)
  %40 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %41 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %40, %struct.pcxhr_rmh* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %88

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 24
  store i32 %51, i32* %6, align 4
  %52 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %60 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 67, i32 80
  %67 = trunc i32 %66 to i8
  %68 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %69 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %76 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %5, align 8
  %79 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %83 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i32 @snd_printdd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8 signext %67, i32 %72, i64 %74, i64 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %45, %44
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @snd_printdd(i8*, i8 signext, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
