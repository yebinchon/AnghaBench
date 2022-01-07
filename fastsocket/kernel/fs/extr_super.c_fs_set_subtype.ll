; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_fs_set_subtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_fs_set_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.vfsmount*, i8*)* @fs_set_subtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @fs_set_subtype(%struct.vfsmount* %0, i8* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 46)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %43

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @kstrdup(i8* %25, i32 %26)
  %28 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %29 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %35 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  br label %43

41:                                               ; preds = %24
  %42 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %42, %struct.vfsmount** %3, align 8
  br label %48

43:                                               ; preds = %40, %21
  %44 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %45 = call i32 @mntput(%struct.vfsmount* %44)
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.vfsmount* @ERR_PTR(i32 %46)
  store %struct.vfsmount* %47, %struct.vfsmount** %3, align 8
  br label %48

48:                                               ; preds = %43, %41
  %49 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  ret %struct.vfsmount* %49
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
