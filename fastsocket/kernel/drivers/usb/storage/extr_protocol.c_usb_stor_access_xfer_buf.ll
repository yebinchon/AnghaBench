; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_protocol.c_usb_stor_access_xfer_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_protocol.c_usb_stor_access_xfer_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TO_XFER_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_access_xfer_buf(i8* %0, i32 %1, %struct.scsi_cmnd* %2, %struct.scatterlist** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.scatterlist**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %9, align 8
  store %struct.scatterlist** %3, %struct.scatterlist*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.scatterlist**, %struct.scatterlist*** %10, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  store %struct.scatterlist* %21, %struct.scatterlist** %14, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %26 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %25)
  store %struct.scatterlist* %26, %struct.scatterlist** %14, align 8
  br label %27

27:                                               ; preds = %24, %6
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %130, %27
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %34 = icmp ne %struct.scatterlist* %33, null
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %131

37:                                               ; preds = %35
  %38 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %39 = call %struct.page* @sg_page(%struct.scatterlist* %38)
  %40 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %42, %44
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = lshr i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page, %struct.page* %39, i64 %48
  store %struct.page* %49, %struct.page** %15, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %52, %54
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  store i32 %58, i32* %16, align 4
  %59 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %60 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %61, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub i32 %66, %67
  %69 = icmp ugt i32 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %37
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub i32 %71, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %82

78:                                               ; preds = %37
  %79 = load i32*, i32** %11, align 8
  store i32 0, i32* %79, align 4
  %80 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %81 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %80)
  store %struct.scatterlist* %81, %struct.scatterlist** %14, align 8
  br label %82

82:                                               ; preds = %78, %70
  br label %83

83:                                               ; preds = %119, %82
  %84 = load i32, i32* %17, align 4
  %85 = icmp ugt i32 %84, 0
  br i1 %85, label %86, label %130

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub i32 %88, %89
  %91 = call i32 @min(i32 %87, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load %struct.page*, %struct.page** %15, align 8
  %93 = call i8* @kmap(%struct.page* %92)
  store i8* %93, i8** %19, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @TO_XFER_BUF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %86
  %98 = load i8*, i8** %19, align 8
  %99 = load i32, i32* %16, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @memcpy(i8* %101, i8* %105, i32 %106)
  br label %119

108:                                              ; preds = %86
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @memcpy(i8* %112, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %108, %97
  %120 = load %struct.page*, %struct.page** %15, align 8
  %121 = call i32 @kunmap(%struct.page* %120)
  store i32 0, i32* %16, align 4
  %122 = load %struct.page*, %struct.page** %15, align 8
  %123 = getelementptr inbounds %struct.page, %struct.page* %122, i32 1
  store %struct.page* %123, %struct.page** %15, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %13, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %17, align 4
  br label %83

130:                                              ; preds = %83
  br label %28

131:                                              ; preds = %35
  %132 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %133 = load %struct.scatterlist**, %struct.scatterlist*** %10, align 8
  store %struct.scatterlist* %132, %struct.scatterlist** %133, align 8
  %134 = load i32, i32* %13, align 4
  ret i32 %134
}

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
