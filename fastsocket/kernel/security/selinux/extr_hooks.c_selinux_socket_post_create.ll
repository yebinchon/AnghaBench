; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_post_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i32, i8* }
%struct.cred = type { %struct.task_security_struct* }
%struct.task_security_struct = type { i8*, i8* }
%struct.inode_security_struct = type { i32, i32, i8* }
%struct.TYPE_4__ = type { %struct.inode_security_struct* }

@SECINITSID_KERNEL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i32, i32, i32)* @selinux_socket_post_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_post_create(%struct.socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cred*, align 8
  %12 = alloca %struct.task_security_struct*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.sk_security_struct*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %18, %struct.cred** %11, align 8
  %19 = load %struct.cred*, %struct.cred** %11, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 0
  %21 = load %struct.task_security_struct*, %struct.task_security_struct** %20, align 8
  store %struct.task_security_struct* %21, %struct.task_security_struct** %12, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.task_security_struct*, %struct.task_security_struct** %12, align 8
  %23 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load %struct.task_security_struct*, %struct.task_security_struct** %12, align 8
  %26 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %16, align 8
  %28 = load %struct.socket*, %struct.socket** %6, align 8
  %29 = call %struct.TYPE_4__* @SOCK_INODE(%struct.socket* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.inode_security_struct*, %struct.inode_security_struct** %30, align 8
  store %struct.inode_security_struct* %31, %struct.inode_security_struct** %13, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i8*, i8** @SECINITSID_KERNEL, align 8
  %36 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %37 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %50

38:                                               ; preds = %5
  %39 = load i8*, i8** %16, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %16, align 8
  %43 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %44 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %49

45:                                               ; preds = %38
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %48 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @socket_type_to_security_class(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %56 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %58 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.socket*, %struct.socket** %6, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %50
  %64 = load %struct.socket*, %struct.socket** %6, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.sk_security_struct*, %struct.sk_security_struct** %67, align 8
  store %struct.sk_security_struct* %68, %struct.sk_security_struct** %14, align 8
  %69 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %70 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  %73 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %75 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  %78 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.socket*, %struct.socket** %6, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @selinux_netlbl_socket_post_create(%struct.TYPE_3__* %81, i32 %82)
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %63, %50
  %85 = load i32, i32* %17, align 4
  ret i32 %85
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.TYPE_4__* @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @socket_type_to_security_class(i32, i32, i32) #1

declare dso_local i32 @selinux_netlbl_socket_post_create(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
