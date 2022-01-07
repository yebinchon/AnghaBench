; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_d_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_d_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.dentry = type { %struct.dentry* }
%struct.inode = type { %struct.TYPE_3__*, %struct.super_block*, %struct.inode_smack* }
%struct.TYPE_3__ = type { i32* }
%struct.super_block = type { i32, %struct.superblock_smack* }
%struct.superblock_smack = type { i8*, i8* }
%struct.inode_smack = type { i32, i8*, i32 }

@SMK_INODE_INSTANT = common dso_local global i32 0, align 4
@smack_known_star = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @smack_d_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_d_instantiate(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.superblock_smack*, align 8
  %7 = alloca %struct.inode_smack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %12 = call i8* (...) @current_security()
  store i8* %12, i8** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = icmp eq %struct.inode* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load %struct.inode_smack*, %struct.inode_smack** %18, align 8
  store %struct.inode_smack* %19, %struct.inode_smack** %7, align 8
  %20 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %21 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %24 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %124

30:                                               ; preds = %16
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %5, align 8
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 1
  %36 = load %struct.superblock_smack*, %struct.superblock_smack** %35, align 8
  store %struct.superblock_smack* %36, %struct.superblock_smack** %6, align 8
  %37 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %38 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = icmp eq %struct.dentry* %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %30
  %46 = load %struct.superblock_smack*, %struct.superblock_smack** %6, align 8
  %47 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %50 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %52 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %53 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %124

56:                                               ; preds = %30
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %71 [
    i32 130, label %60
    i32 132, label %62
    i32 133, label %64
    i32 129, label %66
    i32 131, label %68
    i32 128, label %69
  ]

60:                                               ; preds = %56
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smack_known_star, i32 0, i32 0), align 8
  store i8* %61, i8** %10, align 8
  br label %107

62:                                               ; preds = %56
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smack_known_star, i32 0, i32 0), align 8
  store i8* %63, i8** %10, align 8
  br label %107

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %10, align 8
  br label %107

66:                                               ; preds = %56
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %10, align 8
  br label %107

68:                                               ; preds = %56
  br label %107

69:                                               ; preds = %56
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smack_known_star, i32 0, i32 0), align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %56, %69
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %107

79:                                               ; preds = %71
  %80 = load %struct.dentry*, %struct.dentry** %3, align 8
  %81 = icmp eq %struct.dentry* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = call %struct.dentry* @d_find_alias(%struct.inode* %83)
  store %struct.dentry* %84, %struct.dentry** %11, align 8
  %85 = load %struct.dentry*, %struct.dentry** %11, align 8
  %86 = icmp eq %struct.dentry* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %107

88:                                               ; preds = %82
  br label %96

89:                                               ; preds = %79
  %90 = load %struct.dentry*, %struct.dentry** %3, align 8
  %91 = call %struct.dentry* @dget(%struct.dentry* %90)
  store %struct.dentry* %91, %struct.dentry** %11, align 8
  %92 = load %struct.dentry*, %struct.dentry** %11, align 8
  %93 = icmp eq %struct.dentry* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %107

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %88
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = load %struct.dentry*, %struct.dentry** %11, align 8
  %99 = call i8* @smk_fetch(%struct.inode* %97, %struct.dentry* %98)
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i8*, i8** %9, align 8
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %102, %96
  %105 = load %struct.dentry*, %struct.dentry** %11, align 8
  %106 = call i32 @dput(%struct.dentry* %105)
  br label %107

107:                                              ; preds = %104, %94, %87, %78, %68, %66, %64, %62, %60
  %108 = load i8*, i8** %10, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %113 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %118

114:                                              ; preds = %107
  %115 = load i8*, i8** %10, align 8
  %116 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %117 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %120 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %121 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %45, %29
  %125 = load %struct.inode_smack*, %struct.inode_smack** %7, align 8
  %126 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %125, i32 0, i32 2
  %127 = call i32 @mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %124, %15
  ret void
}

declare dso_local i8* @current_security(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i8* @smk_fetch(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
