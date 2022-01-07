; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_inode_alloc_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_inode_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i32, i32, i32, %struct.inode*, i32, i32 }

@sel_inode_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@SECCLASS_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @inode_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_alloc_security(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode_security_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = call i32 (...) @current_sid()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @sel_inode_cache, align 4
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.inode_security_struct* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.inode_security_struct* %9, %struct.inode_security_struct** %4, align 8
  %10 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %11 = icmp ne %struct.inode_security_struct* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %17 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %16, i32 0, i32 5
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %20 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %24 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %23, i32 0, i32 3
  store %struct.inode* %22, %struct.inode** %24, align 8
  %25 = load i32, i32* @SECINITSID_UNLABELED, align 4
  %26 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %27 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @SECCLASS_FILE, align 4
  %29 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %30 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %33 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode_security_struct*, %struct.inode_security_struct** %4, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store %struct.inode_security_struct* %34, %struct.inode_security_struct** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %15, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @current_sid(...) #1

declare dso_local %struct.inode_security_struct* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
