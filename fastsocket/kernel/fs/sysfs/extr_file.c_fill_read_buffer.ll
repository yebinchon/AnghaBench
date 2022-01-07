; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_fill_read_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_fill_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kobject* }
%struct.kobject = type { i32 }
%struct.sysfs_buffer = type { i8*, i8*, i64, i32, %struct.sysfs_ops* }
%struct.sysfs_ops = type { i8* (%struct.kobject.0*, i32, i8*)* }
%struct.kobject.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"fill_read_buffer: %s returned bad count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.sysfs_buffer*)* @fill_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_read_buffer(%struct.dentry* %0, %struct.sysfs_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.sysfs_buffer*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.sysfs_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.sysfs_buffer* %1, %struct.sysfs_buffer** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  store %struct.sysfs_dirent* %13, %struct.sysfs_dirent** %6, align 8
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %15 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.kobject*, %struct.kobject** %18, align 8
  store %struct.kobject* %19, %struct.kobject** %7, align 8
  %20 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %20, i32 0, i32 4
  %22 = load %struct.sysfs_ops*, %struct.sysfs_ops** %21, align 8
  store %struct.sysfs_ops* %22, %struct.sysfs_ops** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @get_zeroed_page(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %97

41:                                               ; preds = %33
  %42 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %43 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %41
  %49 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %50 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @atomic_read(i32* %53)
  %55 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sysfs_ops*, %struct.sysfs_ops** %8, align 8
  %58 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %57, i32 0, i32 0
  %59 = load i8* (%struct.kobject.0*, i32, i8*)*, i8* (%struct.kobject.0*, i32, i8*)** %58, align 8
  %60 = load %struct.kobject*, %struct.kobject** %7, align 8
  %61 = bitcast %struct.kobject* %60 to %struct.kobject.0*
  %62 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %63 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* %59(%struct.kobject.0* %61, i32 %65, i8* %68)
  store i8* %69, i8** %10, align 8
  %70 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %71 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** @PAGE_SIZE, align 8
  %74 = icmp uge i8* %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %48
  %76 = load %struct.sysfs_ops*, %struct.sysfs_ops** %8, align 8
  %77 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %76, i32 0, i32 0
  %78 = load i8* (%struct.kobject.0*, i32, i8*)*, i8* (%struct.kobject.0*, i32, i8*)** %77, align 8
  %79 = ptrtoint i8* (%struct.kobject.0*, i32, i8*)* %78 to i64
  %80 = call i32 @print_symbol(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i8*, i8** @PAGE_SIZE, align 8
  %82 = getelementptr i8, i8* %81, i64 -1
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %75, %48
  %84 = load i8*, i8** %10, align 8
  %85 = icmp uge i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %88 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %91 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %95

92:                                               ; preds = %83
  %93 = load i8*, i8** %10, align 8
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %45, %38
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @print_symbol(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
