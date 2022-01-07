; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_snd_seq_set_port_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_snd_seq_set_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_seq_port_info = type { i32, i32, i32, i32, i32, i32, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_FLG_TIMESTAMP = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_FLG_TIME_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_set_port_info(%struct.snd_seq_client_port* %0, %struct.snd_seq_port_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client_port*, align 8
  %5 = alloca %struct.snd_seq_port_info*, align 8
  store %struct.snd_seq_client_port* %0, %struct.snd_seq_client_port** %4, align 8
  store %struct.snd_seq_port_info* %1, %struct.snd_seq_port_info** %5, align 8
  %6 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %7 = icmp ne %struct.snd_seq_client_port* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %10 = icmp ne %struct.snd_seq_port_info* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %86

20:                                               ; preds = %12
  %21 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %22 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %21, i32 0, i32 7
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %29 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %32 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %31, i32 0, i32 7
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @strlcpy(i32 %30, i64* %33, i32 4)
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %37 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %40 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %42 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %47 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %52 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %55 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %57 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %60 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %62 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SNDRV_SEQ_PORT_FLG_TIMESTAMP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %70 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %72 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SNDRV_SEQ_PORT_FLG_TIME_REAL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %80 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %82 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %85 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %35, %17
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strlcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
