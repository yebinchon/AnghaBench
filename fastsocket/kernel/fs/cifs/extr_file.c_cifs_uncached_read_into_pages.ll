; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_uncached_read_into_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_uncached_read_into_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.cifs_readdata = type { i32, i32, %struct.page** }
%struct.page = type { i32 }
%struct.kvec = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%u: iov_base=%p iov_len=%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.cifs_readdata*, i32)* @cifs_uncached_read_into_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_uncached_read_into_pages(%struct.TCP_Server_Info* %0, %struct.cifs_readdata* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.cifs_readdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvec, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.cifs_readdata* %1, %struct.cifs_readdata** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %14 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %18 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %105, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %108

23:                                               ; preds = %19
  %24 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %24, i32 0, i32 2
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load %struct.page*, %struct.page** %12, align 8
  %36 = call i8* @kmap(%struct.page* %35)
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %42, i32 %44)
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %91

49:                                               ; preds = %23
  %50 = load i32, i32* %6, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = call i8* @kmap(%struct.page* %53)
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %60, i32 %62)
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = ptrtoint i8* %68 to i32
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub i32 %70, %71
  %73 = call i32 @memset(i32 %69, i8 signext 0, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %76 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %6, align 4
  br label %90

77:                                               ; preds = %49
  %78 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %79 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %78, i32 0, i32 2
  %80 = load %struct.page**, %struct.page*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  store %struct.page* null, %struct.page** %83, align 8
  %84 = load %struct.cifs_readdata*, %struct.cifs_readdata** %5, align 8
  %85 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, -1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.page*, %struct.page** %12, align 8
  %89 = call i32 @put_page(%struct.page* %88)
  br label %105

90:                                               ; preds = %52
  br label %91

91:                                               ; preds = %90, %34
  %92 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %93 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cifs_readv_from_socket(%struct.TCP_Server_Info* %92, %struct.kvec* %11, i32 1, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.page*, %struct.page** %12, align 8
  %97 = call i32 @kunmap(%struct.page* %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %108

101:                                              ; preds = %91
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %77
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %19

108:                                              ; preds = %100, %19
  %109 = load i32, i32* %7, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  ret i32 %116
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @cifs_readv_from_socket(%struct.TCP_Server_Info*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
