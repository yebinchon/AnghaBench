; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.nameidata = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@BEFS_LONG_SYMLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Follow long symlink\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read entire long symlink\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @befs_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @befs_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_7__* @BEFS_I(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BEFS_LONG_SYMLINK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = call i32 @befs_debug(%struct.super_block* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i8* @ERR_PTR(i32 %39)
  store i8* %40, i8** %6, align 8
  br label %64

41:                                               ; preds = %20
  %42 = load %struct.super_block*, %struct.super_block** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @befs_read_lsymlink(%struct.super_block* %42, %struct.TYPE_8__* %43, i8* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load %struct.super_block*, %struct.super_block** %7, align 8
  %53 = call i32 @befs_error(%struct.super_block* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i8* @ERR_PTR(i32 %55)
  store i8* %56, i8** %6, align 8
  br label %63

57:                                               ; preds = %41
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %57, %49
  br label %64

64:                                               ; preds = %63, %37
  br label %70

65:                                               ; preds = %2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %65, %64
  %71 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @nd_set_link(%struct.nameidata* %71, i8* %72)
  ret i8* null
}

declare dso_local %struct.TYPE_7__* @BEFS_I(i32) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @befs_read_lsymlink(%struct.super_block*, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
