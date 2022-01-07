; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_sb_kern_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_sb_kern_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.superblock_smack*, %struct.dentry* }
%struct.superblock_smack = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.inode_smack* }
%struct.inode_smack = type { i8* }

@SMK_FSHAT = common dso_local global i32 0, align 4
@SMK_FSFLOOR = common dso_local global i32 0, align 4
@SMK_FSDEFAULT = common dso_local global i32 0, align 4
@SMK_FSROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i8*)* @smack_sb_kern_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_sb_kern_mount(%struct.super_block* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.superblock_smack*, align 8
  %11 = alloca %struct.inode_smack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %9, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load %struct.superblock_smack*, %struct.superblock_smack** %22, align 8
  store %struct.superblock_smack* %23, %struct.superblock_smack** %10, align 8
  %24 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %25 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %24, i32 0, i32 5
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %28 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %33 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %32, i32 0, i32 5
  %34 = call i32 @spin_unlock(i32* %33)
  store i32 0, i32* %4, align 4
  br label %167

35:                                               ; preds = %3
  %36 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %37 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %39 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %38, i32 0, i32 5
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %145, %35
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %147

45:                                               ; preds = %42
  %46 = load i8*, i8** %12, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 44)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %13, align 8
  store i8 0, i8* %51, align 1
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* @SMK_FSHAT, align 4
  %56 = load i32, i32* @SMK_FSHAT, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = call i64 @strncmp(i8* %54, i32 %55, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load i32, i32* @SMK_FSHAT, align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i8* @smk_import(i8* %66, i32 0)
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %73 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %60
  br label %144

75:                                               ; preds = %53
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* @SMK_FSFLOOR, align 4
  %78 = load i32, i32* @SMK_FSFLOOR, align 4
  %79 = call i32 @strlen(i32 %78)
  %80 = call i64 @strncmp(i8* %76, i32 %77, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load i32, i32* @SMK_FSFLOOR, align 4
  %84 = call i32 @strlen(i32 %83)
  %85 = load i8*, i8** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i8* @smk_import(i8* %88, i32 0)
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %95 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %82
  br label %143

97:                                               ; preds = %75
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* @SMK_FSDEFAULT, align 4
  %100 = load i32, i32* @SMK_FSDEFAULT, align 4
  %101 = call i32 @strlen(i32 %100)
  %102 = call i64 @strncmp(i8* %98, i32 %99, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load i32, i32* @SMK_FSDEFAULT, align 4
  %106 = call i32 @strlen(i32 %105)
  %107 = load i8*, i8** %12, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i8* @smk_import(i8* %110, i32 0)
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i8*, i8** %14, align 8
  %116 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %117 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %104
  br label %142

119:                                              ; preds = %97
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* @SMK_FSROOT, align 4
  %122 = load i32, i32* @SMK_FSROOT, align 4
  %123 = call i32 @strlen(i32 %122)
  %124 = call i64 @strncmp(i8* %120, i32 %121, i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %119
  %127 = load i32, i32* @SMK_FSROOT, align 4
  %128 = call i32 @strlen(i32 %127)
  %129 = load i8*, i8** %12, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %12, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i8* @smk_import(i8* %132, i32 0)
  store i8* %133, i8** %14, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i8*, i8** %14, align 8
  %138 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %139 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %136, %126
  br label %141

141:                                              ; preds = %140, %119
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %96
  br label %144

144:                                              ; preds = %143, %74
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %13, align 8
  store i8* %146, i8** %12, align 8
  br label %42

147:                                              ; preds = %42
  %148 = load %struct.inode*, %struct.inode** %9, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  %150 = load %struct.inode_smack*, %struct.inode_smack** %149, align 8
  store %struct.inode_smack* %150, %struct.inode_smack** %11, align 8
  %151 = load %struct.inode_smack*, %struct.inode_smack** %11, align 8
  %152 = icmp eq %struct.inode_smack* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %155 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = call %struct.inode_smack* @new_inode_smack(i8* %156)
  %158 = load %struct.inode*, %struct.inode** %9, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  store %struct.inode_smack* %157, %struct.inode_smack** %159, align 8
  br label %166

160:                                              ; preds = %147
  %161 = load %struct.superblock_smack*, %struct.superblock_smack** %10, align 8
  %162 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.inode_smack*, %struct.inode_smack** %11, align 8
  %165 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %160, %153
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %31
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @smk_import(i8*, i32) #1

declare dso_local %struct.inode_smack* @new_inode_smack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
