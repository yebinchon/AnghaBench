; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_try_to_join_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_try_to_join_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32, i32 }
%struct.domain_join_ctxt = type { i32, i32 }

@JOIN_DISALLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@JOIN_OK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Yay, done querying nodes!\0A\00", align 1
@dlm_domain_lock = common dso_local global i32 0, align 4
@DLM_CTXT_JOINED = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*)* @dlm_try_to_join_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_try_to_join_domain(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_join_ctxt*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @JOIN_DISALLOW, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = call i32 @mlog_entry(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.dlm_ctxt* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.domain_join_ctxt* @kzalloc(i32 8, i32 %11)
  store %struct.domain_join_ctxt* %12, %struct.domain_join_ctxt** %6, align 8
  %13 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %14 = icmp ne %struct.domain_join_ctxt* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  br label %125

20:                                               ; preds = %1
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @o2hb_fill_node_map(i32 %23, i32 4)
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %29 = getelementptr inbounds %struct.domain_join_ctxt, %struct.domain_join_ctxt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %32 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %30, i32 %33, i32 4)
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__dlm_set_joining_node(%struct.dlm_ctxt* %35, i32 %38)
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %41 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  store i32 -1, i32* %5, align 4
  br label %43

43:                                               ; preds = %88, %59, %20
  %44 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %45 = getelementptr inbounds %struct.domain_join_ctxt, %struct.domain_join_ctxt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @O2NM_MAX_NODES, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @find_next_bit(i32 %46, i32 %47, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @O2NM_MAX_NODES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %56 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %43

60:                                               ; preds = %53
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dlm_request_join(%struct.dlm_ctxt* %61, i32 %62, i32* %7)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %125

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @JOIN_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %76 = getelementptr inbounds %struct.domain_join_ctxt, %struct.domain_join_ctxt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @set_bit(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %69
  %80 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %81 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @dlm_should_restart_join(%struct.dlm_ctxt* %80, %struct.domain_join_ctxt* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %125

88:                                               ; preds = %79
  br label %43

89:                                               ; preds = %43
  %90 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %92 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %91, i32 0, i32 1
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %95 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %98 = getelementptr inbounds %struct.domain_join_ctxt, %struct.domain_join_ctxt* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i32 %96, i32 %99, i32 4)
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %105 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @set_bit(i32 %103, i32 %106)
  %108 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %109 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %112 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %113 = getelementptr inbounds %struct.domain_join_ctxt, %struct.domain_join_ctxt* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dlm_send_join_asserts(%struct.dlm_ctxt* %111, i32 %114)
  %116 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %117 = load i32, i32* @DLM_CTXT_JOINED, align 4
  %118 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %119 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %121 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  br label %125

125:                                              ; preds = %89, %85, %66, %15
  %126 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %127 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %126, i32 0, i32 1
  %128 = call i32 @spin_lock(i32* %127)
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %130 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %131 = call i32 @__dlm_set_joining_node(%struct.dlm_ctxt* %129, i32 %130)
  %132 = load i32, i32* %3, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %125
  %135 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %136 = call i32 @__dlm_print_nodes(%struct.dlm_ctxt* %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %139 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %138, i32 0, i32 1
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %142 = icmp ne %struct.domain_join_ctxt* %141, null
  br i1 %142, label %143, label %161

143:                                              ; preds = %137
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %148 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %149 = getelementptr inbounds %struct.domain_join_ctxt, %struct.domain_join_ctxt* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dlm_send_join_cancels(%struct.dlm_ctxt* %147, i32 %150, i32 4)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %157

157:                                              ; preds = %154, %146
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.domain_join_ctxt*, %struct.domain_join_ctxt** %6, align 8
  %160 = call i32 @kfree(%struct.domain_join_ctxt* %159)
  br label %161

161:                                              ; preds = %158, %137
  %162 = load i32, i32* %3, align 4
  %163 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @mlog_entry(i8*, %struct.dlm_ctxt*) #1

declare dso_local %struct.domain_join_ctxt* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @o2hb_fill_node_map(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__dlm_set_joining_node(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @dlm_request_join(%struct.dlm_ctxt*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @dlm_should_restart_join(%struct.dlm_ctxt*, %struct.domain_join_ctxt*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @dlm_send_join_asserts(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @__dlm_print_nodes(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_send_join_cancels(%struct.dlm_ctxt*, i32, i32) #1

declare dso_local i32 @kfree(%struct.domain_join_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
