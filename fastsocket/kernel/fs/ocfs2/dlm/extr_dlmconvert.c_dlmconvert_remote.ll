; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmconvert.c_dlmconvert_remote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmconvert.c_dlmconvert_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, i32 }
%struct.dlm_lock = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"type=%d, convert_type=%d, busy=%d\0A\00", align 1
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_LOCK_RES_RECOVERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"bailing out early since res is RECOVERING on secondary queue\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@LKM_IVMODE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"converting a remote lock that is already converting! (cookie=%u:%llu, conv=%d)\0A\00", align 1
@DLM_DENIED = common dso_local global i32 0, align 4
@LKM_VALBLK = common dso_local global i32 0, align 4
@LKM_EXMODE = common dso_local global i64 0, align 8
@LKM_PUT_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_PUT_LVB = common dso_local global i32 0, align 4
@LKM_NLMODE = common dso_local global i32 0, align 4
@LKM_GET_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_NOTQUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlmconvert_remote(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %13 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %17 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %24 = and i32 %22, %23
  %25 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %19, i32 %24)
  %26 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %27 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DLM_LOCK_RES_RECOVERING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %37, i32* %11, align 4
  br label %169

38:                                               ; preds = %5
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %40 = call i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource* %39)
  %41 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %42 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LKM_IVMODE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %49 = call i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource* %48)
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be64_to_cpu(i32 %54)
  %56 = call i64 @dlm_get_lock_cookie_node(i32 %55)
  %57 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %58 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be64_to_cpu(i32 %60)
  %62 = call i32 @dlm_get_lock_cookie_seq(i32 %61)
  %63 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %64 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @mlog(i32 %50, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %56, i32 %62, i32 %66)
  %68 = load i32, i32* @DLM_DENIED, align 4
  store i32 %68, i32* %11, align 4
  br label %169

69:                                               ; preds = %38
  %70 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %71 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %72 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %76 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %75, i32 0, i32 3
  %77 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %78 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %77, i32 0, i32 3
  %79 = call i32 @list_move_tail(i32* %76, i32* %78)
  %80 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %81 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %84 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @LKM_VALBLK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %133

90:                                               ; preds = %69
  %91 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %92 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LKM_EXMODE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* @LKM_PUT_LVB, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @DLM_LKSB_PUT_LVB, align 4
  %102 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %103 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  br label %132

108:                                              ; preds = %90
  %109 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %110 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LKM_NLMODE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i32, i32* @LKM_VALBLK, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %131

120:                                              ; preds = %108
  %121 = load i32, i32* @LKM_GET_LVB, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %125 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %126 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %120, %115
  br label %132

132:                                              ; preds = %131, %97
  br label %133

133:                                              ; preds = %132, %69
  %134 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %135 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %134, i32 0, i32 2
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %138 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %139 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @dlm_send_remote_convert_request(%struct.dlm_ctxt* %137, %struct.dlm_lock_resource* %138, %struct.dlm_lock* %139, i32 %140, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %144 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %143, i32 0, i32 2
  %145 = call i32 @spin_lock(i32* %144)
  %146 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %149 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %153 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @DLM_NORMAL, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %133
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @DLM_NOTQUEUED, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @dlm_error(i32 %162)
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %166 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %167 = call i32 @dlm_revert_pending_convert(%struct.dlm_lock_resource* %165, %struct.dlm_lock* %166)
  br label %168

168:                                              ; preds = %164, %133
  br label %169

169:                                              ; preds = %168, %47, %35
  %170 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %171 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %170, i32 0, i32 2
  %172 = call i32 @spin_unlock(i32* %171)
  %173 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %174 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %173, i32 0, i32 1
  %175 = call i32 @wake_up(i32* %174)
  %176 = load i32, i32* %11, align 4
  ret i32 %176
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource*) #1

declare dso_local i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i64 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_send_remote_convert_request(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @dlm_revert_pending_convert(%struct.dlm_lock_resource*, %struct.dlm_lock*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
