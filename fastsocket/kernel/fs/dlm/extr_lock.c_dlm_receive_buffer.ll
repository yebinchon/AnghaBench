; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_receive_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_receive_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%union.dlm_packet = type { %struct.dlm_header }
%struct.dlm_header = type { i32, i32, i32 }
%struct.dlm_ls = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid h_cmd %d from %u\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid h_nodeid %d from %d lockspace %x\00", align 1
@dlm_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"invalid lockspace %x from %d cmd %d type %d\00", align 1
@DLM_RCOM_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_receive_buffer(%union.dlm_packet* %0, i32 %1) #0 {
  %3 = alloca %union.dlm_packet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_header*, align 8
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca i32, align 4
  store %union.dlm_packet* %0, %union.dlm_packet** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %9 = bitcast %union.dlm_packet* %8 to %struct.dlm_header*
  store %struct.dlm_header* %9, %struct.dlm_header** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %11 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 129, label %13
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %15 = bitcast %union.dlm_packet* %14 to %struct.TYPE_8__*
  %16 = call i32 @dlm_message_in(%struct.TYPE_8__* %15)
  %17 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %18 = bitcast %union.dlm_packet* %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %23 = bitcast %union.dlm_packet* %22 to %struct.TYPE_7__*
  %24 = call i32 @dlm_rcom_in(%struct.TYPE_7__* %23)
  %25 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %26 = bitcast %union.dlm_packet* %25 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, i32, i32, ...) @log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %111

35:                                               ; preds = %21, %13
  %36 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %37 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %43 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i32, ...) @log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32 %48)
  br label %111

50:                                               ; preds = %35
  %51 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.dlm_ls* @dlm_find_lockspace_global(i32 %53)
  store %struct.dlm_ls* %54, %struct.dlm_ls** %6, align 8
  %55 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %56 = icmp ne %struct.dlm_ls* %55, null
  br i1 %56, label %85, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dlm_config, i32 0, i32 0), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %62 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %66 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i8*, i32, i32, ...) @log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %57
  %71 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %72 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @DLM_RCOM_STATUS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %82 = bitcast %union.dlm_packet* %81 to %struct.TYPE_7__*
  %83 = call i32 @dlm_send_ls_not_ready(i32 %80, %struct.TYPE_7__* %82)
  br label %84

84:                                               ; preds = %79, %75, %70
  br label %111

85:                                               ; preds = %50
  %86 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %87 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %86, i32 0, i32 0
  %88 = call i32 @down_read(i32* %87)
  %89 = load %struct.dlm_header*, %struct.dlm_header** %5, align 8
  %90 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 129
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %95 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %96 = bitcast %union.dlm_packet* %95 to %struct.TYPE_8__*
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @dlm_receive_message(%struct.dlm_ls* %94, %struct.TYPE_8__* %96, i32 %97)
  br label %105

99:                                               ; preds = %85
  %100 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %101 = load %union.dlm_packet*, %union.dlm_packet** %3, align 8
  %102 = bitcast %union.dlm_packet* %101 to %struct.TYPE_7__*
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @dlm_receive_rcom(%struct.dlm_ls* %100, %struct.TYPE_7__* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %107 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %106, i32 0, i32 0
  %108 = call i32 @up_read(i32* %107)
  %109 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %110 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %109)
  br label %111

111:                                              ; preds = %105, %84, %41, %29
  ret void
}

declare dso_local i32 @dlm_message_in(%struct.TYPE_8__*) #1

declare dso_local i32 @dlm_rcom_in(%struct.TYPE_7__*) #1

declare dso_local i32 @log_print(i8*, i32, i32, ...) #1

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_global(i32) #1

declare dso_local i32 @dlm_send_ls_not_ready(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dlm_receive_message(%struct.dlm_ls*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @dlm_receive_rcom(%struct.dlm_ls*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
