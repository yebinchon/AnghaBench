; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sb_clone_mnt_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sb_clone_mnt_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__*, %struct.superblock_security_struct* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i8* }
%struct.superblock_security_struct = type { i32, i32, i8*, i8*, i32, i32, i32 }

@FSCONTEXT_MNT = common dso_local global i32 0, align 4
@CONTEXT_MNT = common dso_local global i32 0, align 4
@ROOTCONTEXT_MNT = common dso_local global i32 0, align 4
@ss_initialized = common dso_local global i32 0, align 4
@sb_security_lock = common dso_local global i32 0, align 4
@superblock_security_head = common dso_local global i32 0, align 4
@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.super_block*)* @selinux_sb_clone_mnt_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_clone_mnt_opts(%struct.super_block* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.superblock_security_struct*, align 8
  %7 = alloca %struct.superblock_security_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode_security_struct*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.inode_security_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 1
  %20 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %19, align 8
  store %struct.superblock_security_struct* %20, %struct.superblock_security_struct** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 1
  %23 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %22, align 8
  store %struct.superblock_security_struct* %23, %struct.superblock_security_struct** %7, align 8
  %24 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %25 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FSCONTEXT_MNT, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %30 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CONTEXT_MNT, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %35 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ROOTCONTEXT_MNT, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @ss_initialized, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %2
  %42 = call i32 @spin_lock(i32* @sb_security_lock)
  %43 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %44 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %43, i32 0, i32 6
  %45 = call i64 @list_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %49 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %48, i32 0, i32 6
  %50 = call i32 @list_add(i32* %49, i32* @superblock_security_head)
  br label %51

51:                                               ; preds = %47, %41
  %52 = call i32 @spin_unlock(i32* @sb_security_lock)
  store i32 0, i32* %3, align 4
  br label %159

53:                                               ; preds = %2
  %54 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %55 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SE_SBINITIALIZED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %64 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SE_SBINITIALIZED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.super_block*, %struct.super_block** %4, align 8
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call i32 @selinux_cmp_sb_context(%struct.super_block* %70, %struct.super_block* %71)
  store i32 %72, i32* %3, align 4
  br label %159

73:                                               ; preds = %53
  %74 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %75 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %74, i32 0, i32 1
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %78 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %81 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %83 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %86 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %88 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %91 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %93 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %96 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %73
  %100 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %101 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %11, align 8
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %108 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = load %struct.super_block*, %struct.super_block** %5, align 8
  %114 = getelementptr inbounds %struct.super_block, %struct.super_block* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load %struct.inode*, %struct.inode** %116, align 8
  store %struct.inode* %117, %struct.inode** %12, align 8
  %118 = load %struct.inode*, %struct.inode** %12, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load %struct.inode_security_struct*, %struct.inode_security_struct** %119, align 8
  store %struct.inode_security_struct* %120, %struct.inode_security_struct** %13, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %123 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %112, %109
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %127 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %73
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = load %struct.super_block*, %struct.super_block** %4, align 8
  %133 = getelementptr inbounds %struct.super_block, %struct.super_block* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load %struct.inode*, %struct.inode** %135, align 8
  store %struct.inode* %136, %struct.inode** %14, align 8
  %137 = load %struct.inode*, %struct.inode** %14, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load %struct.inode_security_struct*, %struct.inode_security_struct** %138, align 8
  store %struct.inode_security_struct* %139, %struct.inode_security_struct** %15, align 8
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load %struct.inode*, %struct.inode** %143, align 8
  store %struct.inode* %144, %struct.inode** %16, align 8
  %145 = load %struct.inode*, %struct.inode** %16, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load %struct.inode_security_struct*, %struct.inode_security_struct** %146, align 8
  store %struct.inode_security_struct* %147, %struct.inode_security_struct** %17, align 8
  %148 = load %struct.inode_security_struct*, %struct.inode_security_struct** %15, align 8
  %149 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.inode_security_struct*, %struct.inode_security_struct** %17, align 8
  %152 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %131, %128
  %154 = load %struct.super_block*, %struct.super_block** %5, align 8
  %155 = call i32 @sb_finish_set_opts(%struct.super_block* %154)
  %156 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %157 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %156, i32 0, i32 1
  %158 = call i32 @mutex_unlock(i32* %157)
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %153, %69, %51
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @selinux_cmp_sb_context(%struct.super_block*, %struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sb_finish_set_opts(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
