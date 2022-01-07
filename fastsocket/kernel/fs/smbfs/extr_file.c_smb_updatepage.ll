; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_updatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_updatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.page = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"(%s/%s %d@%lld)\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*, i64, i32)* @smb_updatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_updatepage(%struct.file* %0, %struct.page* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %9, align 8
  %15 = call i32 @DENTRY_PATH(%struct.dentry* %14)
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @DEBUG1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i64 %23)
  %25 = load %struct.dentry*, %struct.dentry** %9, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @smb_writepage_sync(i32 %27, %struct.page* %28, i64 %29, i32 %30)
  ret i32 %31
}

declare dso_local i32 @DEBUG1(i8*, i32, i32, i64) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @smb_writepage_sync(i32, %struct.page*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
