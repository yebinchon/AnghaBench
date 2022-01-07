; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_rootfh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_rootfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.knfsd_fh = type { i32 }
%struct.svc_export = type { i32 }
%struct.path = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.svc_fh = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"nfsd: exp_rootfh path not found %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"nfsd: exp_rootfh(%s [%p] %s:%s/%ld)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exp_rootfh(%struct.TYPE_8__* %0, i8* %1, %struct.knfsd_fh* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.knfsd_fh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.path, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.svc_fh, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.knfsd_fh* %2, %struct.knfsd_fh** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @kern_path(i8* %17, i32 0, %struct.path* %11)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %5, align 4
  br label %74

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %12, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %29, %struct.TYPE_9__* %31, i32 %34, i32 %39, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = call %struct.svc_export* @exp_parent(%struct.TYPE_8__* %44, %struct.path* %11)
  store %struct.svc_export* %45, %struct.svc_export** %10, align 8
  %46 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %47 = call i64 @IS_ERR(%struct.svc_export* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %24
  %50 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.svc_export* %50)
  store i32 %51, i32* %14, align 4
  br label %71

52:                                               ; preds = %24
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @fh_init(%struct.svc_fh* %13, i32 %53)
  %55 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %56 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i64 @fh_compose(%struct.svc_fh* %13, %struct.svc_export* %55, %struct.TYPE_9__* %57, i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %64

63:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load %struct.knfsd_fh*, %struct.knfsd_fh** %8, align 8
  %66 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %13, i32 0, i32 0
  %67 = call i32 @memcpy(%struct.knfsd_fh* %65, i32* %66, i32 4)
  %68 = call i32 @fh_put(%struct.svc_fh* %13)
  %69 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %70 = call i32 @exp_put(%struct.svc_export* %69)
  br label %71

71:                                               ; preds = %64, %49
  %72 = call i32 @path_put(%struct.path* %11)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local i32 @dprintk(i8*, i8*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local %struct.svc_export* @exp_parent(%struct.TYPE_8__*, %struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, %struct.svc_export*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @memcpy(%struct.knfsd_fh*, i32*, i32) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
