; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_insert_inside_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_insert_inside_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent = type { i64 }
%struct.ext4_extent_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent_header*, i32)* @mext_insert_inside_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mext_insert_inside_block(%struct.ext4_extent* %0, %struct.ext4_extent* %1, %struct.ext4_extent* %2, %struct.ext4_extent* %3, %struct.ext4_extent* %4, %struct.ext4_extent_header* %5, i32 %6) #0 {
  %8 = alloca %struct.ext4_extent*, align 8
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca %struct.ext4_extent*, align 8
  %13 = alloca %struct.ext4_extent_header*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ext4_extent* %0, %struct.ext4_extent** %8, align 8
  store %struct.ext4_extent* %1, %struct.ext4_extent** %9, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %10, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %11, align 8
  store %struct.ext4_extent* %4, %struct.ext4_extent** %12, align 8
  store %struct.ext4_extent_header* %5, %struct.ext4_extent_header** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %7
  %20 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %21 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %22 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %21)
  %23 = icmp ult %struct.ext4_extent* %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %26 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %25)
  %27 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %26, i64 1
  %28 = ptrtoint %struct.ext4_extent* %27 to i64
  %29 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %30 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %29, i64 1
  %31 = ptrtoint %struct.ext4_extent* %30 to i64
  %32 = sub i64 %28, %31
  store i64 %32, i64* %16, align 8
  %33 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %34 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %33, i64 1
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %34, i64 %36
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %39 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %38, i64 1
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @memmove(%struct.ext4_extent* %37, %struct.ext4_extent* %39, i64 %40)
  br label %42

42:                                               ; preds = %24, %19, %7
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %44 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %49 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %51, i64 %54
  %56 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %55, i32 0, i32 0
  store i64 %50, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %59 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %63, i64 %65
  %67 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %68 = bitcast %struct.ext4_extent* %66 to i8*
  %69 = bitcast %struct.ext4_extent* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %70, i64 %73
  %75 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %76 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %75)
  %77 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %74, i32 %76)
  br label %78

78:                                               ; preds = %62, %57
  %79 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %80 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %84, i64 %86
  %88 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %89 = bitcast %struct.ext4_extent* %87 to i8*
  %90 = bitcast %struct.ext4_extent* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 8, i1 false)
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %13, align 8
  %93 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %92, i32 0, i32 0
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @le16_add_cpu(i32* %93, i32 %94)
  ret void
}

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @memmove(%struct.ext4_extent*, %struct.ext4_extent*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
