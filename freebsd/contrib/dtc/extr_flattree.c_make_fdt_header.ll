; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_make_fdt_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_make_fdt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.version_info = type { i32, i32, i32, i32 }

@FDT_MAGIC = common dso_local global i32 0, align 4
@FTF_BOOTCPUID = common dso_local global i32 0, align 4
@FTF_STRTABSIZE = common dso_local global i32 0, align 4
@FTF_STRUCTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdt_header*, %struct.version_info*, i32, i32, i32, i32)* @make_fdt_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_fdt_header(%struct.fdt_header* %0, %struct.version_info* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fdt_header*, align 8
  %8 = alloca %struct.version_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fdt_header* %0, %struct.fdt_header** %7, align 8
  store %struct.version_info* %1, %struct.version_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %19 = call i32 @memset(%struct.fdt_header* %18, i32 255, i32 80)
  %20 = load i32, i32* @FDT_MAGIC, align 4
  %21 = call i8* @cpu_to_fdt32(i32 %20)
  %22 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %23 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load %struct.version_info*, %struct.version_info** %8, align 8
  %25 = getelementptr inbounds %struct.version_info, %struct.version_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_fdt32(i32 %26)
  %28 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %29 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load %struct.version_info*, %struct.version_info** %8, align 8
  %31 = getelementptr inbounds %struct.version_info, %struct.version_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_fdt32(i32 %32)
  %34 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %35 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load %struct.version_info*, %struct.version_info** %8, align 8
  %37 = getelementptr inbounds %struct.version_info, %struct.version_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ALIGN(i32 %38, i32 8)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i8* @cpu_to_fdt32(i32 %40)
  %42 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %43 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @cpu_to_fdt32(i32 %46)
  %48 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %49 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i8* @cpu_to_fdt32(i32 %54)
  %56 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %57 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i8* @cpu_to_fdt32(i32 %64)
  %66 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %67 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.version_info*, %struct.version_info** %8, align 8
  %69 = getelementptr inbounds %struct.version_info, %struct.version_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FTF_BOOTCPUID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %6
  %75 = load i32, i32* %12, align 4
  %76 = call i8* @cpu_to_fdt32(i32 %75)
  %77 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %78 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %6
  %80 = load %struct.version_info*, %struct.version_info** %8, align 8
  %81 = getelementptr inbounds %struct.version_info, %struct.version_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FTF_STRTABSIZE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @cpu_to_fdt32(i32 %87)
  %89 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %90 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.version_info*, %struct.version_info** %8, align 8
  %93 = getelementptr inbounds %struct.version_info, %struct.version_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FTF_STRUCTSIZE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @cpu_to_fdt32(i32 %99)
  %101 = load %struct.fdt_header*, %struct.fdt_header** %7, align 8
  %102 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %91
  ret void
}

declare dso_local i32 @memset(%struct.fdt_header*, i32, i32) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
