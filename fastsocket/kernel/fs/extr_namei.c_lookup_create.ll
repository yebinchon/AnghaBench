; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_lookup_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_lookup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64 }
%struct.nameidata = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i64* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i64 0, align 8
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_EXCL = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @lookup_create(%struct.nameidata* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @EEXIST, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.dentry* @ERR_PTR(i32 %8)
  store %struct.dentry* %9, %struct.dentry** %6, align 8
  %10 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* @I_MUTEX_PARENT, align 4
  %18 = call i32 @mutex_lock_nested(i32* %16, i32 %17)
  %19 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LAST_NORM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %90

25:                                               ; preds = %2
  %26 = load i32, i32* @LOOKUP_PARENT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @LOOKUP_CREATE, align 4
  %33 = load i32, i32* @LOOKUP_EXCL, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @O_EXCL, align 4
  %40 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %45 = call %struct.dentry* @lookup_hash(%struct.nameidata* %44)
  store %struct.dentry* %45, %struct.dentry** %6, align 8
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = call i64 @IS_ERR(%struct.dentry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  br label %90

50:                                               ; preds = %25
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %84

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %65 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %59, %56
  %72 = phi i1 [ false, %56 ], [ %70, %59 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = call i32 @dput(%struct.dentry* %77)
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.dentry* @ERR_PTR(i32 %80)
  store %struct.dentry* %81, %struct.dentry** %6, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %83, %struct.dentry** %3, align 8
  br label %92

84:                                               ; preds = %55
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = call i32 @dput(%struct.dentry* %85)
  %87 = load i32, i32* @EEXIST, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.dentry* @ERR_PTR(i32 %88)
  store %struct.dentry* %89, %struct.dentry** %6, align 8
  br label %90

90:                                               ; preds = %84, %49, %24
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %91, %struct.dentry** %3, align 8
  br label %92

92:                                               ; preds = %90, %82
  %93 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %93
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.dentry* @lookup_hash(%struct.nameidata*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
