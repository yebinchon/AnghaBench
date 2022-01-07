; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_exofs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_exofs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.exofs_mountopt = type { i8* }

@exofs_fill_super = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @exofs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exofs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.exofs_mountopt, align 8
  %13 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i32 @parse_options(i8* %14, %struct.exofs_mountopt* %12)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.exofs_mountopt, %struct.exofs_mountopt* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @exofs_fill_super, align 4
  %26 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %27 = call i32 @get_sb_nodev(%struct.file_system_type* %23, i32 %24, %struct.exofs_mountopt* %12, i32 %25, %struct.vfsmount* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @parse_options(i8*, %struct.exofs_mountopt*) #1

declare dso_local i32 @get_sb_nodev(%struct.file_system_type*, i32, %struct.exofs_mountopt*, i32, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
