; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_ls_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_ls_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_recover = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"recover %llx\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"recover_members failed %d\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"recover_directory failed %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"recover_directory_wait failed %d\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"recover_masters failed %d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"recover_locks failed %d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"recover_locks_wait failed %d\00", align 1
@DLM_RS_LOCKS = common dso_local global i32 0, align 4
@DLM_RS_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"recover_done_wait failed %d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"enable_locking failed %d\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"process_requestqueue failed %d\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"recover_waiters_post failed %d\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"recover %llx done: %u ms\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"recover %llx error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_recover*)* @ls_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_recover(%struct.dlm_ls* %0, %struct.dlm_recover* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_recover*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_recover* %1, %struct.dlm_recover** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %10 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %11 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = call i32 (...) @dlm_astd_suspend()
  %18 = call i32 (...) @dlm_astd_resume()
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %20 = call i32 @dlm_clear_toss_list(%struct.dlm_ls* %19)
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %22 = call i32 @dlm_create_root_list(%struct.dlm_ls* %21)
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %24 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %25 = call i32 @dlm_recover_members(%struct.dlm_ls* %23, %struct.dlm_recover* %24, i32* %8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %188

33:                                               ; preds = %2
  %34 = load i64, i64* @jiffies, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %36 = call i32 @dlm_recover_directory(%struct.dlm_ls* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %188

44:                                               ; preds = %33
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %46 = call i32 @dlm_recover_directory_wait(%struct.dlm_ls* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  br label %188

54:                                               ; preds = %44
  %55 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %56 = call i32 @dlm_recover_waiters_pre(%struct.dlm_ls* %55)
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %58 = call i32 @dlm_recovery_stopped(%struct.dlm_ls* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %188

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %67 = call i64 @dlm_no_directory(%struct.dlm_ls* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %65, %62
  %70 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %71 = call i32 @dlm_recover_purge(%struct.dlm_ls* %70)
  %72 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %73 = call i32 @dlm_recover_masters(%struct.dlm_ls* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  br label %188

81:                                               ; preds = %69
  %82 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %83 = call i32 @dlm_recover_locks(%struct.dlm_ls* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  br label %188

91:                                               ; preds = %81
  %92 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %93 = call i32 @dlm_recover_locks_wait(%struct.dlm_ls* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %99)
  br label %188

101:                                              ; preds = %91
  %102 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %103 = call i32 @dlm_recover_rsbs(%struct.dlm_ls* %102)
  br label %118

104:                                              ; preds = %65
  %105 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %106 = load i32, i32* @DLM_RS_LOCKS, align 4
  %107 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %105, i32 %106)
  %108 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %109 = call i32 @dlm_recover_locks_wait(%struct.dlm_ls* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %115)
  br label %188

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %120 = call i32 @dlm_release_root_list(%struct.dlm_ls* %119)
  %121 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %122 = call i32 @dlm_purge_requestqueue(%struct.dlm_ls* %121)
  %123 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %124 = load i32, i32* @DLM_RS_DONE, align 4
  %125 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %123, i32 %124)
  %126 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %127 = call i32 @dlm_recover_done_wait(%struct.dlm_ls* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  %131 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %133)
  br label %188

135:                                              ; preds = %118
  %136 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %137 = call i32 @dlm_clear_members_gone(%struct.dlm_ls* %136)
  %138 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %139 = call i32 @dlm_adjust_timeouts(%struct.dlm_ls* %138)
  %140 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %141 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %142 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @enable_locking(%struct.dlm_ls* %140, i64 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %135
  %148 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %150)
  br label %188

152:                                              ; preds = %135
  %153 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %154 = call i32 @dlm_process_requestqueue(%struct.dlm_ls* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %160)
  br label %188

162:                                              ; preds = %152
  %163 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %164 = call i32 @dlm_recover_waiters_post(%struct.dlm_ls* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %170)
  br label %188

172:                                              ; preds = %162
  %173 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %174 = call i32 @dlm_recover_grant(%struct.dlm_ls* %173)
  %175 = call i32 (...) @dlm_astd_wake()
  %176 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %177 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %178 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @jiffies, align 8
  %181 = load i64, i64* %6, align 8
  %182 = sub i64 %180, %181
  %183 = call i32 @jiffies_to_msecs(i64 %182)
  %184 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %179, i32 %183)
  %185 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %186 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  store i32 0, i32* %3, align 4
  br label %201

188:                                              ; preds = %167, %157, %147, %130, %112, %96, %86, %76, %61, %49, %39, %28
  %189 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %190 = call i32 @dlm_release_root_list(%struct.dlm_ls* %189)
  %191 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %192 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %193 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_debug(%struct.dlm_ls* %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %194, i32 %195)
  %197 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %198 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %197, i32 0, i32 0
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %188, %172
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlm_astd_suspend(...) #1

declare dso_local i32 @dlm_astd_resume(...) #1

declare dso_local i32 @dlm_clear_toss_list(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_create_root_list(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_members(%struct.dlm_ls*, %struct.dlm_recover*, i32*) #1

declare dso_local i32 @dlm_recover_directory(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_directory_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_waiters_pre(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i64 @dlm_no_directory(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_purge(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_masters(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_locks(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_locks_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_rsbs(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_set_recover_status(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_release_root_list(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_purge_requestqueue(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_done_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_clear_members_gone(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_adjust_timeouts(%struct.dlm_ls*) #1

declare dso_local i32 @enable_locking(%struct.dlm_ls*, i64) #1

declare dso_local i32 @dlm_process_requestqueue(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_waiters_post(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_grant(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_astd_wake(...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
