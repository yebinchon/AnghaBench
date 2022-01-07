; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i64 }
%struct.fat_mount_options = type { i32 }
%struct.TYPE_2__ = type { %struct.fat_mount_options }

@MSDOS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, %struct.qstr*)* @msdos_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_cmp(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.fat_mount_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @MSDOS_SB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.fat_mount_options* %16, %struct.fat_mount_options** %7, align 8
  %17 = load i32, i32* @MSDOS_NAME, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MSDOS_NAME, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load %struct.qstr*, %struct.qstr** %5, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.qstr*, %struct.qstr** %5, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fat_mount_options*, %struct.fat_mount_options** %7, align 8
  %31 = call i32 @msdos_format_name(i8* %26, i64 %29, i8* %20, %struct.fat_mount_options* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.qstr*, %struct.qstr** %6, align 8
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.qstr*, %struct.qstr** %6, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fat_mount_options*, %struct.fat_mount_options** %7, align 8
  %43 = call i32 @msdos_format_name(i8* %38, i64 %41, i8* %23, %struct.fat_mount_options* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* @MSDOS_NAME, align 4
  %49 = call i32 @memcmp(i8* %20, i8* %23, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %73, %47
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51

53:                                               ; preds = %46, %34
  store i32 1, i32* %11, align 4
  %54 = load %struct.qstr*, %struct.qstr** %5, align 8
  %55 = getelementptr inbounds %struct.qstr, %struct.qstr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.qstr*, %struct.qstr** %6, align 8
  %58 = getelementptr inbounds %struct.qstr, %struct.qstr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = load %struct.qstr*, %struct.qstr** %5, align 8
  %63 = getelementptr inbounds %struct.qstr, %struct.qstr* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.qstr*, %struct.qstr** %6, align 8
  %66 = getelementptr inbounds %struct.qstr, %struct.qstr* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.qstr*, %struct.qstr** %5, align 8
  %69 = getelementptr inbounds %struct.qstr, %struct.qstr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memcmp(i8* %64, i8* %67, i32 %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %61, %53
  br label %50
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msdos_format_name(i8*, i64, i8*, %struct.fat_mount_options*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
