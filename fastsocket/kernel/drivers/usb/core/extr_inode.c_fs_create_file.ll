; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_fs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_fs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.file_operations*, i8* }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"creating file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, i32, %struct.dentry*, i8*, %struct.file_operations*, i32, i32)* @fs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fs_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.file_operations* %4, %struct.file_operations** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = call i32 @fs_create_by_name(i8* %19, i32 %20, %struct.dentry* %21, %struct.dentry** %15)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store %struct.dentry* null, %struct.dentry** %15, align 8
  br label %61

26:                                               ; preds = %7
  %27 = load %struct.dentry*, %struct.dentry** %15, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.dentry*, %struct.dentry** %15, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i8* %35, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %42 = icmp ne %struct.file_operations* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %45 = load %struct.dentry*, %struct.dentry** %15, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store %struct.file_operations* %44, %struct.file_operations** %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.dentry*, %struct.dentry** %15, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.dentry*, %struct.dentry** %15, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  br label %60

60:                                               ; preds = %49, %26
  br label %61

61:                                               ; preds = %60, %25
  %62 = load %struct.dentry*, %struct.dentry** %15, align 8
  ret %struct.dentry* %62
}

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @fs_create_by_name(i8*, i32, %struct.dentry*, %struct.dentry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
