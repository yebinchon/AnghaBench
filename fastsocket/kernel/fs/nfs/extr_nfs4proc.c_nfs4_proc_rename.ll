; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs4_exception = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.inode*, %struct.qstr*)* @nfs4_proc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_rename(%struct.inode* %0, %struct.qstr* %1, %struct.inode* %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs4_exception, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %11 = bitcast %struct.nfs4_exception* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  br label %12

12:                                               ; preds = %21, %4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @NFS_SERVER(%struct.inode* %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load %struct.qstr*, %struct.qstr** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = load %struct.qstr*, %struct.qstr** %8, align 8
  %19 = call i32 @_nfs4_proc_rename(%struct.inode* %15, %struct.qstr* %16, %struct.inode* %17, %struct.qstr* %18)
  %20 = call i32 @nfs4_handle_exception(i32 %14, i32 %19, %struct.nfs4_exception* %9)
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %12, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

declare dso_local i32 @_nfs4_proc_rename(%struct.inode*, %struct.qstr*, %struct.inode*, %struct.qstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
