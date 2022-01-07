; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_do_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_do_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, %struct.file*, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @fuse_do_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_do_truncate(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.iattr, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load i32, i32* @ATTR_SIZE, align 4
  %11 = getelementptr inbounds %struct.iattr, %struct.iattr* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @i_size_read(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %4, i32 0, i32 1
  store %struct.file* %15, %struct.file** %16, align 8
  %17 = load i32, i32* @ATTR_FILE, align 4
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = call i32 @fuse_do_setattr(%struct.inode* %21, %struct.iattr* %4, %struct.file* %22)
  ret void
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @fuse_do_setattr(%struct.inode*, %struct.iattr*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
