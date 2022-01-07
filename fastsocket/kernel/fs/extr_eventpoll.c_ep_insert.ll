; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.epoll_event = type { i32 }
%struct.file = type { i32, i32, i32, %struct.TYPE_3__*, %struct.epitem* }
%struct.TYPE_3__ = type { i32 (%struct.file*, i32*)* }
%struct.epitem = type { i64, i32, i32, i32, i32, %struct.epoll_event, i32, %struct.eventpoll*, i32 }
%struct.ep_pqueue = type { i32, %struct.epitem* }

@max_user_watches = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@epi_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EP_UNACTIVE_PTR = common dso_local global i32 0, align 4
@FMODE_BIND_EPI = common dso_local global i32 0, align 4
@ep_ptable_queue_proc = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ep_insert(%struct.eventpoll* %0, %struct.epoll_event* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eventpoll*, align 8
  %8 = alloca %struct.epoll_event*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.epitem*, align 8
  %17 = alloca %struct.ep_pqueue, align 8
  store %struct.eventpoll* %0, %struct.eventpoll** %7, align 8
  store %struct.epoll_event* %1, %struct.epoll_event** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %19 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @atomic_read(i32* %21)
  %23 = load i64, i64* @max_user_watches, align 8
  %24 = icmp sge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %217

31:                                               ; preds = %5
  %32 = load i32, i32* @epi_cache, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.epitem* @kmem_cache_alloc(i32 %32, i32 %33)
  store %struct.epitem* %34, %struct.epitem** %16, align 8
  %35 = icmp ne %struct.epitem* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %217

39:                                               ; preds = %31
  %40 = load %struct.epitem*, %struct.epitem** %16, align 8
  %41 = getelementptr inbounds %struct.epitem, %struct.epitem* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.epitem*, %struct.epitem** %16, align 8
  %44 = getelementptr inbounds %struct.epitem, %struct.epitem* %43, i32 0, i32 3
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.epitem*, %struct.epitem** %16, align 8
  %47 = getelementptr inbounds %struct.epitem, %struct.epitem* %46, i32 0, i32 8
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %50 = load %struct.epitem*, %struct.epitem** %16, align 8
  %51 = getelementptr inbounds %struct.epitem, %struct.epitem* %50, i32 0, i32 7
  store %struct.eventpoll* %49, %struct.eventpoll** %51, align 8
  %52 = load %struct.epitem*, %struct.epitem** %16, align 8
  %53 = getelementptr inbounds %struct.epitem, %struct.epitem* %52, i32 0, i32 6
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ep_set_ffd(i32* %53, %struct.file* %54, i32 %55)
  %57 = load %struct.epitem*, %struct.epitem** %16, align 8
  %58 = getelementptr inbounds %struct.epitem, %struct.epitem* %57, i32 0, i32 5
  %59 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  %60 = bitcast %struct.epoll_event* %58 to i8*
  %61 = bitcast %struct.epoll_event* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.epitem*, %struct.epitem** %16, align 8
  %63 = getelementptr inbounds %struct.epitem, %struct.epitem* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @EP_UNACTIVE_PTR, align 4
  %65 = load %struct.epitem*, %struct.epitem** %16, align 8
  %66 = getelementptr inbounds %struct.epitem, %struct.epitem* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.file*, %struct.file** %9, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FMODE_BIND_EPI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %39
  %74 = load %struct.epitem*, %struct.epitem** %16, align 8
  %75 = load %struct.file*, %struct.file** %9, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 4
  store %struct.epitem* %74, %struct.epitem** %76, align 8
  br label %77

77:                                               ; preds = %73, %39
  %78 = load %struct.epitem*, %struct.epitem** %16, align 8
  %79 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %17, i32 0, i32 1
  store %struct.epitem* %78, %struct.epitem** %79, align 8
  %80 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %17, i32 0, i32 0
  %81 = load i32, i32* @ep_ptable_queue_proc, align 4
  %82 = call i32 @init_poll_funcptr(i32* %80, i32 %81)
  %83 = load %struct.file*, %struct.file** %9, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32 (%struct.file*, i32*)*, i32 (%struct.file*, i32*)** %86, align 8
  %88 = load %struct.file*, %struct.file** %9, align 8
  %89 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %17, i32 0, i32 0
  %90 = call i32 %87(%struct.file* %88, i32* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  %93 = load %struct.epitem*, %struct.epitem** %16, align 8
  %94 = getelementptr inbounds %struct.epitem, %struct.epitem* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  br label %192

98:                                               ; preds = %77
  %99 = load %struct.file*, %struct.file** %9, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 1
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load %struct.epitem*, %struct.epitem** %16, align 8
  %103 = getelementptr inbounds %struct.epitem, %struct.epitem* %102, i32 0, i32 3
  %104 = load %struct.file*, %struct.file** %9, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 2
  %106 = call i32 @list_add_tail_rcu(i32* %103, i32* %105)
  %107 = load %struct.file*, %struct.file** %9, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %111 = load %struct.epitem*, %struct.epitem** %16, align 8
  %112 = call i32 @ep_rbtree_insert(%struct.eventpoll* %110, %struct.epitem* %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %98
  %118 = call i64 (...) @reverse_path_check()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %177

121:                                              ; preds = %117, %98
  %122 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %123 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %122, i32 0, i32 0
  %124 = load i64, i64* %15, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8
  %128 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %121
  %133 = load %struct.epitem*, %struct.epitem** %16, align 8
  %134 = getelementptr inbounds %struct.epitem, %struct.epitem* %133, i32 0, i32 1
  %135 = call i64 @ep_is_linked(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %132
  %138 = load %struct.epitem*, %struct.epitem** %16, align 8
  %139 = getelementptr inbounds %struct.epitem, %struct.epitem* %138, i32 0, i32 1
  %140 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %141 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %140, i32 0, i32 5
  %142 = call i32 @list_add_tail(i32* %139, i32* %141)
  %143 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %144 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %143, i32 0, i32 4
  %145 = call i64 @waitqueue_active(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %149 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %148, i32 0, i32 4
  %150 = call i32 @wake_up_locked(i32* %149)
  br label %151

151:                                              ; preds = %147, %137
  %152 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %153 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %152, i32 0, i32 2
  %154 = call i64 @waitqueue_active(i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %156, %151
  br label %160

160:                                              ; preds = %159, %132, %121
  %161 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %162 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %161, i32 0, i32 0
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  %165 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %166 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %165, i32 0, i32 3
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = call i32 @atomic_inc(i32* %168)
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %174 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %173, i32 0, i32 2
  %175 = call i32 @ep_poll_safewake(i32* %174)
  br label %176

176:                                              ; preds = %172, %160
  store i32 0, i32* %6, align 4
  br label %217

177:                                              ; preds = %120
  %178 = load %struct.file*, %struct.file** %9, align 8
  %179 = getelementptr inbounds %struct.file, %struct.file* %178, i32 0, i32 1
  %180 = call i32 @spin_lock(i32* %179)
  %181 = load %struct.epitem*, %struct.epitem** %16, align 8
  %182 = getelementptr inbounds %struct.epitem, %struct.epitem* %181, i32 0, i32 3
  %183 = call i32 @list_del_rcu(i32* %182)
  %184 = load %struct.file*, %struct.file** %9, align 8
  %185 = getelementptr inbounds %struct.file, %struct.file* %184, i32 0, i32 1
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load %struct.epitem*, %struct.epitem** %16, align 8
  %188 = getelementptr inbounds %struct.epitem, %struct.epitem* %187, i32 0, i32 2
  %189 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %190 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %189, i32 0, i32 1
  %191 = call i32 @rb_erase(i32* %188, i32* %190)
  br label %192

192:                                              ; preds = %177, %97
  %193 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %194 = load %struct.epitem*, %struct.epitem** %16, align 8
  %195 = call i32 @ep_unregister_pollwait(%struct.eventpoll* %193, %struct.epitem* %194)
  %196 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %197 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %196, i32 0, i32 0
  %198 = load i64, i64* %15, align 8
  %199 = call i32 @spin_lock_irqsave(i32* %197, i64 %198)
  %200 = load %struct.epitem*, %struct.epitem** %16, align 8
  %201 = getelementptr inbounds %struct.epitem, %struct.epitem* %200, i32 0, i32 1
  %202 = call i64 @ep_is_linked(i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %192
  %205 = load %struct.epitem*, %struct.epitem** %16, align 8
  %206 = getelementptr inbounds %struct.epitem, %struct.epitem* %205, i32 0, i32 1
  %207 = call i32 @list_del_init(i32* %206)
  br label %208

208:                                              ; preds = %204, %192
  %209 = load %struct.eventpoll*, %struct.eventpoll** %7, align 8
  %210 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %209, i32 0, i32 0
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load i32, i32* @epi_cache, align 4
  %214 = load %struct.epitem*, %struct.epitem** %16, align 8
  %215 = call i32 @kmem_cache_free(i32 %213, %struct.epitem* %214)
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %208, %176, %36, %28
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.epitem* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ep_set_ffd(i32*, %struct.file*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ep_rbtree_insert(%struct.eventpoll*, %struct.epitem*) #1

declare dso_local i64 @reverse_path_check(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ep_is_linked(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_locked(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ep_poll_safewake(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @ep_unregister_pollwait(%struct.eventpoll*, %struct.epitem*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.epitem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
