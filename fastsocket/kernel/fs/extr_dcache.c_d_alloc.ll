; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { i8*, i32, %struct.TYPE_5__, i32*, i32*, i32, i32, i32, i64, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.qstr = type { i32, i32, i32 }

@dentry_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DNAME_INLINE_LEN = common dso_local global i32 0, align 4
@DCACHE_UNHASHED = common dso_local global i32 0, align 4
@dcache_lock = common dso_local global i32 0, align 4
@dentry_stat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_alloc(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %8 = load i32, i32* @dentry_cache, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dentry* @kmem_cache_alloc(i32 %8, i32 %9)
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %136

14:                                               ; preds = %2
  %15 = load %struct.qstr*, %struct.qstr** %5, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DNAME_INLINE_LEN, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.qstr*, %struct.qstr** %5, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @dentry_cache, align 4
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = call i32 @kmem_cache_free(i32 %31, %struct.dentry* %32)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %136

34:                                               ; preds = %21
  br label %39

35:                                               ; preds = %14
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 15
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.qstr*, %struct.qstr** %5, align 8
  %45 = getelementptr inbounds %struct.qstr, %struct.qstr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.qstr*, %struct.qstr** %5, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 15
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.qstr*, %struct.qstr** %5, align 8
  %58 = getelementptr inbounds %struct.qstr, %struct.qstr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qstr*, %struct.qstr** %5, align 8
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i8* %56, i32 %59, i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.qstr*, %struct.qstr** %5, align 8
  %66 = getelementptr inbounds %struct.qstr, %struct.qstr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 14
  %72 = call i32 @atomic_set(i32* %71, i32 1)
  %73 = load i32, i32* @DCACHE_UNHASHED, align 4
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 12
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 11
  store i32* null, i32** %80, align 8
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 10
  store i32* null, i32** %86, align 8
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 9
  store i32* null, i32** %88, align 8
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 7
  %93 = call i32 @INIT_HLIST_NODE(i32* %92)
  %94 = load %struct.dentry*, %struct.dentry** %6, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 6
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 1
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.dentry*, %struct.dentry** %6, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 5
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.dentry*, %struct.dentry** %4, align 8
  %104 = icmp ne %struct.dentry* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %39
  %106 = load %struct.dentry*, %struct.dentry** %4, align 8
  %107 = call i32* @dget(%struct.dentry* %106)
  %108 = load %struct.dentry*, %struct.dentry** %6, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 4
  store i32* %107, i32** %109, align 8
  %110 = load %struct.dentry*, %struct.dentry** %4, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.dentry*, %struct.dentry** %6, align 8
  %114 = getelementptr inbounds %struct.dentry, %struct.dentry* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  br label %120

115:                                              ; preds = %39
  %116 = load %struct.dentry*, %struct.dentry** %6, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  br label %120

120:                                              ; preds = %115, %105
  %121 = call i32 @spin_lock(i32* @dcache_lock)
  %122 = load %struct.dentry*, %struct.dentry** %4, align 8
  %123 = icmp ne %struct.dentry* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.dentry*, %struct.dentry** %6, align 8
  %126 = getelementptr inbounds %struct.dentry, %struct.dentry* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.dentry*, %struct.dentry** %4, align 8
  %129 = getelementptr inbounds %struct.dentry, %struct.dentry* %128, i32 0, i32 1
  %130 = call i32 @list_add(i32* %127, i32* %129)
  br label %131

131:                                              ; preds = %124, %120
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dentry_stat, i32 0, i32 0), align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dentry_stat, i32 0, i32 0), align 4
  %134 = call i32 @spin_unlock(i32* @dcache_lock)
  %135 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %135, %struct.dentry** %3, align 8
  br label %136

136:                                              ; preds = %131, %30, %13
  %137 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %137
}

declare dso_local %struct.dentry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dentry*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @dget(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
