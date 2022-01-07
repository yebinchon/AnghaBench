; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_snd_seq_get_port_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_snd_seq_get_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client_port = type { i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_seq_port_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_FLG_TIMESTAMP = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_FLG_TIME_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_get_port_info(%struct.snd_seq_client_port* %0, %struct.snd_seq_port_info* %1) #0 {
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
  br label %94

20:                                               ; preds = %12
  %21 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %22 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlcpy(i32 %23, i32 %26, i32 4)
  %28 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %29 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %32 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %34 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %37 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %39 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %42 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %44 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %47 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %49 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %52 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %54 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %58 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %60 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %64 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %66 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %68 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %20
  %72 = load i32, i32* @SNDRV_SEQ_PORT_FLG_TIMESTAMP, align 4
  %73 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %74 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %78 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @SNDRV_SEQ_PORT_FLG_TIME_REAL, align 4
  %83 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %84 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %71
  %88 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %4, align 8
  %89 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %92 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %20
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
