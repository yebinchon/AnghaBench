; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_get_inode_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_get_inode_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smb_fattr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@S_IWUSR = common dso_local global i32 0, align 4
@aRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_get_inode_attr(%struct.inode* %0, %struct.smb_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.smb_fattr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.smb_fattr* %1, %struct.smb_fattr** %4, align 8
  %5 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %6 = call i32 @memset(%struct.smb_fattr* %5, i32 0, i32 44)
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %11 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %16 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %21 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %26 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %31 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %36 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %41 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %46 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %51 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %56 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call %struct.TYPE_2__* @SMB_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %62 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %64 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @S_IWUSR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %2
  %70 = load i32, i32* @aRONLY, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %73 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %2
  %77 = load i32, i32* @aRONLY, align 4
  %78 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %79 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %69
  ret void
}

declare dso_local i32 @memset(%struct.smb_fattr*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SMB_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
