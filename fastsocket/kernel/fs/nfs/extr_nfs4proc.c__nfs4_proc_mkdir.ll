; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_createdata = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NF4DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*)* @_nfs4_proc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_mkdir(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.nfs4_createdata*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.iattr*, %struct.iattr** %6, align 8
  %15 = load i32, i32* @NF4DIR, align 4
  %16 = call %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %11, i32* %13, %struct.iattr* %14, i32 %15)
  store %struct.nfs4_createdata* %16, %struct.nfs4_createdata** %7, align 8
  %17 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %7, align 8
  %18 = icmp eq %struct.nfs4_createdata* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %7, align 8
  %24 = call i32 @nfs4_do_create(%struct.inode* %21, %struct.dentry* %22, %struct.nfs4_createdata* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %7, align 8
  %26 = call i32 @nfs4_free_createdata(%struct.nfs4_createdata* %25)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode*, i32*, %struct.iattr*, i32) #1

declare dso_local i32 @nfs4_do_create(%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*) #1

declare dso_local i32 @nfs4_free_createdata(%struct.nfs4_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
