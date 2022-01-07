; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_fillattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_fillattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fuse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kstat = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fuse_attr*, %struct.kstat*)* @fuse_fillattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_fillattr(%struct.inode* %0, %struct.fuse_attr* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_attr*, align 8
  %6 = alloca %struct.kstat*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kstat*, %struct.kstat** %6, align 8
  %13 = getelementptr inbounds %struct.kstat, %struct.kstat* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 4
  %14 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kstat*, %struct.kstat** %6, align 8
  %18 = getelementptr inbounds %struct.kstat, %struct.kstat* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @S_IFMT, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %25 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 4095
  %28 = or i32 %23, %27
  %29 = load %struct.kstat*, %struct.kstat** %6, align 8
  %30 = getelementptr inbounds %struct.kstat, %struct.kstat* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %32 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kstat*, %struct.kstat** %6, align 8
  %35 = getelementptr inbounds %struct.kstat, %struct.kstat* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %37 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kstat*, %struct.kstat** %6, align 8
  %40 = getelementptr inbounds %struct.kstat, %struct.kstat* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %42 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kstat*, %struct.kstat** %6, align 8
  %45 = getelementptr inbounds %struct.kstat, %struct.kstat* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kstat*, %struct.kstat** %6, align 8
  %50 = getelementptr inbounds %struct.kstat, %struct.kstat* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %52 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kstat*, %struct.kstat** %6, align 8
  %55 = getelementptr inbounds %struct.kstat, %struct.kstat* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %58 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kstat*, %struct.kstat** %6, align 8
  %61 = getelementptr inbounds %struct.kstat, %struct.kstat* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %64 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.kstat*, %struct.kstat** %6, align 8
  %67 = getelementptr inbounds %struct.kstat, %struct.kstat* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %70 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.kstat*, %struct.kstat** %6, align 8
  %73 = getelementptr inbounds %struct.kstat, %struct.kstat* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %76 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.kstat*, %struct.kstat** %6, align 8
  %79 = getelementptr inbounds %struct.kstat, %struct.kstat* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %82 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kstat*, %struct.kstat** %6, align 8
  %85 = getelementptr inbounds %struct.kstat, %struct.kstat* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %88 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.kstat*, %struct.kstat** %6, align 8
  %91 = getelementptr inbounds %struct.kstat, %struct.kstat* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %93 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.kstat*, %struct.kstat** %6, align 8
  %96 = getelementptr inbounds %struct.kstat, %struct.kstat* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = load %struct.kstat*, %struct.kstat** %6, align 8
  %102 = getelementptr inbounds %struct.kstat, %struct.kstat* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
