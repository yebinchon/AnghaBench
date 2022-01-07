; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_path_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_path_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32, i32)* @selinux_path_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_path_truncate(%struct.path* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %11, %struct.cred** %8, align 8
  %12 = load %struct.path*, %struct.path** %5, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = call i64 @open_inode_to_av(%struct.inode* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.cred*, %struct.cred** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @inode_has_perm(%struct.cred* %22, %struct.inode* %23, i64 %24, i32* null)
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @open_inode_to_av(%struct.inode*) #1

declare dso_local i32 @inode_has_perm(%struct.cred*, %struct.inode*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
