; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_transport_lookup_tmr_lun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_transport_lookup_tmr_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.se_lun*, %struct.se_dev_entry*, %struct.se_tmr_req*, %struct.se_session* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (...)* }
%struct.se_lun = type { %struct.TYPE_6__* }
%struct.se_dev_entry = type { i32, i32, %struct.se_lun* }
%struct.se_tmr_req = type { %struct.TYPE_6__*, i32, %struct.se_lun* }
%struct.se_session = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.se_dev_entry** }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"TARGET_CORE[%s]: Detected NON_EXISTENT_LUN Access for 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_lookup_tmr_lun(%struct.se_cmd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.se_dev_entry*, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.se_tmr_req*, align 8
  %10 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.se_lun* null, %struct.se_lun** %7, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 7
  %13 = load %struct.se_session*, %struct.se_session** %12, align 8
  store %struct.se_session* %13, %struct.se_session** %8, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 6
  %16 = load %struct.se_tmr_req*, %struct.se_tmr_req** %15, align 8
  store %struct.se_tmr_req* %16, %struct.se_tmr_req** %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %121

23:                                               ; preds = %2
  %24 = load %struct.se_session*, %struct.se_session** %8, align 8
  %25 = getelementptr inbounds %struct.se_session, %struct.se_session* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.se_session*, %struct.se_session** %8, align 8
  %31 = getelementptr inbounds %struct.se_session, %struct.se_session* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %34, i64 %35
  %37 = load %struct.se_dev_entry*, %struct.se_dev_entry** %36, align 8
  %38 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 5
  store %struct.se_dev_entry* %37, %struct.se_dev_entry** %39, align 8
  %40 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 5
  %42 = load %struct.se_dev_entry*, %struct.se_dev_entry** %41, align 8
  store %struct.se_dev_entry* %42, %struct.se_dev_entry** %6, align 8
  %43 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %44 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %23
  %50 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %51 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %50, i32 0, i32 2
  %52 = load %struct.se_lun*, %struct.se_lun** %51, align 8
  %53 = load %struct.se_tmr_req*, %struct.se_tmr_req** %9, align 8
  %54 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %53, i32 0, i32 2
  store %struct.se_lun* %52, %struct.se_lun** %54, align 8
  %55 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %56 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %55, i32 0, i32 2
  %57 = load %struct.se_lun*, %struct.se_lun** %56, align 8
  %58 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 4
  store %struct.se_lun* %57, %struct.se_lun** %59, align 8
  %60 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %61 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %60, i32 0, i32 2
  %62 = load %struct.se_lun*, %struct.se_lun** %61, align 8
  store %struct.se_lun* %62, %struct.se_lun** %7, align 8
  %63 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %64 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %49, %23
  %72 = load %struct.se_session*, %struct.se_session** %8, align 8
  %73 = getelementptr inbounds %struct.se_session, %struct.se_session* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %79 = icmp ne %struct.se_lun* %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %71
  %81 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %87)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %121

91:                                               ; preds = %71
  %92 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %93 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %95, i32 0, i32 1
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %96, align 8
  %97 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %98 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.se_tmr_req*, %struct.se_tmr_req** %9, align 8
  %101 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %100, i32 0, i32 0
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %101, align 8
  %102 = load %struct.se_tmr_req*, %struct.se_tmr_req** %9, align 8
  %103 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.se_tmr_req*, %struct.se_tmr_req** %9, align 8
  %109 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %108, i32 0, i32 1
  %110 = load %struct.se_tmr_req*, %struct.se_tmr_req** %9, align 8
  %111 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = call i32 @list_add_tail(i32* %109, i32* %113)
  %115 = load %struct.se_tmr_req*, %struct.se_tmr_req** %9, align 8
  %116 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %91, %80, %20
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
