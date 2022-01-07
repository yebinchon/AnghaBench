; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c_dlm_purge_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmthread.c_dlm_purge_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32, i32, %struct.dlm_lock_resource*, i32 }
%struct.dlm_lock_resource = type { i32, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dlm_lock_resource*, %struct.dlm_lock_resource* }

@.str = private unnamed_addr constant [40 x i8] c"%s:%.*s: tried to purge but not unused\0A\00", align 1
@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"%s:%.*s: Delay dropref as this lockres is being remastered\0A\00", align 1
@DLM_LOCK_RES_DROPPING_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"purging lockres %.*s, master = %d\0A\00", align 1
@DLM_LOCK_RES_SETREF_INPROG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"%s:%.*s: dlm_deref_lockres returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"removing lockres %.*s:%p from purgelist, master = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*)* @dlm_purge_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_purge_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %8, i32 0, i32 3
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %12 = call i32 @__dlm_lockres_unused(%struct.dlm_lock_resource* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 3
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %16, align 8
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %20, align 8
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %24, align 8
  %26 = call i32 (i32, i8*, %struct.dlm_lock_resource*, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.dlm_lock_resource* %17, %struct.dlm_lock_resource* %21, %struct.dlm_lock_resource* %25)
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %28 = call i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource* %27)
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %14, %2
  %34 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %35 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %42 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %41, i32 0, i32 3
  %43 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %42, align 8
  %44 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %45 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %46, align 8
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %50, align 8
  %52 = call i32 (i32, i8*, %struct.dlm_lock_resource*, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.dlm_lock_resource* %43, %struct.dlm_lock_resource* %47, %struct.dlm_lock_resource* %51)
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 4
  %55 = call i32 @list_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %40
  %58 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %59 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %58, i32 0, i32 4
  %60 = call i32 @list_del_init(i32* %59)
  %61 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %62 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %61, i32 0, i32 4
  %63 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %64 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %63, i32 0, i32 4
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %57, %40
  %67 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %68 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %205

70:                                               ; preds = %33
  %71 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %72 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %75 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @DLM_LOCK_RES_DROPPING_REF, align 4
  %83 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %84 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %70
  %88 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %89 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %88, i32 0, i32 3
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %92 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %93, align 8
  %95 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %96 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32, i8*, %struct.dlm_lock_resource*, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.dlm_lock_resource* %94, %struct.dlm_lock_resource* %98, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %147, label %103

103:                                              ; preds = %87
  %104 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %105 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %104, i32 0, i32 2
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %108 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %107, i32 0, i32 3
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %111 = load i32, i32* @DLM_LOCK_RES_SETREF_INPROG, align 4
  %112 = call i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource* %110, i32 %111)
  %113 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %114 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %113, i32 0, i32 3
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %117 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %118 = call i32 @dlm_drop_lockres_ref(%struct.dlm_ctxt* %116, %struct.dlm_lock_resource* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %103
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @dlm_is_host_down(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = call i32 (...) @BUG()
  br label %129

129:                                              ; preds = %127, %121
  br label %130

130:                                              ; preds = %129, %103
  %131 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %132 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %131, i32 0, i32 3
  %133 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %132, align 8
  %134 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %135 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %136, align 8
  %138 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %139 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (i32, i8*, %struct.dlm_lock_resource*, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.dlm_lock_resource* %133, %struct.dlm_lock_resource* %137, %struct.dlm_lock_resource* %141, i32 %142)
  %144 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %145 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %144, i32 0, i32 2
  %146 = call i32 @spin_lock(i32* %145)
  br label %147

147:                                              ; preds = %130, %87
  %148 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %149 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %148, i32 0, i32 3
  %150 = call i32 @spin_lock(i32* %149)
  %151 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %152 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %151, i32 0, i32 4
  %153 = call i32 @list_empty(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %179, label %155

155:                                              ; preds = %147
  %156 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %157 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %158, align 8
  %160 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %161 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %162, align 8
  %164 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i32, i8*, %struct.dlm_lock_resource*, %struct.dlm_lock_resource*, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.dlm_lock_resource* %159, %struct.dlm_lock_resource* %163, %struct.dlm_lock_resource* %164, i32 %165)
  %167 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %168 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %167, i32 0, i32 4
  %169 = call i32 @list_del_init(i32* %168)
  %170 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %171 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %170, i32 0, i32 3
  %172 = call i32 @spin_unlock(i32* %171)
  %173 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %174 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %173)
  %175 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %176 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 8
  br label %183

179:                                              ; preds = %147
  %180 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %181 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %180, i32 0, i32 3
  %182 = call i32 @spin_unlock(i32* %181)
  br label %183

183:                                              ; preds = %179, %155
  %184 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %185 = call i32 @__dlm_unhash_lockres(%struct.dlm_lock_resource* %184)
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %204, label %188

188:                                              ; preds = %183
  %189 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %190 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %189, i32 0, i32 3
  %191 = call i32 @spin_lock(i32* %190)
  %192 = load i32, i32* @DLM_LOCK_RES_DROPPING_REF, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %195 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %199 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %198, i32 0, i32 3
  %200 = call i32 @spin_unlock(i32* %199)
  %201 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %202 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %201, i32 0, i32 2
  %203 = call i32 @wake_up(i32* %202)
  br label %204

204:                                              ; preds = %188, %183
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %66
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_lockres_unused(%struct.dlm_lock_resource*) #1

declare dso_local i32 @mlog(i32, i8*, %struct.dlm_lock_resource*, %struct.dlm_lock_resource*, ...) #1

declare dso_local i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__dlm_wait_on_lockres_flags(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @dlm_drop_lockres_ref(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

declare dso_local i32 @__dlm_unhash_lockres(%struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
