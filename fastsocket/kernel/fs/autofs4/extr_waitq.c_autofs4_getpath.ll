; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_autofs4_getpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_autofs4_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_4__, %struct.dentry* }
%struct.TYPE_4__ = type { i32, i32 }

@dcache_lock = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autofs_sb_info*, %struct.dentry*, i8**)* @autofs4_getpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_getpath(%struct.autofs_sb_info* %0, %struct.dentry* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = call i32 @spin_lock(i32* @dcache_lock)
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %21, %struct.dentry** %9, align 8
  br label %22

22:                                               ; preds = %34, %3
  %23 = load %struct.dentry*, %struct.dentry** %9, align 8
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = icmp ne %struct.dentry* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.dentry*, %struct.dentry** %9, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  store %struct.dentry* %37, %struct.dentry** %9, align 8
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @NAME_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %38
  %47 = call i32 @spin_unlock(i32* @dcache_lock)
  store i32 0, i32* %4, align 4
  br label %109

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %56, i64 %62
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @strncpy(i8* %64, i32 %68, i32 %72)
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 1
  %76 = load %struct.dentry*, %struct.dentry** %75, align 8
  store %struct.dentry* %76, %struct.dentry** %9, align 8
  br label %77

77:                                               ; preds = %102, %48
  %78 = load %struct.dentry*, %struct.dentry** %9, align 8
  %79 = load %struct.dentry*, %struct.dentry** %8, align 8
  %80 = icmp ne %struct.dentry* %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %11, align 8
  store i8 47, i8* %83, align 1
  %84 = load %struct.dentry*, %struct.dentry** %9, align 8
  %85 = getelementptr inbounds %struct.dentry, %struct.dentry* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = sext i32 %87 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %11, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.dentry*, %struct.dentry** %9, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dentry*, %struct.dentry** %9, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strncpy(i8* %92, i32 %96, i32 %100)
  br label %102

102:                                              ; preds = %81
  %103 = load %struct.dentry*, %struct.dentry** %9, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 1
  %105 = load %struct.dentry*, %struct.dentry** %104, align 8
  store %struct.dentry* %105, %struct.dentry** %9, align 8
  br label %77

106:                                              ; preds = %77
  %107 = call i32 @spin_unlock(i32* @dcache_lock)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %46
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
