; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c___rpc_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c___rpc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*)* @__rpc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rpc_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.file_operations* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.file_operations* %3, %struct.file_operations** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = load i32, i32* @S_IFDIR, align 4
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @__rpc_create_common(%struct.inode* %13, %struct.dentry* %14, i32 %17, %struct.file_operations* %18, i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @inc_nlink(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = call i32 @fsnotify_mkdir(%struct.inode* %28, %struct.dentry* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @__rpc_create_common(%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
