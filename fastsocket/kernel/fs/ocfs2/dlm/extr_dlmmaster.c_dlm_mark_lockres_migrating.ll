; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_mark_lockres_migrating.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_mark_lockres_migrating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"dlm_mark_lockres_migrating: %.*s, from %u to %u\0A\00", align 1
@DLM_LOCK_RES_BLOCK_DIRTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"about to wait on migration_wq, dirty=%s\0A\00", align 1
@DLM_LOCK_RES_DIRTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"woken again: migrating? %s, dead? %s\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"all is well: migrating? %s, dead? %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"trying again...\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"aha. migration target %u just went down\0A\00", align 1
@EHOSTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*)* @dlm_mark_lockres_migrating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_mark_lockres_migrating(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i8* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %18, i8* %19)
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %21, i32 0, i32 2
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %31 = call i32 @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource* %30)
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 2
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %36 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %37 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %35, %struct.dlm_lock_resource* %36)
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 2
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DLM_LOCK_RES_BLOCK_DIRTY, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load i32, i32* @DLM_LOCK_RES_BLOCK_DIRTY, align 4
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %56 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %60 = call i32 @dlm_lockres_is_dirty(%struct.dlm_ctxt* %58, %struct.dlm_lock_resource* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @wait_event(i32 %57, i32 %63)
  %65 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %66 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %67 = call i32 @dlm_lockres_release_ast(%struct.dlm_ctxt* %65, %struct.dlm_lock_resource* %66)
  %68 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %69 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DLM_LOCK_RES_DIRTY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %131, %3
  %78 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %79 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %82 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @dlm_migration_can_proceed(%struct.dlm_ctxt* %81, %struct.dlm_lock_resource* %82, i8* %83)
  %85 = call i32 @msecs_to_jiffies(i32 1000)
  %86 = call i32 @wait_event_interruptible_timeout(i32 %80, i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %77
  %90 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %91 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %100 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @test_bit(i8* %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %106 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %97, i8* %105)
  br label %125

107:                                              ; preds = %77
  %108 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %109 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %118 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @test_bit(i8* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %124 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %115, i8* %123)
  br label %125

125:                                              ; preds = %107, %89
  %126 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %127 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @dlm_migration_can_proceed(%struct.dlm_ctxt* %126, %struct.dlm_lock_resource* %127, i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %77

133:                                              ; preds = %125
  %134 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %135 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %134, i32 0, i32 2
  %136 = call i32 @spin_lock(i32* %135)
  %137 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %138 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DLM_LOCK_RES_BLOCK_DIRTY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %147 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 @BUG_ON(i32 %153)
  %155 = load i32, i32* @DLM_LOCK_RES_BLOCK_DIRTY, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %158 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %162 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %161, i32 0, i32 2
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %165 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %164, i32 0, i32 0
  %166 = call i32 @spin_lock(i32* %165)
  %167 = load i8*, i8** %6, align 8
  %168 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %169 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @test_bit(i8* %167, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %133
  %174 = load i32, i32* @ML_ERROR, align 4
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 (i32, i8*, ...) @mlog(i32 %174, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %175)
  %177 = load i32, i32* @EHOSTDOWN, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %173, %133
  %180 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %181 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %180, i32 0, i32 0
  %182 = call i32 @spin_unlock(i32* %181)
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dlm_lockres_is_dirty(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_release_ast(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dlm_migration_can_proceed(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @test_bit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
