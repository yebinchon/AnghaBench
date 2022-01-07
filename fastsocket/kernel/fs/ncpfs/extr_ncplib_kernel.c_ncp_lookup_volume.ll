; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_lookup_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_lookup_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }
%struct.nw_info_struct = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@aDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_lookup_volume(%struct.ncp_server* %0, i8* %1, %struct.nw_info_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncp_server*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nw_info_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.nw_info_struct* %2, %struct.nw_info_struct** %7, align 8
  %9 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %10 = call i32 @memset(%struct.nw_info_struct* %9, i32 0, i32 80)
  %11 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %14 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %13, i32 0, i32 11
  %15 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %16 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %15, i32 0, i32 10
  %17 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %18 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %17, i32 0, i32 9
  %19 = call i32 @ncp_get_volume_root(%struct.ncp_server* %11, i8* %12, i32* %14, i32* %16, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %28 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %27, i32 0, i32 7
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %30 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %34 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @memcpy(i32 %31, i8* %32, i64 %36)
  %38 = load i32, i32* @aDIR, align 4
  %39 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %40 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = call i8* @cpu_to_le16(i32 0)
  %42 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %43 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %45 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %44, i32 0, i32 5
  store i8* %41, i8** %45, align 8
  %46 = call i8* @cpu_to_le16(i32 3105)
  %47 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %48 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %50 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %49, i32 0, i32 2
  store i8* %46, i8** %50, align 8
  %51 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %52 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %51, i32 0, i32 3
  store i8* %46, i8** %52, align 8
  %53 = load %struct.nw_info_struct*, %struct.nw_info_struct** %7, align 8
  %54 = getelementptr inbounds %struct.nw_info_struct, %struct.nw_info_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %24, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.nw_info_struct*, i32, i32) #1

declare dso_local i32 @ncp_get_volume_root(%struct.ncp_server*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
