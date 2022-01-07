; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___lookup_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___lookup_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.dentry = type { %struct.TYPE_3__*, %struct.inode* }
%struct.TYPE_3__ = type { i32 (%struct.dentry*, %struct.qstr*)*, i64 }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* }
%struct.nameidata = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.qstr*, %struct.dentry*, %struct.nameidata*)* @__lookup_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__lookup_hash(%struct.qstr* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  store %struct.qstr* %0, %struct.qstr** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %22, align 8
  %24 = icmp ne i32 (%struct.dentry*, %struct.qstr*)* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = load %struct.qstr*, %struct.qstr** %4, align 8
  %33 = call i32 %30(%struct.dentry* %31, %struct.qstr* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.dentry* @ERR_PTR(i32 %34)
  store %struct.dentry* %35, %struct.dentry** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %109

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %18, %3
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = load %struct.qstr*, %struct.qstr** %4, align 8
  %43 = call %struct.dentry* @__d_lookup(%struct.dentry* %41, %struct.qstr* %42)
  store %struct.dentry* %43, %struct.dentry** %7, align 8
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = icmp ne %struct.dentry* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = load %struct.qstr*, %struct.qstr** %4, align 8
  %49 = call %struct.dentry* @d_lookup(%struct.dentry* %47, %struct.qstr* %48)
  store %struct.dentry* %49, %struct.dentry** %7, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = icmp ne %struct.dentry* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %68 = call %struct.dentry* @do_revalidate(%struct.dentry* %66, %struct.nameidata* %67)
  store %struct.dentry* %68, %struct.dentry** %7, align 8
  br label %69

69:                                               ; preds = %65, %58, %53, %50
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = icmp ne %struct.dentry* %70, null
  br i1 %71, label %108, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.dentry* @ERR_PTR(i32 %74)
  store %struct.dentry* %75, %struct.dentry** %7, align 8
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call i64 @IS_DEADDIR(%struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %109

80:                                               ; preds = %72
  %81 = load %struct.dentry*, %struct.dentry** %5, align 8
  %82 = load %struct.qstr*, %struct.qstr** %4, align 8
  %83 = call %struct.dentry* @d_alloc(%struct.dentry* %81, %struct.qstr* %82)
  store %struct.dentry* %83, %struct.dentry** %10, align 8
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.dentry* @ERR_PTR(i32 %85)
  store %struct.dentry* %86, %struct.dentry** %7, align 8
  %87 = load %struct.dentry*, %struct.dentry** %10, align 8
  %88 = icmp ne %struct.dentry* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %109

90:                                               ; preds = %80
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)*, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)** %94, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = load %struct.dentry*, %struct.dentry** %10, align 8
  %98 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %99 = call %struct.dentry* %95(%struct.inode* %96, %struct.dentry* %97, %struct.nameidata* %98)
  store %struct.dentry* %99, %struct.dentry** %7, align 8
  %100 = load %struct.dentry*, %struct.dentry** %7, align 8
  %101 = icmp ne %struct.dentry* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %90
  %103 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %103, %struct.dentry** %7, align 8
  br label %107

104:                                              ; preds = %90
  %105 = load %struct.dentry*, %struct.dentry** %10, align 8
  %106 = call i32 @dput(%struct.dentry* %105)
  br label %107

107:                                              ; preds = %104, %102
  br label %108

108:                                              ; preds = %107, %69
  br label %109

109:                                              ; preds = %108, %89, %79, %38
  %110 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %110
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @__d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @do_revalidate(%struct.dentry*, %struct.nameidata*) #1

declare dso_local i64 @IS_DEADDIR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
