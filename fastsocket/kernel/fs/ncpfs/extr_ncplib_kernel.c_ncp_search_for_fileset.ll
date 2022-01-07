; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_search_for_fileset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_ncplib_kernel.c_ncp_search_for_fileset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i8*, i32 }
%struct.nw_search_sequence = type { i64 }

@RIM_ALL = common dso_local global i32 0, align 4
@NW_NS_NFS = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_search_for_fileset(%struct.ncp_server* %0, %struct.nw_search_sequence* %1, i32* %2, i32* %3, i8* %4, i64 %5, i8** %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ncp_server*, align 8
  %11 = alloca %struct.nw_search_sequence*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %10, align 8
  store %struct.nw_search_sequence* %1, %struct.nw_search_sequence** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8** %6, i8*** %16, align 8
  store i64* %7, i64** %17, align 8
  %19 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %20 = call i32 @ncp_init_request(%struct.ncp_server* %19)
  %21 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %22 = call i32 @ncp_add_byte(%struct.ncp_server* %21, i8 signext 20)
  %23 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %24 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %25 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.nw_search_sequence*, %struct.nw_search_sequence** %11, align 8
  %28 = getelementptr inbounds %struct.nw_search_sequence, %struct.nw_search_sequence* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @ncp_add_byte(%struct.ncp_server* %23, i8 signext %31)
  %33 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %34 = call i32 @ncp_add_byte(%struct.ncp_server* %33, i8 signext 0)
  %35 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %36 = call i32 @cpu_to_le16(i32 32774)
  %37 = call i32 @ncp_add_word(%struct.ncp_server* %35, i32 %36)
  %38 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %39 = load i32, i32* @RIM_ALL, align 4
  %40 = call i32 @ncp_add_dword(%struct.ncp_server* %38, i32 %39)
  %41 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %42 = call i32 @cpu_to_le16(i32 32767)
  %43 = call i32 @ncp_add_word(%struct.ncp_server* %41, i32 %42)
  %44 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %45 = load %struct.nw_search_sequence*, %struct.nw_search_sequence** %11, align 8
  %46 = call i32 @ncp_add_mem(%struct.ncp_server* %44, %struct.nw_search_sequence* %45, i32 9)
  %47 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %48 = call i32 @ncp_add_byte(%struct.ncp_server* %47, i8 signext 2)
  %49 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %50 = call i32 @ncp_add_byte(%struct.ncp_server* %49, i8 signext -1)
  %51 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %52 = call i32 @ncp_add_byte(%struct.ncp_server* %51, i8 signext 42)
  %53 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @ncp_request2(%struct.ncp_server* %53, i32 87, i8* %54, i64 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %8
  %60 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %61 = call i32 @ncp_unlock_server(%struct.ncp_server* %60)
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %9, align 4
  br label %96

63:                                               ; preds = %8
  %64 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %65 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 12
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %70 = call i32 @ncp_unlock_server(%struct.ncp_server* %69)
  store i32 255, i32* %9, align 4
  br label %96

71:                                               ; preds = %63
  %72 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %73 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 12
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %17, align 8
  store i64 %76, i64* %77, align 8
  %78 = load %struct.ncp_server*, %struct.ncp_server** %10, align 8
  %79 = call i32 @ncp_unlock_server(%struct.ncp_server* %78)
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 12
  %84 = load i8**, i8*** %16, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 10
  %87 = call i32 @WVAL_LH(i8* %86)
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 9
  %91 = call i32 @BVAL(i8* %90)
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.nw_search_sequence*, %struct.nw_search_sequence** %11, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @memcpy(%struct.nw_search_sequence* %93, i8* %94, i32 9)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %71, %68, %59
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @ncp_init_request(%struct.ncp_server*) #1

declare dso_local i32 @ncp_add_byte(%struct.ncp_server*, i8 signext) #1

declare dso_local i32 @ncp_add_word(%struct.ncp_server*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ncp_add_dword(%struct.ncp_server*, i32) #1

declare dso_local i32 @ncp_add_mem(%struct.ncp_server*, %struct.nw_search_sequence*, i32) #1

declare dso_local i32 @ncp_request2(%struct.ncp_server*, i32, i8*, i64) #1

declare dso_local i32 @ncp_unlock_server(%struct.ncp_server*) #1

declare dso_local i32 @WVAL_LH(i8*) #1

declare dso_local i32 @BVAL(i8*) #1

declare dso_local i32 @memcpy(%struct.nw_search_sequence*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
