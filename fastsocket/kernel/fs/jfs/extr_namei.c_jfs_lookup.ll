; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.dentry = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.btstack = type { i32 }
%struct.component_name = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"jfs_lookup: name = %s\00", align 1
@JFS_OS2 = common dso_local global i32 0, align 4
@jfs_ci_dentry_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@JFS_LOOKUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"jfs_lookup: dtSearch returned %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"jfs_lookup: iget failed on inum %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @jfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @jfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.btstack, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.component_name, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @jfs_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_4__* @JFS_SBI(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @JFS_OS2, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  store i32* @jfs_ci_dentry_operations, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %3
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %87

50:                                               ; preds = %43, %37
  %51 = load i8*, i8** %12, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i64 @PARENT(%struct.inode* %55)
  store i64 %56, i64* %9, align 8
  br label %86

57:                                               ; preds = %50
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @get_UCSname(%struct.component_name* %11, %struct.dentry* %58)
  store i32 %59, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = call %struct.dentry* @ERR_PTR(i32 %62)
  store %struct.dentry* %63, %struct.dentry** %4, align 8
  br label %123

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load i32, i32* @JFS_LOOKUP, align 4
  %67 = call i32 @dtSearch(%struct.inode* %65, %struct.component_name* %11, i64* %9, %struct.btstack* %8, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = call i32 @free_UCSname(%struct.component_name* %11)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = call i32 @d_add(%struct.dentry* %74, i32* null)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %123

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = call %struct.dentry* @ERR_PTR(i32 %82)
  store %struct.dentry* %83, %struct.dentry** %4, align 8
  br label %123

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86, %46
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call %struct.inode* @jfs_iget(i32 %90, i64 %91)
  store %struct.inode* %92, %struct.inode** %10, align 8
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = call i64 @IS_ERR(%struct.inode* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i64, i64* %9, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @jfs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call %struct.dentry* @ERR_CAST(%struct.inode* %100)
  store %struct.dentry* %101, %struct.dentry** %4, align 8
  br label %123

102:                                              ; preds = %87
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = load %struct.dentry*, %struct.dentry** %6, align 8
  %105 = call %struct.dentry* @d_splice_alias(%struct.inode* %103, %struct.dentry* %104)
  store %struct.dentry* %105, %struct.dentry** %6, align 8
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = icmp ne %struct.dentry* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.TYPE_4__* @JFS_SBI(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @JFS_OS2, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.dentry*, %struct.dentry** %6, align 8
  %120 = getelementptr inbounds %struct.dentry, %struct.dentry* %119, i32 0, i32 0
  store i32* @jfs_ci_dentry_operations, i32** %120, align 8
  br label %121

121:                                              ; preds = %118, %108, %102
  %122 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %122, %struct.dentry** %4, align 8
  br label %123

123:                                              ; preds = %121, %96, %79, %73, %61
  %124 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %124
}

declare dso_local i32 @jfs_info(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @PARENT(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i64*, %struct.btstack*, i32) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local %struct.inode* @jfs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
