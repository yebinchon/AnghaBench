; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cache.c_afs_vnode_cache_check_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cache.c_afs_vnode_cache_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"{%x,%x,%llx},%p,%u\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" = OBSOLETE [len %hx != %hx]\00", align 1
@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c" = OBSOLETE [uniq %x != %x]\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" = OBSOLETE [vers %llx != %llx]\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" = SUCCESS\00", align 1
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @afs_vnode_cache_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_vnode_cache_check_aux(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.afs_vnode*
  store %struct.afs_vnode* %13, %struct.afs_vnode** %8, align 8
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @_enter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i8* %26, i32 %27)
  store i32 8, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i64 @memcmp(i8* %38, i32* %41, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @memcpy(i32* %10, i8* %45, i32 4)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %49 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %37
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr i8, i8* %55, i64 4
  %57 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %58 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i64 @memcmp(i8* %56, i32* %59, i32 4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr i8, i8* %63, i64 4
  %65 = call i32 @memcpy(i32* %11, i8* %64, i32 4)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %68 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %54
  %74 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %62, %44, %32
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
