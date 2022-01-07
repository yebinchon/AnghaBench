; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_sort_pacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_sort_pacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ACL_USER = common dso_local global i64 0, align 8
@ACL_GROUP_OBJ = common dso_local global i64 0, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl*)* @sort_pacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_pacl(%struct.posix_acl* %0) #0 {
  %2 = alloca %struct.posix_acl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %2, align 8
  %5 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %6 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sle i32 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %13 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACL_USER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @sort_pacl_range(%struct.posix_acl* %26, i32 1, i32 %28)
  %30 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %31 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %55, %25
  %45 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %46 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ACL_GROUP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @sort_pacl_range(%struct.posix_acl* %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %9
  ret void
}

declare dso_local i32 @sort_pacl_range(%struct.posix_acl*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
