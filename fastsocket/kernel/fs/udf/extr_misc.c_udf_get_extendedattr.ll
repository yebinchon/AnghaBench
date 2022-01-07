; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_get_extendedattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_get_extendedattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genericFormat = type { i64, i32, i32 }
%struct.inode = type { i32 }
%struct.udf_inode_info = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64* }
%struct.extendedAttrHeaderDesc = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@TAG_IDENT_EAHD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.genericFormat* @udf_get_extendedattr(%struct.inode* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.genericFormat*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.genericFormat*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.udf_inode_info*, align 8
  %12 = alloca %struct.extendedAttrHeaderDesc*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* null, i64** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %13)
  store %struct.udf_inode_info* %14, %struct.udf_inode_info** %11, align 8
  %15 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %16 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %9, align 8
  %19 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %20 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %100

23:                                               ; preds = %3
  %24 = load i64*, i64** %9, align 8
  %25 = bitcast i64* %24 to %struct.extendedAttrHeaderDesc*
  store %struct.extendedAttrHeaderDesc* %25, %struct.extendedAttrHeaderDesc** %12, align 8
  %26 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %12, align 8
  %27 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @TAG_IDENT_EAHD, align 4
  %31 = call i64 @cpu_to_le16(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %23
  %34 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %12, align 8
  %35 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %41 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %23
  store %struct.genericFormat* null, %struct.genericFormat** %4, align 8
  br label %101

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 2048
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 24, i32* %10, align 4
  br label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 65536
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %12, align 8
  %55 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %10, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %12, align 8
  %60 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le32_to_cpu(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %98, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %68 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load i64*, i64** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = bitcast i64* %75 to %struct.genericFormat*
  store %struct.genericFormat* %76, %struct.genericFormat** %8, align 8
  %77 = load %struct.genericFormat*, %struct.genericFormat** %8, align 8
  %78 = getelementptr inbounds %struct.genericFormat, %struct.genericFormat* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load %struct.genericFormat*, %struct.genericFormat** %8, align 8
  %85 = getelementptr inbounds %struct.genericFormat, %struct.genericFormat* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load %struct.genericFormat*, %struct.genericFormat** %8, align 8
  store %struct.genericFormat* %90, %struct.genericFormat** %4, align 8
  br label %101

91:                                               ; preds = %83, %71
  %92 = load %struct.genericFormat*, %struct.genericFormat** %8, align 8
  %93 = getelementptr inbounds %struct.genericFormat, %struct.genericFormat* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %91
  br label %65

99:                                               ; preds = %65
  br label %100

100:                                              ; preds = %99, %3
  store %struct.genericFormat* null, %struct.genericFormat** %4, align 8
  br label %101

101:                                              ; preds = %100, %89, %45
  %102 = load %struct.genericFormat*, %struct.genericFormat** %4, align 8
  ret %struct.genericFormat* %102
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
