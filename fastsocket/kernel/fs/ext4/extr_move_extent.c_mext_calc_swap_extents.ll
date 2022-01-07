; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_calc_swap_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_calc_swap_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent = type { i8*, i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_extent*, %struct.ext4_extent*, i32, i32, i32)* @mext_calc_swap_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_calc_swap_extents(%struct.ext4_extent* %0, %struct.ext4_extent* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca %struct.ext4_extent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent, align 8
  %15 = alloca %struct.ext4_extent, align 8
  store %struct.ext4_extent* %0, %struct.ext4_extent** %7, align 8
  store %struct.ext4_extent* %1, %struct.ext4_extent** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %23 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %5
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %29 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %33 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %32)
  %34 = add nsw i32 %31, %33
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27, %5
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %148

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %44 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %41
  %49 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %50 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %54 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %53)
  %55 = add nsw i32 %52, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %48, %41
  %60 = load i32, i32* @ENODATA, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %148

62:                                               ; preds = %48
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %64 = bitcast %struct.ext4_extent* %14 to i8*
  %65 = bitcast %struct.ext4_extent* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  %66 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %67 = bitcast %struct.ext4_extent* %15 to i8*
  %68 = bitcast %struct.ext4_extent* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %71 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = sub nsw i32 %69, %73
  store i32 %74, i32* %12, align 4
  %75 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %76 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %77 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %76)
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %75, i32 %79)
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %82 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @cpu_to_le32(i32 %86)
  %88 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %89 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %91 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le16_to_cpu(i8* %92)
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %98 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %101 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %100)
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %62
  %104 = load i32, i32* %11, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %107 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %103, %62
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %111 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = sub nsw i32 %109, %113
  store i32 %114, i32* %13, align 4
  %115 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %117 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %116)
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %115, i32 %119)
  %121 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %122 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %121)
  %123 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %124 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %123)
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %124, %125
  %127 = icmp sgt i32 %122, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %108
  %129 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %130 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @le16_to_cpu(i8* %131)
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %132, %133
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %137 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %128, %108
  %139 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %140 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %139)
  %141 = call i8* @cpu_to_le16(i32 %140)
  %142 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %143 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %145 = call i32 @copy_extent_status(%struct.ext4_extent* %15, %struct.ext4_extent* %144)
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %147 = call i32 @copy_extent_status(%struct.ext4_extent* %14, %struct.ext4_extent* %146)
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %138, %59, %38
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @copy_extent_status(%struct.ext4_extent*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
