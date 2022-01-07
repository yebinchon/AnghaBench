; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"file %s/%s, address %lu - %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s/%s validation failed, error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @smb_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call i32 @DENTRY_PATH(%struct.dentry* %11)
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @VERBOSE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i32 @smb_revalidate_inode(%struct.dentry* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @DENTRY_PATH(%struct.dentry* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PARANOIA(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = call i32 @generic_file_mmap(%struct.file* %30, %struct.vm_area_struct* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @VERBOSE(i8*, i32, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @PARANOIA(i8*, i32, i32) #1

declare dso_local i32 @generic_file_mmap(%struct.file*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
