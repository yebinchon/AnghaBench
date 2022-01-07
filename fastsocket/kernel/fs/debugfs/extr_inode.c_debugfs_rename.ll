; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_rename(%struct.dentry* %0, %struct.dentry* %1, %struct.dentry* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = call %struct.dentry* @lock_rename(%struct.dentry* %14, %struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %12, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %4
  br label %111

27:                                               ; preds = %21
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = load %struct.dentry*, %struct.dentry** %12, align 8
  %35 = icmp eq %struct.dentry* %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = call i64 @d_mountpoint(%struct.dentry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %27
  br label %111

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call %struct.dentry* @lookup_one_len(i8* %42, %struct.dentry* %43, i32 %45)
  store %struct.dentry* %46, %struct.dentry** %11, align 8
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = call i64 @IS_ERR(%struct.dentry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = load %struct.dentry*, %struct.dentry** %12, align 8
  %53 = icmp eq %struct.dentry* %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %50, %41
  br label %111

60:                                               ; preds = %54
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @fsnotify_oldname_init(i32 %64)
  store i8* %65, i8** %13, align 8
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = load %struct.dentry*, %struct.dentry** %8, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load %struct.dentry*, %struct.dentry** %11, align 8
  %74 = call i32 @simple_rename(%struct.TYPE_7__* %68, %struct.dentry* %69, %struct.TYPE_7__* %72, %struct.dentry* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @fsnotify_oldname_free(i8* %78)
  br label %111

80:                                               ; preds = %60
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = load %struct.dentry*, %struct.dentry** %11, align 8
  %83 = call i32 @d_move(%struct.dentry* %81, %struct.dentry* %82)
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  %85 = getelementptr inbounds %struct.dentry, %struct.dentry* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load %struct.dentry*, %struct.dentry** %8, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.dentry*, %struct.dentry** %7, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dentry*, %struct.dentry** %7, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @S_ISDIR(i32 %99)
  %101 = load %struct.dentry*, %struct.dentry** %7, align 8
  %102 = call i32 @fsnotify_move(%struct.TYPE_7__* %86, %struct.TYPE_7__* %89, i8* %90, i32 %94, i32 %100, i32* null, %struct.dentry* %101)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @fsnotify_oldname_free(i8* %103)
  %105 = load %struct.dentry*, %struct.dentry** %8, align 8
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = call i32 @unlock_rename(%struct.dentry* %105, %struct.dentry* %106)
  %108 = load %struct.dentry*, %struct.dentry** %11, align 8
  %109 = call i32 @dput(%struct.dentry* %108)
  %110 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %110, %struct.dentry** %5, align 8
  br label %125

111:                                              ; preds = %77, %59, %40, %26
  %112 = load %struct.dentry*, %struct.dentry** %11, align 8
  %113 = icmp ne %struct.dentry* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.dentry*, %struct.dentry** %11, align 8
  %116 = call i64 @IS_ERR(%struct.dentry* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load %struct.dentry*, %struct.dentry** %11, align 8
  %120 = call i32 @dput(%struct.dentry* %119)
  br label %121

121:                                              ; preds = %118, %114, %111
  %122 = load %struct.dentry*, %struct.dentry** %8, align 8
  %123 = load %struct.dentry*, %struct.dentry** %6, align 8
  %124 = call i32 @unlock_rename(%struct.dentry* %122, %struct.dentry* %123)
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %125

125:                                              ; preds = %121, %80
  %126 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %126
}

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i8* @fsnotify_oldname_init(i32) #1

declare dso_local i32 @simple_rename(%struct.TYPE_7__*, %struct.dentry*, %struct.TYPE_7__*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_oldname_free(i8*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_move(%struct.TYPE_7__*, %struct.TYPE_7__*, i8*, i32, i32, i32*, %struct.dentry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
