; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_racache_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_racache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.raparms*, i32 }
%struct.raparms = type { %struct.raparms* }
%struct.TYPE_4__ = type { i32 }

@raparm_hash = common dso_local global %struct.TYPE_3__* null, align 8
@RAPARM_HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nfsd: allocating %d readahead buffers.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfsdstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"nfsd: kmalloc failed, freeing readahead buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_racache_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.raparms**, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store %struct.raparms** null, %struct.raparms*** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raparm_hash, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.raparms*, %struct.raparms** %10, align 8
  %12 = icmp ne %struct.raparms* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @RAPARM_HASH_SIZE, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 2, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RAPARM_HASH_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %64, %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RAPARM_HASH_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raparm_hash, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raparm_hash, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.raparms** %42, %struct.raparms*** %7, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %59, %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.raparms* @kzalloc(i32 8, i32 %48)
  %50 = load %struct.raparms**, %struct.raparms*** %7, align 8
  store %struct.raparms* %49, %struct.raparms** %50, align 8
  %51 = load %struct.raparms**, %struct.raparms*** %7, align 8
  %52 = load %struct.raparms*, %struct.raparms** %51, align 8
  %53 = icmp ne %struct.raparms* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %69

55:                                               ; preds = %47
  %56 = load %struct.raparms**, %struct.raparms*** %7, align 8
  %57 = load %struct.raparms*, %struct.raparms** %56, align 8
  %58 = getelementptr inbounds %struct.raparms, %struct.raparms* %57, i32 0, i32 0
  store %struct.raparms** %58, %struct.raparms*** %7, align 8
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.raparms**, %struct.raparms*** %7, align 8
  store %struct.raparms* null, %struct.raparms** %63, align 8
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsdstats, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %74

69:                                               ; preds = %54
  %70 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 (...) @nfsd_racache_shutdown()
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %67, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.raparms* @kzalloc(i32, i32) #1

declare dso_local i32 @nfsd_racache_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
