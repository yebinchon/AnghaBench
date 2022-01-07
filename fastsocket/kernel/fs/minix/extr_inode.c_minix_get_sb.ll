; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }

@minix_fill_super = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @minix_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %10, align 8
  %11 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @minix_fill_super, align 4
  %16 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %17 = call i32 @get_sb_bdev(%struct.file_system_type* %11, i32 %12, i8* %13, i8* %14, i32 %15, %struct.vfsmount* %16)
  ret i32 %17
}

declare dso_local i32 @get_sb_bdev(%struct.file_system_type*, i32, i8*, i8*, i32, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
