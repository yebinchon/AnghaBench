; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_init_security_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_init_security_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_security_xattr_info = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_init_security_get(%struct.inode* %0, %struct.inode* %1, %struct.ocfs2_security_xattr_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_security_xattr_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ocfs2_security_xattr_info* %2, %struct.ocfs2_security_xattr_info** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %6, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @OCFS2_SB(i32 %10)
  %12 = call i32 @ocfs2_supports_xattr(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %20, i32 0, i32 2
  %22 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %22, i32 0, i32 1
  %24 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %7, align 8
  %25 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %24, i32 0, i32 0
  %26 = call i32 @security_inode_init_security(%struct.inode* %18, %struct.inode* %19, i32* %21, i32* %23, i32* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @security_inode_init_security(%struct.inode*, %struct.inode*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
