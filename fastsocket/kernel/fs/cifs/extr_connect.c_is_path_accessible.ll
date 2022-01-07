; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_is_path_accessible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_is_path_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)* @is_path_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_path_accessible(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 4, i32 %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %60

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %25 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %28 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @CIFSSMBQPathInfo(i32 %20, %struct.cifs_tcon* %21, i8* %22, i32* %23, i32 0, i32 %26, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %37, %19
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %48 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %51 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @SMBQueryInformation(i32 %43, %struct.cifs_tcon* %44, i8* %45, i32* %46, i32 %49, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %42, %37
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %16
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @CIFSSMBQPathInfo(i32, %struct.cifs_tcon*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @SMBQueryInformation(i32, %struct.cifs_tcon*, i8*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
