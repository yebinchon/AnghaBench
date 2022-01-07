; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, %struct.dlm_protocol_version, i32, i32, i32 }
%struct.dlm_protocol_version = type { i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"domain name length too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"the local node has not been configured, or is not heartbeating\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"register called for domain \22%s\22\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@dlm_domain_lock = common dso_local global i32 0, align 4
@DLM_CTXT_JOINED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"This ctxt is not joined yet!\0A\00", align 1
@dlm_domain_events = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"Requested locking protocol version is not compatible with already registered domain \22%s\22\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dlm_domains = common dso_local global i32 0, align 4
@dlm_protocol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dlm_ctxt* @dlm_register_domain(i8* %0, i32 %1, %struct.dlm_protocol_version* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_protocol_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_ctxt*, align 8
  %9 = alloca %struct.dlm_ctxt*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dlm_protocol_version* %2, %struct.dlm_protocol_version** %6, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %8, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = load i64, i64* @O2NM_MAX_NAME_LEN, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @ENAMETOOLONG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ML_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @mlog(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %123

19:                                               ; preds = %3
  %20 = call i32 (...) @o2hb_check_local_node_heartbeating()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ML_ERROR, align 4
  %24 = call i32 (i32, i8*, ...) @mlog(i32 %23, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EPROTO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %123

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %88, %51, %27
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %8, align 8
  %31 = load i32, i32* @current, align 4
  %32 = call i64 @signal_pending(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @ERESTARTSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %123

39:                                               ; preds = %30
  %40 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %41 = load i8*, i8** %4, align 8
  %42 = call %struct.dlm_ctxt* @__dlm_lookup_domain(i8* %41)
  store %struct.dlm_ctxt* %42, %struct.dlm_ctxt** %8, align 8
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %44 = icmp ne %struct.dlm_ctxt* %43, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DLM_CTXT_JOINED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %53 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @dlm_domain_events, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @dlm_wait_on_domain_helper(i8* %55)
  %57 = call i32 @wait_event_interruptible(i32 %54, i32 %56)
  br label %30

58:                                               ; preds = %45
  %59 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %60 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %59, i32 0, i32 1
  %61 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %6, align 8
  %62 = call i64 @dlm_protocol_compare(%struct.dlm_protocol_version* %60, %struct.dlm_protocol_version* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @ML_ERROR, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i32, i8*, ...) @mlog(i32 %65, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @EPROTO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %123

70:                                               ; preds = %58
  %71 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %72 = call i32 @__dlm_get(%struct.dlm_ctxt* %71)
  %73 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %74 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  store i32 0, i32* %7, align 4
  br label %123

78:                                               ; preds = %39
  %79 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %80 = icmp ne %struct.dlm_ctxt* %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call %struct.dlm_ctxt* @dlm_alloc_ctxt(i8* %83, i32 %84)
  store %struct.dlm_ctxt* %85, %struct.dlm_ctxt** %9, align 8
  %86 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %87 = icmp ne %struct.dlm_ctxt* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %30

89:                                               ; preds = %81
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %123

94:                                               ; preds = %78
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  store %struct.dlm_ctxt* %95, %struct.dlm_ctxt** %8, align 8
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %9, align 8
  %96 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %97 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %96, i32 0, i32 3
  %98 = call i32 @list_add_tail(i32* %97, i32* @dlm_domains)
  %99 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  %100 = load i32, i32* @dlm_protocol, align 4
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %104 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %103, i32 0, i32 1
  %105 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %6, align 8
  %106 = bitcast %struct.dlm_protocol_version* %104 to i8*
  %107 = bitcast %struct.dlm_protocol_version* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %109 = call i32 @dlm_join_domain(%struct.dlm_ctxt* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %94
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @mlog_errno(i32 %113)
  %115 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %116 = call i32 @dlm_put(%struct.dlm_ctxt* %115)
  br label %123

117:                                              ; preds = %94
  %118 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %6, align 8
  %119 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %120 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %119, i32 0, i32 1
  %121 = bitcast %struct.dlm_protocol_version* %118 to i8*
  %122 = bitcast %struct.dlm_protocol_version* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 8 %122, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %117, %112, %89, %70, %64, %34, %22, %14
  %124 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %125 = icmp ne %struct.dlm_ctxt* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %9, align 8
  %128 = call i32 @dlm_free_ctxt_mem(%struct.dlm_ctxt* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = call %struct.dlm_ctxt* @ERR_PTR(i32 %133)
  store %struct.dlm_ctxt* %134, %struct.dlm_ctxt** %8, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  ret %struct.dlm_ctxt* %136
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @o2hb_check_local_node_heartbeating(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_ctxt* @__dlm_lookup_domain(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dlm_wait_on_domain_helper(i8*) #1

declare dso_local i64 @dlm_protocol_compare(%struct.dlm_protocol_version*, %struct.dlm_protocol_version*) #1

declare dso_local i32 @__dlm_get(%struct.dlm_ctxt*) #1

declare dso_local %struct.dlm_ctxt* @dlm_alloc_ctxt(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dlm_join_domain(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_free_ctxt_mem(%struct.dlm_ctxt*) #1

declare dso_local %struct.dlm_ctxt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
