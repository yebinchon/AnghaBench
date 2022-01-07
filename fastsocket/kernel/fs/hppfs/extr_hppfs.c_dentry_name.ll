; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_dentry_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_dentry_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i32)* @dentry_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dentry_name(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  br label %13

13:                                               ; preds = %36, %2
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = icmp ne %struct.dentry* %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = call i64 @is_pid(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %36

28:                                               ; preds = %19
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load %struct.dentry*, %struct.dentry** %38, align 8
  store %struct.dentry* %39, %struct.dentry** %6, align 8
  br label %13

40:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kmalloc(i32 %48, i32 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %108

54:                                               ; preds = %40
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %59, %struct.dentry** %6, align 8
  br label %60

60:                                               ; preds = %81, %54
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.dentry*, %struct.dentry** %62, align 8
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = icmp ne %struct.dentry* %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %60
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = call i64 @is_pid(%struct.dentry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %71 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %71, i32* %11, align 4
  br label %81

72:                                               ; preds = %66
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %9, align 8
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %72, %70
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 47, i8* %89, align 1
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @strncpy(i8* %94, i8* %95, i32 %96)
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = load %struct.dentry*, %struct.dentry** %99, align 8
  store %struct.dentry* %100, %struct.dentry** %6, align 8
  br label %60

101:                                              ; preds = %60
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i32 @strncpy(i8* %102, i8* %103, i32 %105)
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %101, %53
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i64 @is_pid(%struct.dentry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
