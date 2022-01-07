; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_namei.c_isofs_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_namei.c_isofs_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.dentry*, %struct.TYPE_4__*, %struct.qstr*)* }
%struct.qstr = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i32)* @isofs_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_cmp(%struct.dentry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %52

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %37

29:                                               ; preds = %15
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i32 2, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dentry*, %struct.TYPE_4__*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.TYPE_4__*, %struct.qstr*)** %46, align 8
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = call i32 %47(%struct.dentry* %48, %struct.TYPE_4__* %50, %struct.qstr* %8)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %27, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
