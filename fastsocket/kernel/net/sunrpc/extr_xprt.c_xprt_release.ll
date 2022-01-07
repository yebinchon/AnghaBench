; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.rpc_rqst = type { i32 (%struct.rpc_rqst*)*, i32*, i64, i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_6__*, i32, i64, i64, i32, i32, %struct.rpc_task* }
%struct.TYPE_6__ = type { i32 (i64)*, i32 (%struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.rpc_task*, i32)* }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"RPC: %5u release request %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_release(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 1
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %7, %struct.rpc_rqst** %4, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %9 = icmp eq %struct.rpc_rqst* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.rpc_xprt* @rcu_dereference(i32 %21)
  store %struct.rpc_xprt* %22, %struct.rpc_xprt** %3, align 8
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 6
  %25 = load %struct.rpc_task*, %struct.rpc_task** %24, align 8
  %26 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %27 = icmp eq %struct.rpc_task* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = call i32 @xprt_release_write(%struct.rpc_xprt* %29, %struct.rpc_task* %30)
  br label %32

32:                                               ; preds = %28, %15
  %33 = call i32 (...) @rcu_read_unlock()
  br label %34

34:                                               ; preds = %32, %10
  br label %189

35:                                               ; preds = %1
  %36 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %37 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %36, i32 0, i32 4
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %37, align 8
  store %struct.rpc_xprt* %38, %struct.rpc_xprt** %3, align 8
  %39 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %40 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.rpc_task*, i32)* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %47 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.rpc_task*, i32)*, i32 (%struct.rpc_task*, i32)** %49, align 8
  %51 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %52 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %53 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %50(%struct.rpc_task* %51, i32 %54)
  br label %70

56:                                               ; preds = %35
  %57 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %58 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %63 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %64 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rpc_count_iostats(%struct.rpc_task* %62, i32 %67)
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %45
  %71 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %72 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %71, i32 0, i32 1
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %75 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32 (%struct.rpc_xprt*, %struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)** %77, align 8
  %79 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %80 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %81 = call i32 %78(%struct.rpc_xprt* %79, %struct.rpc_task* %80)
  %82 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %83 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %85, align 8
  %87 = icmp ne i32 (%struct.rpc_task*)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %70
  %89 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %90 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %92, align 8
  %94 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %95 = call i32 %93(%struct.rpc_task* %94)
  br label %96

96:                                               ; preds = %88, %70
  %97 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %98 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %97, i32 0, i32 3
  %99 = call i64 @list_empty(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %103 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %102, i32 0, i32 3
  %104 = call i32 @list_del(i32* %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i64, i64* @jiffies, align 8
  %107 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %108 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %110 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %109, i32 0, i32 5
  %111 = call i64 @list_empty(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %105
  %114 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %115 = call i64 @xprt_has_timer(%struct.rpc_xprt* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %119 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %118, i32 0, i32 4
  %120 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %121 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %124 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = call i32 @mod_timer(i32* %119, i64 %126)
  br label %128

128:                                              ; preds = %117, %113, %105
  %129 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %130 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %129, i32 0, i32 1
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %133 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %128
  %137 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %138 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32 (i64)*, i32 (i64)** %140, align 8
  %142 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %143 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 %141(i64 %144)
  br label %146

146:                                              ; preds = %136, %128
  %147 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %148 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %153 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @put_rpccred(i32* %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %158 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %157, i32 0, i32 1
  store %struct.rpc_rqst* null, %struct.rpc_rqst** %158, align 8
  %159 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %160 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %159, i32 0, i32 0
  %161 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %160, align 8
  %162 = icmp ne i32 (%struct.rpc_rqst*)* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %165 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %164, i32 0, i32 0
  %166 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %165, align 8
  %167 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %168 = call i32 %166(%struct.rpc_rqst* %167)
  br label %169

169:                                              ; preds = %163, %156
  %170 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %171 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %174 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %172, %struct.rpc_rqst* %173)
  %175 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %176 = call i32 @bc_prealloc(%struct.rpc_rqst* %175)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i64 @likely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %169
  %183 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %184 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %185 = call i32 @xprt_free_slot(%struct.rpc_xprt* %183, %struct.rpc_rqst* %184)
  br label %189

186:                                              ; preds = %169
  %187 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %188 = call i32 @xprt_free_bc_request(%struct.rpc_rqst* %187)
  br label %189

189:                                              ; preds = %34, %186, %182
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_xprt* @rcu_dereference(i32) #1

declare dso_local i32 @xprt_release_write(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rpc_count_iostats(%struct.rpc_task*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @xprt_has_timer(%struct.rpc_xprt*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @put_rpccred(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_rqst*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bc_prealloc(%struct.rpc_rqst*) #1

declare dso_local i32 @xprt_free_slot(%struct.rpc_xprt*, %struct.rpc_rqst*) #1

declare dso_local i32 @xprt_free_bc_request(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
