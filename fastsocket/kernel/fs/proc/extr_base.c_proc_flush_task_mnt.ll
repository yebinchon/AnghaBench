; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_flush_task_mnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_flush_task_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i8* }

@PROC_NUMBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsmount*, i32, i32)* @proc_flush_task_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_flush_task_mnt(%struct.vfsmount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qstr, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @PROC_NUMBUF, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = trunc i64 %14 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @snprintf(i8* %16, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %23 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %24, %struct.qstr* %12)
  store %struct.dentry* %25, %struct.dentry** %7, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call i32 @shrink_dcache_parent(%struct.dentry* %29)
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = call i32 @d_drop(%struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = call i32 @dput(%struct.dentry* %33)
  br label %35

35:                                               ; preds = %28, %3
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i8* %16, i8** %36, align 8
  %37 = trunc i64 %14 to i32
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @snprintf(i8* %16, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %42 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %41, i32 0, i32 0
  %43 = load %struct.dentry*, %struct.dentry** %42, align 8
  %44 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %43, %struct.qstr* %12)
  store %struct.dentry* %44, %struct.dentry** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = icmp ne %struct.dentry* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %82

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strlen(i8* %51)
  %53 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %54, %struct.qstr* %12)
  store %struct.dentry* %55, %struct.dentry** %9, align 8
  %56 = load %struct.dentry*, %struct.dentry** %9, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %79

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i8* %16, i8** %60, align 8
  %61 = trunc i64 %14 to i32
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @snprintf(i8* %16, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %65, %struct.qstr* %12)
  store %struct.dentry* %66, %struct.dentry** %7, align 8
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = icmp ne %struct.dentry* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = call i32 @shrink_dcache_parent(%struct.dentry* %70)
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  %73 = call i32 @d_drop(%struct.dentry* %72)
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  %75 = call i32 @dput(%struct.dentry* %74)
  br label %76

76:                                               ; preds = %69, %59
  %77 = load %struct.dentry*, %struct.dentry** %9, align 8
  %78 = call i32 @dput(%struct.dentry* %77)
  br label %79

79:                                               ; preds = %76, %58
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  %81 = call i32 @dput(%struct.dentry* %80)
  br label %82

82:                                               ; preds = %79, %47
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry*, %struct.qstr*) #2

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #2

declare dso_local i32 @d_drop(%struct.dentry*) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local i8* @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
