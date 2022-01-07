; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_name.c_hpfs_decide_conv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_name.c_hpfs_decide_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hpfs_inode_info = type { i64 }

@CONV_AUTO = common dso_local global i64 0, align 8
@text_postfix = common dso_local global i64** null, align 8
@text_prefix = common dso_local global i64** null, align 8
@CONV_BINARY = common dso_local global i64 0, align 8
@CONV_TEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_decide_conv(%struct.inode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpfs_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %11)
  store %struct.hpfs_inode_info* %12, %struct.hpfs_inode_info** %7, align 8
  %13 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %7, align 8
  %14 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CONV_AUTO, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %112

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i64**, i64*** @text_postfix, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %20
  %29 = load i64**, i64*** @text_postfix, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @strlen(i64* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %28
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64**, i64*** @text_postfix, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @hpfs_compare_names(i32 %41, i64* %46, i32 %47, i8* %55, i32 %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %38
  br label %108

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %20

65:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i64**, i64*** @text_prefix, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %66
  %75 = load i64**, i64*** @text_prefix, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %75, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @strlen(i64* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %74
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64**, i64*** @text_prefix, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64*, i64** %88, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @hpfs_compare_names(i32 %87, i64* %92, i32 %93, i8* %94, i32 %95, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %84
  br label %108

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %74
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %66

104:                                              ; preds = %66
  %105 = load i64, i64* @CONV_BINARY, align 8
  %106 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %7, align 8
  %107 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %112

108:                                              ; preds = %98, %59
  %109 = load i64, i64* @CONV_TEXT, align 8
  %110 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %7, align 8
  %111 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %104, %18
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @hpfs_compare_names(i32, i64*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
