; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_set_num_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_set_num_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, i32, i32, i32, i32 }
%struct.svc_pool = type { i32, i32, i64 }
%struct.svc_rqst = type { %struct.svc_rqst* }
%struct.task_struct = type { %struct.task_struct* }

@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_set_num_threads(%struct.svc_serv* %0, %struct.svc_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.svc_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.svc_pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %4, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %13 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %17 = icmp eq %struct.svc_pool* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %20 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %27 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %30 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %37 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %39

39:                                               ; preds = %25, %18
  br label %40

40:                                               ; preds = %103, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %108

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %47 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %48 = call %struct.svc_pool* @choose_pool(%struct.svc_serv* %46, %struct.svc_pool* %47, i32* %11)
  store %struct.svc_pool* %48, %struct.svc_pool** %9, align 8
  %49 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %50 = load %struct.svc_pool*, %struct.svc_pool** %9, align 8
  %51 = call %struct.task_struct* @svc_prepare_thread(%struct.svc_serv* %49, %struct.svc_pool* %50)
  %52 = bitcast %struct.task_struct* %51 to %struct.svc_rqst*
  store %struct.svc_rqst* %52, %struct.svc_rqst** %7, align 8
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %54 = bitcast %struct.svc_rqst* %53 to %struct.task_struct*
  %55 = call i64 @IS_ERR(%struct.task_struct* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %59 = bitcast %struct.svc_rqst* %58 to %struct.task_struct*
  %60 = call i32 @PTR_ERR(%struct.task_struct* %59)
  store i32 %60, i32* %10, align 4
  br label %108

61:                                               ; preds = %43
  %62 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %63 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__module_get(i32 %64)
  %66 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %67 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %70 = bitcast %struct.svc_rqst* %69 to %struct.task_struct*
  %71 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %72 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.task_struct* @kthread_create(i32 %68, %struct.task_struct* %70, i32 %73)
  store %struct.task_struct* %74, %struct.task_struct** %8, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %76 = call i64 @IS_ERR(%struct.task_struct* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %61
  %79 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %80 = call i32 @PTR_ERR(%struct.task_struct* %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %82 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @module_put(i32 %83)
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %86 = bitcast %struct.svc_rqst* %85 to %struct.task_struct*
  %87 = call i32 @svc_exit_thread(%struct.task_struct* %86)
  br label %108

88:                                               ; preds = %61
  %89 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %90 = bitcast %struct.task_struct* %89 to %struct.svc_rqst*
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %92 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %91, i32 0, i32 0
  store %struct.svc_rqst* %90, %struct.svc_rqst** %92, align 8
  %93 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %94 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %99 = load %struct.svc_pool*, %struct.svc_pool** %9, align 8
  %100 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @svc_pool_map_set_cpumask(%struct.task_struct* %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %88
  %104 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %105 = call i32 @svc_sock_update_bufs(%struct.svc_serv* %104)
  %106 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %107 = call i32 @wake_up_process(%struct.task_struct* %106)
  br label %40

108:                                              ; preds = %78, %57, %40
  br label %109

109:                                              ; preds = %119, %108
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %114 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %115 = call %struct.task_struct* @choose_victim(%struct.svc_serv* %113, %struct.svc_pool* %114, i32* %11)
  store %struct.task_struct* %115, %struct.task_struct** %8, align 8
  %116 = icmp ne %struct.task_struct* %115, null
  br label %117

117:                                              ; preds = %112, %109
  %118 = phi i1 [ false, %109 ], [ %116, %112 ]
  br i1 %118, label %119, label %125

119:                                              ; preds = %117
  %120 = load i32, i32* @SIGINT, align 4
  %121 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %122 = call i32 @send_sig(i32 %120, %struct.task_struct* %121, i32 1)
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %109

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.svc_pool* @choose_pool(%struct.svc_serv*, %struct.svc_pool*, i32*) #1

declare dso_local %struct.task_struct* @svc_prepare_thread(%struct.svc_serv*, %struct.svc_pool*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @svc_exit_thread(%struct.task_struct*) #1

declare dso_local i32 @svc_pool_map_set_cpumask(%struct.task_struct*, i32) #1

declare dso_local i32 @svc_sock_update_bufs(%struct.svc_serv*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @choose_victim(%struct.svc_serv*, %struct.svc_pool*, i32*) #1

declare dso_local i32 @send_sig(i32, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
