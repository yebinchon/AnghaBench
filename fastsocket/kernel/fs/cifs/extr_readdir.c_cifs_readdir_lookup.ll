; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_readdir_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_readdir_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.dentry*, %struct.qstr*)* }
%struct.dentry = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32, i32, i32 }
%struct.cifs_fattr = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"For %s\00", align 1
@cifs_ci_dentry_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cifs_dentry_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.qstr*, %struct.cifs_fattr*)* @cifs_readdir_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @cifs_readdir_lookup(%struct.dentry* %0, %struct.qstr* %1, %struct.cifs_fattr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.cifs_fattr*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.super_block*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.cifs_fattr* %2, %struct.cifs_fattr** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %11, align 8
  %17 = load %struct.qstr*, %struct.qstr** %6, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %29, align 8
  %31 = icmp ne i32 (%struct.dentry*, %struct.qstr*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %36, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = load %struct.qstr*, %struct.qstr** %6, align 8
  %40 = call i32 %37(%struct.dentry* %38, %struct.qstr* %39)
  br label %51

41:                                               ; preds = %25, %3
  %42 = load %struct.qstr*, %struct.qstr** %6, align 8
  %43 = getelementptr inbounds %struct.qstr, %struct.qstr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qstr*, %struct.qstr** %6, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @full_name_hash(i32 %44, i32 %47)
  %49 = load %struct.qstr*, %struct.qstr** %6, align 8
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %32
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = load %struct.qstr*, %struct.qstr** %6, align 8
  %54 = call %struct.dentry* @d_lookup(%struct.dentry* %52, %struct.qstr* %53)
  store %struct.dentry* %54, %struct.dentry** %8, align 8
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = icmp ne %struct.dentry* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %63, %struct.dentry** %4, align 8
  br label %115

64:                                               ; preds = %57
  %65 = load %struct.dentry*, %struct.dentry** %8, align 8
  %66 = call i32 @d_drop(%struct.dentry* %65)
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = call i32 @dput(%struct.dentry* %67)
  br label %69

69:                                               ; preds = %64, %51
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = load %struct.qstr*, %struct.qstr** %6, align 8
  %72 = call %struct.dentry* @d_alloc(%struct.dentry* %70, %struct.qstr* %71)
  store %struct.dentry* %72, %struct.dentry** %8, align 8
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = icmp eq %struct.dentry* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %115

76:                                               ; preds = %69
  %77 = load %struct.super_block*, %struct.super_block** %11, align 8
  %78 = load %struct.cifs_fattr*, %struct.cifs_fattr** %7, align 8
  %79 = call %struct.inode* @cifs_iget(%struct.super_block* %77, %struct.cifs_fattr* %78)
  store %struct.inode* %79, %struct.inode** %10, align 8
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = icmp ne %struct.inode* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load %struct.dentry*, %struct.dentry** %8, align 8
  %84 = call i32 @dput(%struct.dentry* %83)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %115

85:                                               ; preds = %76
  %86 = load %struct.super_block*, %struct.super_block** %11, align 8
  %87 = call i32 @CIFS_SB(%struct.super_block* %86)
  %88 = call %struct.TYPE_6__* @cifs_sb_master_tcon(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  store %struct.TYPE_7__* @cifs_ci_dentry_ops, %struct.TYPE_7__** %94, align 8
  br label %98

95:                                               ; preds = %85
  %96 = load %struct.dentry*, %struct.dentry** %8, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 0
  store %struct.TYPE_7__* @cifs_dentry_ops, %struct.TYPE_7__** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.dentry*, %struct.dentry** %8, align 8
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call %struct.dentry* @d_materialise_unique(%struct.dentry* %99, %struct.inode* %100)
  store %struct.dentry* %101, %struct.dentry** %9, align 8
  %102 = load %struct.dentry*, %struct.dentry** %9, align 8
  %103 = icmp ne %struct.dentry* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.dentry*, %struct.dentry** %8, align 8
  %106 = call i32 @dput(%struct.dentry* %105)
  %107 = load %struct.dentry*, %struct.dentry** %9, align 8
  %108 = call i64 @IS_ERR(%struct.dentry* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %115

111:                                              ; preds = %104
  %112 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %112, %struct.dentry** %8, align 8
  br label %113

113:                                              ; preds = %111, %98
  %114 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %114, %struct.dentry** %4, align 8
  br label %115

115:                                              ; preds = %113, %110, %82, %75, %62
  %116 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %116
}

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @full_name_hash(i32, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.inode* @cifs_iget(%struct.super_block*, %struct.cifs_fattr*) #1

declare dso_local %struct.TYPE_6__* @cifs_sb_master_tcon(i32) #1

declare dso_local i32 @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.dentry* @d_materialise_unique(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
