; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_set_fs_pwd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs_struct.c_set_fs_pwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_struct = type { i32, %struct.path }
%struct.path = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_fs_pwd(%struct.fs_struct* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.fs_struct*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.path, align 8
  store %struct.fs_struct* %0, %struct.fs_struct** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %6 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %7 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %6, i32 0, i32 0
  %8 = call i32 @write_lock(i32* %7)
  %9 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %10 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %9, i32 0, i32 1
  %11 = bitcast %struct.path* %5 to i8*
  %12 = bitcast %struct.path* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %14 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %13, i32 0, i32 1
  %15 = load %struct.path*, %struct.path** %4, align 8
  %16 = bitcast %struct.path* %14 to i8*
  %17 = bitcast %struct.path* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load %struct.path*, %struct.path** %4, align 8
  %19 = call i32 @path_get(%struct.path* %18)
  %20 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %21 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %20, i32 0, i32 0
  %22 = call i32 @write_unlock(i32* %21)
  %23 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @path_put(%struct.path* %5)
  br label %28

28:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
