; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_create_pid_namespace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_create_pid_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@pid_ns_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@proc_cleanup_work = common dso_local global i32 0, align 4
@BITS_PER_PAGE = common dso_local global i64 0, align 8
@PIDMAP_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pid_namespace* (%struct.pid_namespace*)* @create_pid_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pid_namespace* @create_pid_namespace(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pid_namespace* %0, %struct.pid_namespace** %3, align 8
  %8 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %9 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @pid_ns_cachep, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pid_namespace* @kmem_cache_zalloc(i32 %14, i32 %15)
  store %struct.pid_namespace* %16, %struct.pid_namespace** %4, align 8
  %17 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %18 = icmp eq %struct.pid_namespace* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %116

20:                                               ; preds = %1
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kzalloc(i32 %21, i32 %22)
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %25 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %30 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %112

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  %40 = call i32* @create_pid_cachep(i32 %39)
  %41 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %42 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %44 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %104

48:                                               ; preds = %37
  %49 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %50 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %49, i32 0, i32 5
  %51 = call i32 @proc_alloc_inum(i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %104

55:                                               ; preds = %48
  %56 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %57 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %56, i32 0, i32 4
  %58 = call i32 @kref_init(i32* %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %61 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %63 = call i32 @get_pid_ns(%struct.pid_namespace* %62)
  %64 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %65 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %67 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %66, i32 0, i32 2
  %68 = load i32, i32* @proc_cleanup_work, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %71 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @set_bit(i32 0, i32 %75)
  %77 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %78 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* @BITS_PER_PAGE, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @atomic_set(i32* %81, i64 %83)
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %99, %55
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PIDMAP_ENTRIES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %91 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* @BITS_PER_PAGE, align 8
  %98 = call i32 @atomic_set(i32* %96, i64 %97)
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %85

102:                                              ; preds = %85
  %103 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  store %struct.pid_namespace* %103, %struct.pid_namespace** %2, align 8
  br label %119

104:                                              ; preds = %54, %47
  %105 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %106 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @kfree(i32 %110)
  br label %112

112:                                              ; preds = %104, %36
  %113 = load i32, i32* @pid_ns_cachep, align 4
  %114 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %115 = call i32 @kmem_cache_free(i32 %113, %struct.pid_namespace* %114)
  br label %116

116:                                              ; preds = %112, %19
  %117 = load i32, i32* %7, align 4
  %118 = call %struct.pid_namespace* @ERR_PTR(i32 %117)
  store %struct.pid_namespace* %118, %struct.pid_namespace** %2, align 8
  br label %119

119:                                              ; preds = %116, %102
  %120 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  ret %struct.pid_namespace* %120
}

declare dso_local %struct.pid_namespace* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32* @create_pid_cachep(i32) #1

declare dso_local i32 @proc_alloc_inum(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.pid_namespace*) #1

declare dso_local %struct.pid_namespace* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
