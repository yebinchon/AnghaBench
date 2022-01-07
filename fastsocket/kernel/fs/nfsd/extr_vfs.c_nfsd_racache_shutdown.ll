; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_racache_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_racache_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.raparms* }
%struct.raparms = type { %struct.raparms* }

@.str = private unnamed_addr constant [34 x i8] c"nfsd: freeing readahead buffers.\0A\00", align 1
@RAPARM_HASH_SIZE = common dso_local global i32 0, align 4
@raparm_hash = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_racache_shutdown() #0 {
  %1 = alloca %struct.raparms*, align 8
  %2 = alloca %struct.raparms*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @RAPARM_HASH_SIZE, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raparm_hash, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.raparms*, %struct.raparms** %14, align 8
  store %struct.raparms* %15, %struct.raparms** %1, align 8
  br label %16

16:                                               ; preds = %19, %9
  %17 = load %struct.raparms*, %struct.raparms** %1, align 8
  %18 = icmp ne %struct.raparms* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.raparms*, %struct.raparms** %1, align 8
  store %struct.raparms* %20, %struct.raparms** %2, align 8
  %21 = load %struct.raparms*, %struct.raparms** %1, align 8
  %22 = getelementptr inbounds %struct.raparms, %struct.raparms* %21, i32 0, i32 0
  %23 = load %struct.raparms*, %struct.raparms** %22, align 8
  store %struct.raparms* %23, %struct.raparms** %1, align 8
  %24 = load %struct.raparms*, %struct.raparms** %2, align 8
  %25 = call i32 @kfree(%struct.raparms* %24)
  br label %16

26:                                               ; preds = %16
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raparm_hash, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.raparms* null, %struct.raparms** %31, align 8
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %5

35:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @kfree(%struct.raparms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
