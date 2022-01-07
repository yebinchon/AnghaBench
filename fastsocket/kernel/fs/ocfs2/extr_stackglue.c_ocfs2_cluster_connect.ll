; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ocfs2_cluster_connection*)* }
%struct.ocfs2_cluster_connection = type { i32, void (i32, i8*)*, i32, i8*, i32 }

@GROUP_NAME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lproto = common dso_local global %struct.TYPE_5__* null, align 8
@active_stack = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cluster_connect(i8* %0, i8* %1, i32 %2, void (i32, i8*)* %3, i8* %4, %struct.ocfs2_cluster_connection** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ocfs2_cluster_connection**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_cluster_connection*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store void (i32, i8*)* %3, void (i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.ocfs2_cluster_connection** %5, %struct.ocfs2_cluster_connection*** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ocfs2_cluster_connection**, %struct.ocfs2_cluster_connection*** %12, align 8
  %20 = icmp eq %struct.ocfs2_cluster_connection** %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load void (i32, i8*)*, void (i32, i8*)** %10, align 8
  %24 = icmp eq void (i32, i8*)* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @GROUP_NAME_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  br label %89

33:                                               ; preds = %6
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ocfs2_cluster_connection* @kzalloc(i32 40, i32 %34)
  store %struct.ocfs2_cluster_connection* %35, %struct.ocfs2_cluster_connection** %14, align 8
  %36 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %37 = icmp ne %struct.ocfs2_cluster_connection* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %89

41:                                               ; preds = %33
  %42 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %43 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memcpy(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %50 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load void (i32, i8*)*, void (i32, i8*)** %10, align 8
  %52 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %53 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %52, i32 0, i32 1
  store void (i32, i8*)* %51, void (i32, i8*)** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %56 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lproto, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %61 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @ocfs2_stack_driver_get(i8* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %41
  br label %82

67:                                               ; preds = %41
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @active_stack, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.ocfs2_cluster_connection*)*, i32 (%struct.ocfs2_cluster_connection*)** %71, align 8
  %73 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %74 = call i32 %72(%struct.ocfs2_cluster_connection* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 (...) @ocfs2_stack_driver_put()
  br label %82

79:                                               ; preds = %67
  %80 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %81 = load %struct.ocfs2_cluster_connection**, %struct.ocfs2_cluster_connection*** %12, align 8
  store %struct.ocfs2_cluster_connection* %80, %struct.ocfs2_cluster_connection** %81, align 8
  br label %82

82:                                               ; preds = %79, %77, %66
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %14, align 8
  %87 = call i32 @kfree(%struct.ocfs2_cluster_connection* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %38, %30
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_cluster_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_stack_driver_get(i8*) #1

declare dso_local i32 @ocfs2_stack_driver_put(...) #1

declare dso_local i32 @kfree(%struct.ocfs2_cluster_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
