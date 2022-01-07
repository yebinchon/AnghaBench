; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4namespace.c_nfs4_negotiate_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4namespace.c_nfs4_negotiate_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.page = type { i32 }
%struct.nfs4_secinfo_flavors = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @nfs4_negotiate_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_negotiate_security(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.page* @alloc_page(i32 %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call %struct.nfs4_secinfo_flavors* @page_address(%struct.page* %18)
  store %struct.nfs4_secinfo_flavors* %19, %struct.nfs4_secinfo_flavors** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.qstr*, %struct.qstr** %5, align 8
  %22 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %7, align 8
  %23 = call i32 @nfs4_proc_secinfo(%struct.inode* %20, %struct.qstr* %21, %struct.nfs4_secinfo_flavors* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %8, align 4
  br label %31

28:                                               ; preds = %17
  %29 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %7, align 8
  %30 = call i32 @nfs_find_best_sec(%struct.nfs4_secinfo_flavors* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @put_page(%struct.page* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.nfs4_secinfo_flavors* @page_address(%struct.page*) #1

declare dso_local i32 @nfs4_proc_secinfo(%struct.inode*, %struct.qstr*, %struct.nfs4_secinfo_flavors*) #1

declare dso_local i32 @nfs_find_best_sec(%struct.nfs4_secinfo_flavors*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
