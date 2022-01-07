; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlm_create_lock_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlm_create_lock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32 }
%struct.dlm_create_lock = type { i8*, i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { %struct.dlm_lockstatus* }
%struct.dlm_lockstatus = type { i32 }

@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_REJECTED = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Domain %s not fully joined, but node %u is sending a create_lock message for lock %.*s!\0A\00", align 1
@DLM_IVBUFLEN = common dso_local global i32 0, align 4
@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@DLM_SYSERR = common dso_local global i32 0, align 4
@LKM_GET_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"set DLM_LKSB_GET_LVB flag\0A\00", align 1
@DLM_IVLOCKID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"lockres recovering/migrating/in-progress\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_create_lock_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_create_lock*, align 8
  %12 = alloca %struct.dlm_lock_resource*, align 8
  %13 = alloca %struct.dlm_lock*, align 8
  %14 = alloca %struct.dlm_lockstatus*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %19, %struct.dlm_ctxt** %10, align 8
  %20 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %21 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.dlm_create_lock*
  store %struct.dlm_create_lock* %23, %struct.dlm_create_lock** %11, align 8
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %12, align 8
  store %struct.dlm_lock* null, %struct.dlm_lock** %13, align 8
  store %struct.dlm_lockstatus* null, %struct.dlm_lockstatus** %14, align 8
  %24 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %26 = icmp ne %struct.dlm_ctxt* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = call i32 (...) @mlog_entry_void()
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %32 = call i32 @dlm_grab(%struct.dlm_ctxt* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @DLM_REJECTED, align 4
  store i32 %35, i32* %5, align 4
  br label %162

36:                                               ; preds = %4
  %37 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %38 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %16, align 8
  %40 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %41 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* @DLM_REJECTED, align 4
  store i32 %43, i32* %15, align 4
  %44 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %45 = call i32 @dlm_domain_fully_joined(%struct.dlm_ctxt* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @ML_ERROR, align 4
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %50 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %53 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 (i32, i8*, ...) @mlog(i32 %48, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %55, i8* %56)
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @dlm_error(i32 %58)
  br label %141

60:                                               ; preds = %36
  %61 = load i32, i32* @DLM_IVBUFLEN, align 4
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @dlm_error(i32 %66)
  br label %141

68:                                               ; preds = %60
  %69 = load i32, i32* @DLM_SYSERR, align 4
  store i32 %69, i32* %15, align 4
  %70 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %71 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %74 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %77 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @be64_to_cpu(i32 %78)
  %80 = call %struct.dlm_lock* @dlm_new_lock(i32 %72, i32 %75, i32 %79, i32* null)
  store %struct.dlm_lock* %80, %struct.dlm_lock** %13, align 8
  %81 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %82 = icmp ne %struct.dlm_lock* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @dlm_error(i32 %84)
  br label %141

86:                                               ; preds = %68
  %87 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %88 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %87, i32 0, i32 0
  %89 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %88, align 8
  store %struct.dlm_lockstatus* %89, %struct.dlm_lockstatus** %14, align 8
  %90 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %91 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  %94 = load i32, i32* @LKM_GET_LVB, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %99 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %14, align 8
  %100 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %97, %86
  %105 = load i32, i32* @DLM_IVLOCKID, align 4
  store i32 %105, i32* %15, align 4
  %106 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt* %106, i8* %107, i32 %108)
  store %struct.dlm_lock_resource* %109, %struct.dlm_lock_resource** %12, align 8
  %110 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %111 = icmp ne %struct.dlm_lock_resource* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @dlm_error(i32 %113)
  br label %141

115:                                              ; preds = %104
  %116 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %117 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %116, i32 0, i32 0
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %120 = call i32 @__dlm_lockres_state_to_status(%struct.dlm_lock_resource* %119)
  store i32 %120, i32* %15, align 4
  %121 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %122 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @DLM_NORMAL, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %141

129:                                              ; preds = %115
  %130 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %131 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %132 = call i32 @dlm_lock_attach_lockres(%struct.dlm_lock* %130, %struct.dlm_lock_resource* %131)
  %133 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %134 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %135 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %136 = load %struct.dlm_create_lock*, %struct.dlm_create_lock** %11, align 8
  %137 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be32_to_cpu(i32 %138)
  %140 = call i32 @dlmlock_master(%struct.dlm_ctxt* %133, %struct.dlm_lock_resource* %134, %struct.dlm_lock* %135, i32 %139)
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %129, %127, %112, %83, %65, %47
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @DLM_NORMAL, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %147 = icmp ne %struct.dlm_lock* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.dlm_lock*, %struct.dlm_lock** %13, align 8
  %150 = call i32 @dlm_lock_put(%struct.dlm_lock* %149)
  br label %151

151:                                              ; preds = %148, %145
  br label %152

152:                                              ; preds = %151, %141
  %153 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %154 = icmp ne %struct.dlm_lock_resource* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %12, align 8
  %157 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %160 = call i32 @dlm_put(%struct.dlm_ctxt* %159)
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %158, %34
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_domain_fully_joined(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local %struct.dlm_lock* @dlm_new_lock(i32, i32, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_lockres_state_to_status(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lock_attach_lockres(%struct.dlm_lock*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlmlock_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
