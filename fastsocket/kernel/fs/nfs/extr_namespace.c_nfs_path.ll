; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_namespace.c_nfs_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_namespace.c_nfs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@dcache_lock = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nfs_path(i8* %0, %struct.dentry* %1, %struct.dentry* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %12, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %11, align 4
  %22 = call i32 @spin_lock(i32* @dcache_lock)
  br label %23

23:                                               ; preds = %45, %5
  %24 = load %struct.dentry*, %struct.dentry** %9, align 8
  %25 = call i32 @IS_ROOT(%struct.dentry* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.dentry*, %struct.dentry** %9, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = icmp ne %struct.dentry* %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %63

33:                                               ; preds = %31
  %34 = load %struct.dentry*, %struct.dentry** %9, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %115

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @memcpy(i8* %51, i8* %55, i32 %56)
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %12, align 8
  store i8 47, i8* %59, align 1
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load %struct.dentry*, %struct.dentry** %61, align 8
  store %struct.dentry* %62, %struct.dentry** %9, align 8
  br label %23

63:                                               ; preds = %31
  %64 = call i32 @spin_unlock(i32* @dcache_lock)
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %117

74:                                               ; preds = %69
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %12, align 8
  store i8 47, i8* %76, align 1
  br label %77

77:                                               ; preds = %74, %63
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @strlen(i8* %78)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %94, %77
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br label %92

92:                                               ; preds = %83, %80
  %93 = phi i1 [ false, %80 ], [ %91, %83 ]
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %13, align 4
  br label %80

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %117

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = sext i32 %105 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @memcpy(i8* %110, i8* %111, i32 %112)
  %114 = load i8*, i8** %12, align 8
  store i8* %114, i8** %6, align 8
  br label %121

115:                                              ; preds = %44
  %116 = call i32 @spin_unlock(i32* @dcache_lock)
  br label %117

117:                                              ; preds = %115, %103, %73
  %118 = load i32, i32* @ENAMETOOLONG, align 4
  %119 = sub nsw i32 0, %118
  %120 = call i8* @ERR_PTR(i32 %119)
  store i8* %120, i8** %6, align 8
  br label %121

121:                                              ; preds = %117, %104
  %122 = load i8*, i8** %6, align 8
  ret i8* %122
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
