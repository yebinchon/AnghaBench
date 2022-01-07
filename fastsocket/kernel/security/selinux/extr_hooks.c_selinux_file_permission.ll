; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_security_struct*, %struct.TYPE_4__ }
%struct.file_security_struct = type { i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @selinux_file_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_permission(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file_security_struct*, align 8
  %8 = alloca %struct.inode_security_struct*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.file_security_struct*, %struct.file_security_struct** %17, align 8
  store %struct.file_security_struct* %18, %struct.file_security_struct** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.inode_security_struct*, %struct.inode_security_struct** %20, align 8
  store %struct.inode_security_struct* %21, %struct.inode_security_struct** %8, align 8
  %22 = call i64 (...) @current_sid()
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %29 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %34 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.inode_security_struct*, %struct.inode_security_struct** %8, align 8
  %37 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %42 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 (...) @avc_policy_seqno()
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %51

47:                                               ; preds = %40, %32, %26
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @selinux_revalidate_file_permission(%struct.file* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %46, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @current_sid(...) #1

declare dso_local i64 @avc_policy_seqno(...) #1

declare dso_local i32 @selinux_revalidate_file_permission(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
