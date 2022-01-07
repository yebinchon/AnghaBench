; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_ibody_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_ibody_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_xattr_info = type { i32, i32 }
%struct.ext3_xattr_ibody_find = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i8*, i64, i64 }
%struct.ext3_xattr_ibody_header = type { i32 }
%struct.ext3_inode = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@EXT3_STATE_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext3_xattr_info*, %struct.ext3_xattr_ibody_find*)* @ext3_xattr_ibody_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_xattr_ibody_find(%struct.inode* %0, %struct.ext3_xattr_info* %1, %struct.ext3_xattr_ibody_find* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext3_xattr_info*, align 8
  %7 = alloca %struct.ext3_xattr_ibody_find*, align 8
  %8 = alloca %struct.ext3_xattr_ibody_header*, align 8
  %9 = alloca %struct.ext3_inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext3_xattr_info* %1, %struct.ext3_xattr_info** %6, align 8
  store %struct.ext3_xattr_ibody_find* %2, %struct.ext3_xattr_ibody_find** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_6__* @EXT3_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

17:                                               ; preds = %3
  %18 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %19 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %18, i32 0, i32 1
  %20 = call %struct.ext3_inode* @ext3_raw_inode(i32* %19)
  store %struct.ext3_inode* %20, %struct.ext3_inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.ext3_inode*, %struct.ext3_inode** %9, align 8
  %23 = call %struct.ext3_xattr_ibody_header* @IHDR(%struct.inode* %21, %struct.ext3_inode* %22)
  store %struct.ext3_xattr_ibody_header* %23, %struct.ext3_xattr_ibody_header** %8, align 8
  %24 = load %struct.ext3_xattr_ibody_header*, %struct.ext3_xattr_ibody_header** %8, align 8
  %25 = call i64 @IFIRST(%struct.ext3_xattr_ibody_header* %24)
  %26 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %27 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i64 %25, i64* %28, align 8
  %29 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %30 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 %25, i64* %31, align 8
  %32 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %33 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %37 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i64 %35, i64* %38, align 8
  %39 = load %struct.ext3_inode*, %struct.ext3_inode** %9, align 8
  %40 = bitcast %struct.ext3_inode* %39 to i8*
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_5__* @EXT3_SB(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %40, i64 %47
  %49 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %50 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call %struct.TYPE_6__* @EXT3_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @EXT3_STATE_XATTR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %17
  %60 = load %struct.ext3_xattr_ibody_header*, %struct.ext3_xattr_ibody_header** %8, align 8
  %61 = call i64 @IFIRST(%struct.ext3_xattr_ibody_header* %60)
  %62 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %63 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @ext3_xattr_check_names(i64 %61, i8* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %110

71:                                               ; preds = %59
  %72 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %73 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load %struct.ext3_xattr_info*, %struct.ext3_xattr_info** %6, align 8
  %76 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ext3_xattr_info*, %struct.ext3_xattr_info** %6, align 8
  %79 = getelementptr inbounds %struct.ext3_xattr_info, %struct.ext3_xattr_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %82 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %86 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = ptrtoint i8* %84 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @ext3_xattr_find_entry(i64* %74, i32 %77, i32 %80, i8* %93, i32 0)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %71
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @ENODATA, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %110

104:                                              ; preds = %97, %71
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.ext3_xattr_ibody_find*, %struct.ext3_xattr_ibody_find** %7, align 8
  %107 = getelementptr inbounds %struct.ext3_xattr_ibody_find, %struct.ext3_xattr_ibody_find* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %17
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %102, %69, %16
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_6__* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.ext3_inode* @ext3_raw_inode(i32*) #1

declare dso_local %struct.ext3_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext3_inode*) #1

declare dso_local i64 @IFIRST(%struct.ext3_xattr_ibody_header*) #1

declare dso_local %struct.TYPE_5__* @EXT3_SB(i32) #1

declare dso_local i32 @ext3_xattr_check_names(i64, i8*) #1

declare dso_local i32 @ext3_xattr_find_entry(i64*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
