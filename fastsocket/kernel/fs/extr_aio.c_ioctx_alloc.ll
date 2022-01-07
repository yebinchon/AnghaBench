; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_ioctx_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_ioctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32, i32 }
%struct.kioctx = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mm_struct* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ENOMEM: nr_events too high\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@aio_max_nr = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@kioctx_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@aio_kick_handler = common dso_local global i32 0, align 4
@aio_nr_lock = common dso_local global i32 0, align 4
@aio_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"aio: allocated ioctx %p[%ld]: mm=%p mask=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"aio: error allocating ioctx %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kioctx* (i32)* @ioctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kioctx* @ioctx_alloc(i32 %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.kioctx*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp ugt i64 %8, 67108864
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ugt i64 %12, 67108864
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %1
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.kioctx* @ERR_PTR(i32 %17)
  store %struct.kioctx* %18, %struct.kioctx** %2, align 8
  br label %166

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @aio_max_nr, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.kioctx* @ERR_PTR(i32 %26)
  store %struct.kioctx* %27, %struct.kioctx** %2, align 8
  br label %166

28:                                               ; preds = %19
  %29 = load i32, i32* @kioctx_cachep, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.kioctx* @kmem_cache_zalloc(i32 %29, i32 %30)
  store %struct.kioctx* %31, %struct.kioctx** %5, align 8
  %32 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %33 = icmp ne %struct.kioctx* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.kioctx* @ERR_PTR(i32 %36)
  store %struct.kioctx* %37, %struct.kioctx** %2, align 8
  br label %166

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %41 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.mm_struct*, %struct.mm_struct** %43, align 8
  %45 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %46 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %45, i32 0, i32 10
  store %struct.mm_struct* %44, %struct.mm_struct** %46, align 8
  store %struct.mm_struct* %44, %struct.mm_struct** %4, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 2
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %51 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %50, i32 0, i32 9
  %52 = call i32 @atomic_set(i32* %51, i32 2)
  %53 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %54 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %53, i32 0, i32 8
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %57 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %61 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %60, i32 0, i32 7
  %62 = call i32 @init_waitqueue_head(i32* %61)
  %63 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %64 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %63, i32 0, i32 6
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %67 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %66, i32 0, i32 5
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %70 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %69, i32 0, i32 4
  %71 = load i32, i32* @aio_kick_handler, align 4
  %72 = call i32 @INIT_DELAYED_WORK(i32* %70, i32 %71)
  %73 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %74 = call i64 @aio_setup_ring(%struct.kioctx* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %38
  br label %154

77:                                               ; preds = %38
  br label %78

78:                                               ; preds = %116, %77
  %79 = call i32 @spin_lock_bh(i32* @aio_nr_lock)
  %80 = load i32, i32* @aio_nr, align 4
  %81 = load i32, i32* %3, align 4
  %82 = add i32 %80, %81
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* @aio_max_nr, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @aio_nr, align 4
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %87, %88
  %90 = load i32, i32* @aio_nr, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %78
  %93 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %94 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %97 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @aio_nr, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* @aio_nr, align 4
  br label %101

101:                                              ; preds = %95, %92
  %102 = call i32 @spin_unlock_bh(i32* @aio_nr_lock)
  %103 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %104 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %101
  br label %117

111:                                              ; preds = %107
  %112 = call i32 (...) @synchronize_rcu()
  store i32 1, i32* %6, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %115 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %111
  br i1 true, label %78, label %117

117:                                              ; preds = %116, %110
  %118 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %119 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %148

123:                                              ; preds = %117
  %124 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %125 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %124, i32 0, i32 0
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %128 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %127, i32 0, i32 3
  %129 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %130 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %129, i32 0, i32 1
  %131 = call i32 @hlist_add_head_rcu(i32* %128, i32* %130)
  %132 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %133 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %136 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %137 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.mm_struct*, %struct.mm_struct** %140, align 8
  %142 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %143 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, %struct.kioctx*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.kioctx* %135, i32 %138, %struct.mm_struct* %141, i32 %145)
  %147 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  store %struct.kioctx* %147, %struct.kioctx** %2, align 8
  br label %166

148:                                              ; preds = %122
  %149 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %150 = call i32 @__put_ioctx(%struct.kioctx* %149)
  %151 = load i32, i32* @EAGAIN, align 4
  %152 = sub nsw i32 0, %151
  %153 = call %struct.kioctx* @ERR_PTR(i32 %152)
  store %struct.kioctx* %153, %struct.kioctx** %2, align 8
  br label %166

154:                                              ; preds = %76
  %155 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %156 = call i32 @mmdrop(%struct.mm_struct* %155)
  %157 = load i32, i32* @kioctx_cachep, align 4
  %158 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %159 = call i32 @kmem_cache_free(i32 %157, %struct.kioctx* %158)
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  %162 = call %struct.kioctx* @ERR_PTR(i32 %161)
  store %struct.kioctx* %162, %struct.kioctx** %5, align 8
  %163 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  %164 = call i32 (i8*, %struct.kioctx*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.kioctx* %163)
  %165 = load %struct.kioctx*, %struct.kioctx** %5, align 8
  store %struct.kioctx* %165, %struct.kioctx** %2, align 8
  br label %166

166:                                              ; preds = %154, %148, %123, %34, %24, %14
  %167 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  ret %struct.kioctx* %167
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.kioctx* @ERR_PTR(i32) #1

declare dso_local %struct.kioctx* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @aio_setup_ring(%struct.kioctx*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.kioctx*, ...) #1

declare dso_local i32 @__put_ioctx(%struct.kioctx*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kioctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
