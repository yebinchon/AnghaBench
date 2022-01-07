; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_ibody_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_ibody_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_xattr_ibody_header = type { i32 }
%struct.ext3_inode = type { i32 }
%struct.ext3_iloc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EXT3_STATE_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @ext3_xattr_ibody_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_xattr_ibody_list(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext3_xattr_ibody_header*, align 8
  %9 = alloca %struct.ext3_inode*, align 8
  %10 = alloca %struct.ext3_iloc, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EXT3_STATE_XATTR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @ext3_get_inode_loc(%struct.inode* %22, %struct.ext3_iloc* %10)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %21
  %29 = call %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc* %10)
  store %struct.ext3_inode* %29, %struct.ext3_inode** %9, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load %struct.ext3_inode*, %struct.ext3_inode** %9, align 8
  %32 = call %struct.ext3_xattr_ibody_header* @IHDR(%struct.inode* %30, %struct.ext3_inode* %31)
  store %struct.ext3_xattr_ibody_header* %32, %struct.ext3_xattr_ibody_header** %8, align 8
  %33 = load %struct.ext3_inode*, %struct.ext3_inode** %9, align 8
  %34 = bitcast %struct.ext3_inode* %33 to i8*
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_3__* @EXT3_SB(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %34, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load %struct.ext3_xattr_ibody_header*, %struct.ext3_xattr_ibody_header** %8, align 8
  %44 = call i32 @IFIRST(%struct.ext3_xattr_ibody_header* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @ext3_xattr_check_names(i32 %44, i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %57

50:                                               ; preds = %28
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load %struct.ext3_xattr_ibody_header*, %struct.ext3_xattr_ibody_header** %8, align 8
  %53 = call i32 @IFIRST(%struct.ext3_xattr_ibody_header* %52)
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @ext3_xattr_list_entries(%struct.inode* %51, i32 %53, i8* %54, i64 %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %50, %49
  %58 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @brelse(i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %26, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_4__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_get_inode_loc(%struct.inode*, %struct.ext3_iloc*) #1

declare dso_local %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc*) #1

declare dso_local %struct.ext3_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext3_inode*) #1

declare dso_local %struct.TYPE_3__* @EXT3_SB(i32) #1

declare dso_local i32 @ext3_xattr_check_names(i32, i8*) #1

declare dso_local i32 @IFIRST(%struct.ext3_xattr_ibody_header*) #1

declare dso_local i32 @ext3_xattr_list_entries(%struct.inode*, i32, i8*, i64) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
