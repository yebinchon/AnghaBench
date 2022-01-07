; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_dev_to_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_dev_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devname_cache = type { i64, i8*, i32 }
%struct.block_device = type { i32 }

@CACHE_SIZE_BITS = common dso_local global i32 0, align 4
@jbd2_dev_to_name.new_dev = internal global %struct.devname_cache* null, align 8
@devcache = common dso_local global %struct.devname_cache** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NODEV-ALLOCFAILURE\00", align 1
@devname_cache_lock = common dso_local global i32 0, align 4
@free_devcache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jbd2_dev_to_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.block_device*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @CACHE_SIZE_BITS, align 4
  %9 = call i32 @hash_32(i64 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %11, i64 %13
  %15 = load %struct.devname_cache*, %struct.devname_cache** %14, align 8
  %16 = icmp ne %struct.devname_cache* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %18, i64 %20
  %22 = load %struct.devname_cache*, %struct.devname_cache** %21, align 8
  %23 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %28, i64 %30
  %32 = load %struct.devname_cache*, %struct.devname_cache** %31, align 8
  %33 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %2, align 8
  br label %132

37:                                               ; preds = %17, %1
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.devname_cache* @kmalloc(i32 24, i32 %39)
  store %struct.devname_cache* %40, %struct.devname_cache** @jbd2_dev_to_name.new_dev, align 8
  %41 = load %struct.devname_cache*, %struct.devname_cache** @jbd2_dev_to_name.new_dev, align 8
  %42 = icmp ne %struct.devname_cache* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %132

44:                                               ; preds = %37
  %45 = call i32 @spin_lock(i32* @devname_cache_lock)
  %46 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %46, i64 %48
  %50 = load %struct.devname_cache*, %struct.devname_cache** %49, align 8
  %51 = icmp ne %struct.devname_cache* %50, null
  br i1 %51, label %52, label %83

52:                                               ; preds = %44
  %53 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %53, i64 %55
  %57 = load %struct.devname_cache*, %struct.devname_cache** %56, align 8
  %58 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.devname_cache*, %struct.devname_cache** @jbd2_dev_to_name.new_dev, align 8
  %64 = call i32 @kfree(%struct.devname_cache* %63)
  %65 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %65, i64 %67
  %69 = load %struct.devname_cache*, %struct.devname_cache** %68, align 8
  %70 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %5, align 8
  %72 = call i32 @spin_unlock(i32* @devname_cache_lock)
  %73 = load i8*, i8** %5, align 8
  store i8* %73, i8** %2, align 8
  br label %132

74:                                               ; preds = %52
  %75 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %75, i64 %77
  %79 = load %struct.devname_cache*, %struct.devname_cache** %78, align 8
  %80 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %79, i32 0, i32 2
  %81 = load i32, i32* @free_devcache, align 4
  %82 = call i32 @call_rcu(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %44
  %84 = load %struct.devname_cache*, %struct.devname_cache** @jbd2_dev_to_name.new_dev, align 8
  %85 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %85, i64 %87
  store %struct.devname_cache* %84, %struct.devname_cache** %88, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %90, i64 %92
  %94 = load %struct.devname_cache*, %struct.devname_cache** %93, align 8
  %95 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %94, i32 0, i32 0
  store i64 %89, i64* %95, align 8
  %96 = load i64, i64* %3, align 8
  %97 = call %struct.block_device* @bdget(i64 %96)
  store %struct.block_device* %97, %struct.block_device** %6, align 8
  %98 = load %struct.block_device*, %struct.block_device** %6, align 8
  %99 = icmp ne %struct.block_device* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %83
  %101 = load %struct.block_device*, %struct.block_device** %6, align 8
  %102 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %102, i64 %104
  %106 = load %struct.devname_cache*, %struct.devname_cache** %105, align 8
  %107 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @bdevname(%struct.block_device* %101, i8* %108)
  %110 = load %struct.block_device*, %struct.block_device** %6, align 8
  %111 = call i32 @bdput(%struct.block_device* %110)
  br label %122

112:                                              ; preds = %83
  %113 = load i64, i64* %3, align 8
  %114 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %114, i64 %116
  %118 = load %struct.devname_cache*, %struct.devname_cache** %117, align 8
  %119 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @__bdevname(i64 %113, i8* %120)
  br label %122

122:                                              ; preds = %112, %100
  %123 = load %struct.devname_cache**, %struct.devname_cache*** @devcache, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.devname_cache*, %struct.devname_cache** %123, i64 %125
  %127 = load %struct.devname_cache*, %struct.devname_cache** %126, align 8
  %128 = getelementptr inbounds %struct.devname_cache, %struct.devname_cache* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %5, align 8
  %130 = call i32 @spin_unlock(i32* @devname_cache_lock)
  %131 = load i8*, i8** %5, align 8
  store i8* %131, i8** %2, align 8
  br label %132

132:                                              ; preds = %122, %62, %43, %27
  %133 = load i8*, i8** %2, align 8
  ret i8* %133
}

declare dso_local i32 @hash_32(i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.devname_cache* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.devname_cache*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.block_device* @bdget(i64) #1

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

declare dso_local i32 @__bdevname(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
