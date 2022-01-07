; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_do_filldir_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_do_filldir_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_dirent = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@compare_dents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i64*, i8*, i32 (i8*, i8*, i32, i64, i32, i32)*, %struct.gfs2_dirent**, i32, i32*)* @do_filldir_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_filldir_main(%struct.gfs2_inode* %0, i64* %1, i8* %2, i32 (i8*, i8*, i32, i64, i32, i32)* %3, %struct.gfs2_dirent** %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*, i32, i64, i32, i32)*, align 8
  %13 = alloca %struct.gfs2_dirent**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.gfs2_dirent*, align 8
  %17 = alloca %struct.gfs2_dirent*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 (i8*, i8*, i32, i64, i32, i32)* %3, i32 (i8*, i8*, i32, i64, i32, i32)** %12, align 8
  store %struct.gfs2_dirent** %4, %struct.gfs2_dirent*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @compare_dents, align 4
  %27 = call i32 @sort(%struct.gfs2_dirent** %24, i32 %25, i32 8, i32 %26, i32* null)
  %28 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %13, align 8
  %29 = getelementptr inbounds %struct.gfs2_dirent*, %struct.gfs2_dirent** %28, i64 0
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %29, align 8
  store %struct.gfs2_dirent* %30, %struct.gfs2_dirent** %17, align 8
  %31 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %17, align 8
  %32 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be32_to_cpu(i32 %33)
  store i64 %34, i64* %19, align 8
  %35 = load i64, i64* %19, align 8
  %36 = call i64 @gfs2_disk_hash2offset(i64 %35)
  store i64 %36, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %37

37:                                               ; preds = %116, %7
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %37
  %42 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %17, align 8
  store %struct.gfs2_dirent* %42, %struct.gfs2_dirent** %16, align 8
  %43 = load i64, i64* %19, align 8
  store i64 %43, i64* %18, align 8
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %13, align 8
  %49 = load i32, i32* %21, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gfs2_dirent*, %struct.gfs2_dirent** %48, i64 %50
  %52 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %51, align 8
  store %struct.gfs2_dirent* %52, %struct.gfs2_dirent** %17, align 8
  %53 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %17, align 8
  %54 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be32_to_cpu(i32 %55)
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* %19, align 8
  %58 = call i64 @gfs2_disk_hash2offset(i64 %57)
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %116

64:                                               ; preds = %47
  %65 = load i64, i64* %18, align 8
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* %18, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %22, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %125

78:                                               ; preds = %74, %70
  store i32 1, i32* %22, align 4
  br label %80

79:                                               ; preds = %64
  store i32 0, i32* %22, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %90

81:                                               ; preds = %41
  %82 = load i64, i64* %18, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %116

87:                                               ; preds = %81
  %88 = load i64, i64* %18, align 8
  %89 = load i64*, i64** %10, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %12, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %16, align 8
  %94 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %93, i64 1
  %95 = bitcast %struct.gfs2_dirent* %94 to i8*
  %96 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %16, align 8
  %97 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be16_to_cpu(i32 %98)
  %100 = load i64, i64* %18, align 8
  %101 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %16, align 8
  %102 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be64_to_cpu(i32 %104)
  %106 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %16, align 8
  %107 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be16_to_cpu(i32 %108)
  %110 = call i32 %91(i8* %92, i8* %95, i32 %99, i64 %100, i32 %105, i32 %109)
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %23, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %90
  store i32 1, i32* %8, align 4
  br label %125

114:                                              ; preds = %90
  %115 = load i32*, i32** %15, align 8
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %86, %63
  %117 = load i32, i32* %20, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %37

121:                                              ; preds = %37
  %122 = load i64*, i64** %10, align 8
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %113, %77
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @sort(%struct.gfs2_dirent**, i32, i32, i32, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @gfs2_disk_hash2offset(i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
