; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c___dlm_hb_node_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c___dlm_hb_node_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: recovery master %d just died\0A\00", align 1
@DLM_RECO_STATE_FINALIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"%s: dead master %d had reached finalize1 state, clearing\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Clearing join state for node %u\0A\00", align 1
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"for domain %s, node %d is already dead. another node likely did recovery already.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"node %u already removed from domain!\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"node %u being removed from domain map!\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"domain %s, node %u already added to recovery map!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, i32)* @__dlm_hb_node_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_hb_node_down(%struct.dlm_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 7
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %21 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DLM_RECO_STATE_FINALIZE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %14
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @DLM_RECO_STATE_FINALIZE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %36 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %41 = call i32 @__dlm_reset_recovery(%struct.dlm_ctxt* %40)
  br label %42

42:                                               ; preds = %27, %14
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %45 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %53 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %54 = call i32 @__dlm_set_joining_node(%struct.dlm_ctxt* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %58 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @test_bit(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %64 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  br label %126

68:                                               ; preds = %55
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %71 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @test_bit(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %126

78:                                               ; preds = %68
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %81 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clear_bit(i32 %79, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %86 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @test_bit(i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %78
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @dlm_do_local_recovery_cleanup(%struct.dlm_ctxt* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %78
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dlm_hb_event_notify_attached(%struct.dlm_ctxt* %95, i32 %96, i32 0)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @clear_bit(i32 %100, i32 %103)
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %106 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %105, i32 0, i32 3
  %107 = call i32 @wake_up(i32* %106)
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %110 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @test_bit(i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %94
  %115 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %116 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %117, i32 %118)
  br label %126

120:                                              ; preds = %94
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %123 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @set_bit(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %62, %75, %120, %114
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @__dlm_reset_recovery(%struct.dlm_ctxt*) #1

declare dso_local i32 @__dlm_set_joining_node(%struct.dlm_ctxt*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @dlm_do_local_recovery_cleanup(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @dlm_hb_event_notify_attached(%struct.dlm_ctxt*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
