; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_free_hashtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_free_hashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_hashtable = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@IDMAP_HASH_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idmap_hashtable*)* @idmap_free_hashtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idmap_free_hashtable(%struct.idmap_hashtable* %0) #0 {
  %2 = alloca %struct.idmap_hashtable*, align 8
  %3 = alloca i32, align 4
  store %struct.idmap_hashtable* %0, %struct.idmap_hashtable** %2, align 8
  %4 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDMAP_HASH_SZ, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %2, align 8
  %16 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @kfree(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %2, align 8
  %29 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @kfree(%struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
