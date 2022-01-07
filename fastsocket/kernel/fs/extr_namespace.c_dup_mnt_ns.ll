; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_dup_mnt_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_dup_mnt_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_namespace = type { %struct.vfsmount*, i32 }
%struct.vfsmount = type { %struct.mnt_namespace*, i32, i32 }
%struct.fs_struct = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vfsmount* }
%struct.TYPE_3__ = type { %struct.vfsmount* }

@namespace_sem = common dso_local global i32 0, align 4
@CL_COPY_ALL = common dso_local global i32 0, align 4
@CL_EXPIRE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mnt_namespace* (%struct.mnt_namespace*, %struct.fs_struct*)* @dup_mnt_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mnt_namespace* @dup_mnt_ns(%struct.mnt_namespace* %0, %struct.fs_struct* %1) #0 {
  %3 = alloca %struct.mnt_namespace*, align 8
  %4 = alloca %struct.mnt_namespace*, align 8
  %5 = alloca %struct.fs_struct*, align 8
  %6 = alloca %struct.mnt_namespace*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.vfsmount*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  store %struct.mnt_namespace* %0, %struct.mnt_namespace** %4, align 8
  store %struct.fs_struct* %1, %struct.fs_struct** %5, align 8
  store %struct.vfsmount* null, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* null, %struct.vfsmount** %8, align 8
  %11 = call %struct.mnt_namespace* (...) @alloc_mnt_ns()
  store %struct.mnt_namespace* %11, %struct.mnt_namespace** %6, align 8
  %12 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %13 = call i64 @IS_ERR(%struct.mnt_namespace* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  store %struct.mnt_namespace* %16, %struct.mnt_namespace** %3, align 8
  br label %126

17:                                               ; preds = %2
  %18 = call i32 @down_write(i32* @namespace_sem)
  %19 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %20 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %19, i32 0, i32 0
  %21 = load %struct.vfsmount*, %struct.vfsmount** %20, align 8
  %22 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %23 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %22, i32 0, i32 0
  %24 = load %struct.vfsmount*, %struct.vfsmount** %23, align 8
  %25 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CL_COPY_ALL, align 4
  %28 = load i32, i32* @CL_EXPIRE, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.vfsmount* @copy_tree(%struct.vfsmount* %21, i32 %26, i32 %29)
  %31 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %32 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %31, i32 0, i32 0
  store %struct.vfsmount* %30, %struct.vfsmount** %32, align 8
  %33 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %34 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %33, i32 0, i32 0
  %35 = load %struct.vfsmount*, %struct.vfsmount** %34, align 8
  %36 = icmp ne %struct.vfsmount* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %17
  %38 = call i32 @up_write(i32* @namespace_sem)
  %39 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %40 = call i32 @free_mnt_ns(%struct.mnt_namespace* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.mnt_namespace* @ERR_PTR(i32 %42)
  store %struct.mnt_namespace* %43, %struct.mnt_namespace** %3, align 8
  br label %126

44:                                               ; preds = %17
  %45 = call i32 @spin_lock(i32* @vfsmount_lock)
  %46 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %47 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %46, i32 0, i32 1
  %48 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %49 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %48, i32 0, i32 0
  %50 = load %struct.vfsmount*, %struct.vfsmount** %49, align 8
  %51 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %50, i32 0, i32 1
  %52 = call i32 @list_add_tail(i32* %47, i32* %51)
  %53 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %54 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %55 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %54, i32 0, i32 0
  %56 = load %struct.vfsmount*, %struct.vfsmount** %55, align 8
  store %struct.vfsmount* %56, %struct.vfsmount** %9, align 8
  %57 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %58 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %57, i32 0, i32 0
  %59 = load %struct.vfsmount*, %struct.vfsmount** %58, align 8
  store %struct.vfsmount* %59, %struct.vfsmount** %10, align 8
  br label %60

60:                                               ; preds = %100, %44
  %61 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %62 = icmp ne %struct.vfsmount* %61, null
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  %64 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %65 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %66 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %65, i32 0, i32 0
  store %struct.mnt_namespace* %64, %struct.mnt_namespace** %66, align 8
  %67 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %68 = icmp ne %struct.fs_struct* %67, null
  br i1 %68, label %69, label %100

69:                                               ; preds = %63
  %70 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %71 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %72 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.vfsmount*, %struct.vfsmount** %73, align 8
  %75 = icmp eq %struct.vfsmount* %70, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  store %struct.vfsmount* %77, %struct.vfsmount** %7, align 8
  %78 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %79 = call i8* @mntget(%struct.vfsmount* %78)
  %80 = bitcast i8* %79 to %struct.vfsmount*
  %81 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %82 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store %struct.vfsmount* %80, %struct.vfsmount** %83, align 8
  br label %84

84:                                               ; preds = %76, %69
  %85 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %86 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %87 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.vfsmount*, %struct.vfsmount** %88, align 8
  %90 = icmp eq %struct.vfsmount* %85, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  store %struct.vfsmount* %92, %struct.vfsmount** %8, align 8
  %93 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %94 = call i8* @mntget(%struct.vfsmount* %93)
  %95 = bitcast i8* %94 to %struct.vfsmount*
  %96 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %97 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store %struct.vfsmount* %95, %struct.vfsmount** %98, align 8
  br label %99

99:                                               ; preds = %91, %84
  br label %100

100:                                              ; preds = %99, %63
  %101 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %102 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  %103 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %102, i32 0, i32 0
  %104 = load %struct.vfsmount*, %struct.vfsmount** %103, align 8
  %105 = call %struct.vfsmount* @next_mnt(%struct.vfsmount* %101, %struct.vfsmount* %104)
  store %struct.vfsmount* %105, %struct.vfsmount** %9, align 8
  %106 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %107 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %108 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %107, i32 0, i32 0
  %109 = load %struct.vfsmount*, %struct.vfsmount** %108, align 8
  %110 = call %struct.vfsmount* @next_mnt(%struct.vfsmount* %106, %struct.vfsmount* %109)
  store %struct.vfsmount* %110, %struct.vfsmount** %10, align 8
  br label %60

111:                                              ; preds = %60
  %112 = call i32 @up_write(i32* @namespace_sem)
  %113 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %114 = icmp ne %struct.vfsmount* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %117 = call i32 @mntput(%struct.vfsmount* %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %120 = icmp ne %struct.vfsmount* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %123 = call i32 @mntput(%struct.vfsmount* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  store %struct.mnt_namespace* %125, %struct.mnt_namespace** %3, align 8
  br label %126

126:                                              ; preds = %124, %37, %15
  %127 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  ret %struct.mnt_namespace* %127
}

declare dso_local %struct.mnt_namespace* @alloc_mnt_ns(...) #1

declare dso_local i64 @IS_ERR(%struct.mnt_namespace*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.vfsmount* @copy_tree(%struct.vfsmount*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local %struct.mnt_namespace* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @mntget(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @next_mnt(%struct.vfsmount*, %struct.vfsmount*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
