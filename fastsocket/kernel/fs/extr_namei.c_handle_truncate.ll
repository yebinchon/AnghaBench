; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_handle_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_handle_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.path }
%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @handle_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_truncate(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  store %struct.path* %8, %struct.path** %4, align 8
  %9 = load %struct.path*, %struct.path** %4, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @get_write_access(%struct.inode* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @locks_verify_locked(%struct.inode* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.path*, %struct.path** %4, align 8
  %27 = load i32, i32* @ATTR_MTIME, align 4
  %28 = load i32, i32* @ATTR_CTIME, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ATTR_OPEN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @security_path_truncate(%struct.path* %26, i32 0, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load %struct.path*, %struct.path** %4, align 8
  %38 = getelementptr inbounds %struct.path, %struct.path* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* @ATTR_MTIME, align 4
  %41 = load i32, i32* @ATTR_CTIME, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATTR_OPEN, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = call i32 @do_truncate(%struct.TYPE_2__* %39, i32 0, i32 %44, %struct.file* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %36, %33
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call i32 @put_write_access(%struct.inode* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @locks_verify_locked(%struct.inode*) #1

declare dso_local i32 @security_path_truncate(%struct.path*, i32, i32) #1

declare dso_local i32 @do_truncate(%struct.TYPE_2__*, i32, i32, %struct.file*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
