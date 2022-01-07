; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_do_master_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_do_master_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_master_list_entry = type { i64, i32, i32, i32, i32, i32, i64, %struct.dlm_ctxt* }
%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_master_request = type { i64, i32, i32 }

@DLM_MLE_MIGRATION = common dso_local global i64 0, align 8
@DLM_MASTER_REQUEST_MSG = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TCP stack not ready!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bad args passed to o2net!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"out of memory while trying to send network message!  retrying\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unhandled error!\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"link to %d went down!\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"node %u is the master, response=YES\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s:%.*s: master node %u now knows I have a reference\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"node %u not master, response=NO\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"node %u not master, response=MAYBE\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"node %u hit an error, resending\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bad response! %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock_resource*, %struct.dlm_master_list_entry*, i32)* @dlm_do_master_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_do_master_request(%struct.dlm_lock_resource* %0, %struct.dlm_master_list_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.dlm_master_list_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_master_request, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %4, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %12, i32 0, i32 7
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %13, align 8
  store %struct.dlm_ctxt* %14, %struct.dlm_ctxt** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = call i32 @memset(%struct.dlm_master_request* %8, i32 0, i32 16)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DLM_MLE_MIGRATION, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %8, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.dlm_master_request, %struct.dlm_master_request* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcpy(i32 %32, i32 %35, i64 %37)
  br label %39

39:                                               ; preds = %156, %71, %3
  %40 = load i32, i32* @DLM_MASTER_REQUEST_MSG, align 4
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @o2net_send_message(i32 %40, i32 %43, %struct.dlm_master_request* %8, i32 16, i32 %44, i32* %10)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @ESRCH, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @ML_ERROR, align 4
  %55 = call i32 (i32, i8*, ...) @mlog(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 (...) @BUG()
  br label %88

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = call i32 (i32, i8*, ...) @mlog(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 (...) @BUG()
  br label %87

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @ML_ERROR, align 4
  %73 = call i32 (i32, i8*, ...) @mlog(i32 %72, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @msleep(i32 50)
  br label %39

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @dlm_is_host_down(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  %82 = load i32, i32* @ML_ERROR, align 4
  %83 = call i32 (i32, i8*, ...) @mlog(i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 (...) @BUG()
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i32, i32* @ML_ERROR, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32, i8*, ...) @mlog(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %159

92:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %93 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %94 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %93, i32 0, i32 2
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load i32, i32* %10, align 4
  switch i32 %96, label %145 [
    i32 128, label %97
    i32 129, label %121
    i32 130, label %129
    i32 131, label %142
  ]

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %100 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @set_bit(i32 %98, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %106 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %109 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %113 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %111, i32 %115, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %120 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %150

121:                                              ; preds = %92
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %126 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @set_bit(i32 %124, i32 %127)
  br label %150

129:                                              ; preds = %92
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %134 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @set_bit(i32 %132, i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %139 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @set_bit(i32 %137, i32 %140)
  br label %150

142:                                              ; preds = %92
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %150

145:                                              ; preds = %92
  %146 = load i32, i32* @ML_ERROR, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i32, i8*, ...) @mlog(i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %147)
  %149 = call i32 (...) @BUG()
  br label %150

150:                                              ; preds = %145, %142, %129, %121, %97
  %151 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %5, align 8
  %152 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %151, i32 0, i32 2
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = call i32 @msleep(i32 50)
  br label %39

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %88
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @memset(%struct.dlm_master_request*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_master_request*, i32, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
