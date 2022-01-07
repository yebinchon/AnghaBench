; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32 }
%struct.file = type { i16, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.coda_file_info = type { i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.coda_inode_info = type { i64 }

@O_EXCL = common dso_local global i16 0, align 2
@CODA_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.coda_file_info*, align 8
  %8 = alloca %struct.coda_inode_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @O_EXCL, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %5, align 2
  %20 = load i16, i16* %5, align 2
  %21 = call zeroext i16 @coda_flags_to_cflags(i16 zeroext %20)
  store i16 %21, i16* %6, align 2
  store i32 0, i32* %10, align 4
  %22 = call i32 (...) @lock_kernel()
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call %struct.coda_file_info* @CODA_FTOC(%struct.file* %23)
  store %struct.coda_file_info* %24, %struct.coda_file_info** %7, align 8
  %25 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %26 = icmp ne %struct.coda_file_info* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %29 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CODA_MAGIC, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %2
  %34 = phi i1 [ true, %2 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call i32 @coda_i2f(%struct.inode* %40)
  %42 = load i16, i16* %6, align 2
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @venus_close(i32 %39, i32 %41, i16 zeroext %42, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %50 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.inode*, %struct.inode** %55, align 8
  store %struct.inode* %56, %struct.inode** %9, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call %struct.coda_inode_info* @ITOC(%struct.inode* %57)
  store %struct.coda_inode_info* %58, %struct.coda_inode_info** %8, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = icmp eq i32* %61, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %33
  %66 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %67 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %70 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %74 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %65
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  br label %82

82:                                               ; preds = %77, %65
  br label %83

83:                                               ; preds = %82, %33
  %84 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %85 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @fput(%struct.TYPE_8__* %86)
  %88 = load %struct.file*, %struct.file** %4, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load %struct.file*, %struct.file** %4, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local zeroext i16 @coda_flags_to_cflags(i16 zeroext) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.coda_file_info* @CODA_FTOC(%struct.file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @venus_close(i32, i32, i16 zeroext, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @fput(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
