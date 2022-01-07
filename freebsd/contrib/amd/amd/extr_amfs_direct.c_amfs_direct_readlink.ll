; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_direct.c_amfs_direct_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_direct.c_amfs_direct_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@VLOOK_CREATE = common dso_local global i32 0, align 4
@amd_state = common dso_local global i64 0, align 8
@Finishing = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*, i32*)* @amfs_direct_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @amfs_direct_readlink(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_13__* @next_nonerror_node(i32 %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i32 @amfs_mkcacheref(%struct.TYPE_14__* %28)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* @VLOOK_CREATE, align 4
  %37 = call %struct.TYPE_13__* @amfs_generic_lookup_child(%struct.TYPE_13__* %31, i64 %35, i32* %7, i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %6, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = call %struct.TYPE_13__* @amfs_generic_mount_child(%struct.TYPE_13__* %44, i32* %7)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %6, align 8
  br label %46

46:                                               ; preds = %43, %40, %30
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = call i32 @new_ttl(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %3, align 8
  br label %63

54:                                               ; preds = %47
  %55 = load i64, i64* @amd_state, align 8
  %56 = load i64, i64* @Finishing, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %63

63:                                               ; preds = %60, %50
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %64
}

declare dso_local %struct.TYPE_13__* @next_nonerror_node(i32) #1

declare dso_local i32 @amfs_mkcacheref(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @amfs_generic_lookup_child(%struct.TYPE_13__*, i64, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @amfs_generic_mount_child(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @new_ttl(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
