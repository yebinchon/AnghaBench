; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32, i32 }
%struct.fat_mount_options = type { i32 }
%struct.TYPE_2__ = type { %struct.fat_mount_options }

@MSDOS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @msdos_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_hash(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.fat_mount_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @MSDOS_SB(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.fat_mount_options* %13, %struct.fat_mount_options** %5, align 8
  %14 = load i32, i32* @MSDOS_NAME, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.qstr*, %struct.qstr** %4, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qstr*, %struct.qstr** %4, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fat_mount_options*, %struct.fat_mount_options** %5, align 8
  %25 = call i32 @msdos_format_name(i32 %20, i32 %23, i8* %17, %struct.fat_mount_options* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @MSDOS_NAME, align 4
  %30 = call i32 @full_name_hash(i8* %17, i32 %29)
  %31 = load %struct.qstr*, %struct.qstr** %4, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %34)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msdos_format_name(i32, i32, i8*, %struct.fat_mount_options*) #1

declare dso_local i32 @full_name_hash(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
